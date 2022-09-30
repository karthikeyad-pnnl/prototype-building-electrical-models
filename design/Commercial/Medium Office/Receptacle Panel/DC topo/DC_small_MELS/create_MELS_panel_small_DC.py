######################################
#This code will generate MELs panels from a compatible excel sheet and reference Modelica connection file 
#
#
#######################################

import pandas as pd
import time

startTime = time.time()

# Functions
def cable_length(level, x_dim, y_dim, z_dim):
    #Distribution Panel Location on each Level (in meters)
    l1bas_dim = [18.9,19.8,1.5]
    l2bas_dim = [18.9,19.8,5.5]
    l3bas_dim = [18.9,19.8,9.5]
    
    if level == "Level 1":
        [xbas,ybas,zbas] = l1bas_dim
    elif level == "Level 2":
        [xbas,ybas,zbas] = l2bas_dim
    elif level == "Level 3":
        [xbas,ybas,zbas] = l3bas_dim
    else:
        print("Check Function inputs")
        

    cab_len = ((x_dim-xbas)**2+(y_dim-ybas)**2+(z_dim-zbas)**2)**0.5
    #Buffer factor for cable length
    len_buf = 1.25 #25% buffer length
    
    #Sample function call
    #cable_length("Level 1", 5, 25,2)
    
    return round(cab_len*len_buf,2)
    
def mels_conv_rating(melstype):
    #Sample function call
    #mels_conv_rating("Laptop")
    if melstype == "Laptop":
        conv_watt = 57
        model_nm = "modelData_laptop"
   
    elif melstype == "Monitor":
        conv_watt = 46
        model_nm = "modelData_monitor"

    return (conv_watt,model_nm)


   
def index_lin(Datafile1,val):
    indx_lin = 1
    if val == "model":
        search_val = "/* Insert models here */"
    elif val == "equation":
        search_val = "/* Insert equation here */"       
    for data_1 in Datafile1:
        if search_val in data_1:
            l_num = indx_lin
        indx_lin = indx_lin + 1
    return(l_num)


########################## 
#Inputs to the file

floor = 3
#list of floors = [1, 2, 3]
pha = "C" 
#list of phases = [A, B, C]
    
#Select the Energy Plus city name
city_name = "San-Diego-"
#list of city_name = ["Great-Falls-", "San-Diego-", "Tampa-" ]

#Excel Sheet path wth the MELs panel details 
Excel_filename = "mels_excel_DC_small.xlsx"

#modelia .mo file to change
txt_file = "mels_ref_module.mo"

#Light Driver loss constants (PU)
#Median Model - XPPower-LCL500PS48
conv_driv_alpha = 0.024354319
conv_driv_beta = 0.051666238
conv_driv_gamma = 0.028212655
conv_driv_stndby = 0
line3c = (",P_stby=" + str(conv_driv_stndby) + ",alpha=" + str(conv_driv_alpha) 
          + ",beta=" + str(conv_driv_beta) + ",gamma=" + str(conv_driv_gamma))



########################## 
#Main code to create the MELS panel

#Read Excel Sheet data 
df_mel_dt = pd.read_excel(Excel_filename)

#name of the incoming cable
cable_name = ("cable_mels_L" + str(floor) + "_" + str(pha))
lvl = ("Level " + str(floor))

#Filter the datafile
df_mel_dt_l = df_mel_dt[df_mel_dt.Level == floor]
df_mel_dt_l_p = df_mel_dt_l[df_mel_dt_l.Phase == pha]
ckt_lp = df_mel_dt_l_p["Converter_num"].unique()

f = open(txt_file, 'r')
fileData1 = f.readlines()
f.close()
count = 0

for ckts in ckt_lp:
    df_mel_dt_l_p_c = df_mel_dt_l_p[df_mel_dt_l_p.Converter_num == ckts]
    row_cnt = df_mel_dt_l_p_c.shape[0]
    l =df_mel_dt_l_p_c.reset_index()
    print(ckts,row_cnt) 
       
    for x in range(0, row_cnt):
        mel_type = l.loc[x, "MELType"]
        mel_name = (l.loc[x, "MELName"]).replace(' ','_')
        xdim = l.loc[x, "X"]
        ydim = l.loc[x, "Y"]
        zdim = l.loc[x, "Z"]
        
        #fetch converter data
        conv_vals = mels_conv_rating(mel_type)
        conv_pow = conv_vals[0]
        conv_mod = conv_vals[1]
        #print(mel_type,mel_name,conv_pow,conv_mod)
        ## Modelica code syntax to add "model" information
        mline1 = ("  \n/* MEL_Model " + mel_name + " - " + ckts + " */\n")
        mline2 = ("  Modelica.Blocks.Math.Gain Gain_" + mel_name + 
                 "(k=" + str(conv_pow) + ") annotation (HideResult=true);\n")
        mline3 = ("  HPF.DC.Variable_DC_Load " + mel_name + ";\n")
        mline4 = ("  HPF.Cables.NEC_CableModelDC cable_MEL_" + mel_name + 
                 "(wireGaugeDC=HPF.Types.WireGaugeDC.gauge_POE, length=10);\n")
        mline5 = ("  HPF.DC.DC2DC_Converters.StepDown MEL_Converter_" + mel_name 
                  + "(modelData = " + str(conv_mod) + ");\n")
        #print(mline1,mline2,mline3,mline4,mline5)
        line_num = index_lin(fileData1,"model")
        fileData1.insert(line_num+1, mline1)
        fileData1.insert(line_num+2, mline2)
        fileData1.insert(line_num+3, mline3)
        fileData1.insert(line_num+4, mline4)
        fileData1.insert(line_num+5, mline5)
        
        ## Modelica code syntax to add "equation" information
        eline0 = ("\n/* MEL Connections " + mel_name + " - " + ckts +" */\n")
        eline1 = ("  connect(MEL_Converter_" + mel_name  + ".n2, GndDC.p);\n")
        eline2 = ("  connect(MEL_Converter_" + mel_name  + ".n1, GndDC.p);\n")
        eline3 = ("  connect(" + mel_name + ".n, GndDC.p);\n")
        eline4 = ("  connect(combiTimeTable_" + "L" + str(floor) + "_" +
                  mel_type.replace(' ','_') + ".y[1], Gain_" + mel_name + ".u);\n")
        eline5 = ("  connect(" + mel_name + ".u, Gain_" + mel_name + ".y);\n")
        eline6 = ("  connect(" + mel_name + ".p, MEL_Converter_" + mel_name + ".p2);\n")
        eline7 = ("  connect(MEL_Converter_" + mel_name + ".p1, cable_MEL_" + mel_name + ".p);\n")
        eline8 = ("  connect(" + str(ckts) + ".pin_p, cable_MEL_" + mel_name + ".n);\n")
        
        #print(eline0, eline1,eline2,eline3,eline4,eline5,eline6,eline7)
        
        line_num1 = index_lin(fileData1,"equation")
        fileData1.insert(line_num1+1, eline0)
        fileData1.insert(line_num1+2, eline1)
        fileData1.insert(line_num1+3, eline2)
        fileData1.insert(line_num1+4, eline3)
        fileData1.insert(line_num1+5, eline4)
        fileData1.insert(line_num1+6, eline5)
        fileData1.insert(line_num1+7, eline6)
        fileData1.insert(line_num1+8, eline7)
        fileData1.insert(line_num1+9, eline8)
        count = count+1
        

        
    m = cable_length(lvl, xdim, ydim, zdim)
    nw_vals= ckts.replace('-','_')   
    mline01 = ("  \n/* AC/DC Converter " + str(ckts) +" */\n")
    mline02 = ("  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple " 
             + str(ckts) + "(P_DCmin=0, VAC_nom=277,VDC_nom=48" 
             + ",P_nom=1000" + line3c + ");\n")
    mline03 = ("  HPF.Cables.NEC_CableModel cable_" + str(ckts) + 
              "(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=" + str(m) 
              + ");\n")     
    print(mline01,mline02,mline03)
    
    #print(mline01, mline02,mline03)
    line_num = index_lin(fileData1,"model")
    fileData1.insert(line_num+1, mline01)
    fileData1.insert(line_num+2, mline02)
    fileData1.insert(line_num+3, mline03)
    
    ## Modelica code syntax to add "equation" information
    eline01 = ("\n/* AC/DC Converter " + str(ckts) +" */\n")
    eline02 = ("  connect(cable_" + str(ckts) + ".pin_n," + cable_name + ".pin_p);\n")
    eline03 = ("  connect(" + str(ckts) + ".hPin_L,  cable_" + str(ckts) + ".pin_p);\n")
    eline04 = ("  connect(" + str(ckts) + ".hPin_N, GndAC.pin);\n")
    eline05 = ("  connect(" + str(ckts) + ".pin_n, GndDC.p);\n")
    print(eline01,eline02,eline03,eline04,eline05)
    
    line_num1 = index_lin(fileData1,"equation")
    fileData1.insert(line_num1+1, eline01)
    fileData1.insert(line_num1+2, eline02)
    fileData1.insert(line_num1+3, eline03)
    fileData1.insert(line_num1+4, eline04)
    fileData1.insert(line_num1+5, eline05)


#Create the updated .mo file from reference file
new_ckt = ckts.replace("-","_")
txt_file_w = "SmallDC_MEL_Panel_L" + str(floor) + str(pha) + ".mo"
f = open(txt_file_w, 'w')
f.writelines(fileData1)
f.close()


#Correct name for the model file
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "SmallDC_MEL_Panel_L" + str(floor) + str(pha)
filedata = filedata.replace('mels_ref_module', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)

#Correct name for the incoming cable
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "cable_mels_L" + str(floor) + "_"+ str(pha)
filedata = filedata.replace('cable_mels_L1_A', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)
  
#Correct name for the combitimetable headers
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "combiTimeTable_L" + str(floor)
filedata = filedata.replace('combiTimeTable_L1', nm)
nm = city_name + "L" + str(floor)
filedata = filedata.replace('San-Diego-L1', nm)
nm = "L" + str(floor)
filedata = filedata.replace('L1', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)  


timecount = round(time.time() - startTime, 2)
print("Total MELS ckts added =  %s " %(count))
print("code run time =  %s " %(timecount))







