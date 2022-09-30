######################################
#This code will generate lighting panels from a compatible excel sheet and reference Modelica connection file 
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
    
def light_driver_size(watt):
    if watt < 30.001:
        #drive_watt = 30
        model_nm = "modelData_30"
    elif watt < 45.001:
        #drive_watt = 45
        model_nm = "modelData_45"
    else:
        print("Check light size")
    
#     #Sample function call
#     #light_driver_size(20)
    
    return model_nm

    
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
pha = "2C" 
#list of phases = [1A, 1B, 1C, 2A, 2B, 2C]
ckt = "L" + str(floor) + "-" + pha 
new_ckt = ckt.replace("-","_")
#list of ckt = [L1-1B, L1-1A, L1-2B, L1-2C, L1-2A, L1-1C, 
#               L2-2B, L2-1A, L2-2C, L2-2A, L2-1B, L2-1C, 
#               L3-2B, L3-1A, L3-1B, L3-2A, L3-1C, L3-2C]
    
#Select the Energy Plus city name
city_name = "San-Diego-"
#list of city_name = ["Great-Falls-", "San-Diego-", "Tampa-" ]

#Excel Sheet path wth the lighting panel details 
Excel_filename = "lights_excel_DC.xlsx"

#modelia .mo file to change
#txt_file = "test_file.txt"
txt_file = "DC_light_ref_module.mo"




cable_name = "lvl1_ckt1_A"

########################## 
#Main code to create the light panel

#Read Excel Sheet data 
df_light_data = pd.read_excel(Excel_filename)

# Run this code to list headers in excel sheet
##########################
# for data in df_light_data:
#     print(data)
##########################

f = open(txt_file, 'r')
fileData1 = f.readlines()
f.close()

df_ckt = df_light_data[df_light_data.Circuit == ckt]
df_ckt_lgt = df_ckt["converter_num"].unique()
count = 0
k = 1

for data1 in df_ckt_lgt:
    #print(data1)
    df_ckt_conv = df_ckt[df_light_data.converter_num == data1]
    df_ckt_lgt1 = df_ckt_conv["Light No"].unique()


    for data in df_ckt_lgt1:
        watt = df_light_data.loc[data-1, "Wattage"]
        xdim = df_light_data.loc[data-1, "X"]
        ydim = df_light_data.loc[data-1, "Y"]
        zdim = df_light_data.loc[data-1, "Z"]
        lvl = df_light_data.loc[data-1, "Level"]
        lgt_zn = df_light_data.loc[data-1, "Zone"] 
        
        
        ## Modelica code syntax to add "model" information
        mline0 = ("  \n/* Light Model " + str(data) +" */\n")
        mline1 = ("  HPF.DC.Variable_DC_Load Light_" + str(data) + ";\n")
        mline2 = ("  HPF.Cables.NEC_CableModelDC cable_light_" + str(data) + 
                 "(wireGaugeDC=HPF.Types.WireGaugeDC.gauge_POE, length=4);\n")
        mline3 = ("  Modelica.Blocks.Math.Gain Gain_Light_driver_" + str(data) + 
                 "(k=" + str(watt) + ") annotation (HideResult=true);\n")
        mline4 = ("  HPF.DC.DC2DC_Converters.StepDown Light_driver_" + str(data) 
                  + "(modelData = " + str(light_driver_size(watt)) + ");\n")
        #print(mline0, mline1, mline2, mline3, mline4)
        count = count+1
        line_num = index_lin(fileData1,"model")
        fileData1.insert(line_num+1, mline0)
        fileData1.insert(line_num+2, mline1)
        fileData1.insert(line_num+4, mline2)
        fileData1.insert(line_num+4, mline3)
        fileData1.insert(line_num+4, mline4)
        
        ## Modelica code syntax to add "equation" information
        eline0 = ("\n/* Light Connections " + str(data) +" */\n")
        eline1 = ("  connect(Light_driver_" + str(data) + ".n2, GndDC.p);\n")
        eline2 = ("  connect(Light_driver_" + str(data) + ".n1, GndDC.p);\n")
        eline3 = ("  connect(Light_" + str(data) + ".n, GndDC.p);\n")
        new_lgt_zn = lgt_zn.replace("-","_")
        eline4 = ("  connect(combiTimeTable_" + new_lgt_zn + ".y[1], Gain_Light_driver_" + str(data) + ".u);\n")
        eline5 = ("  connect(Gain_Light_driver_" + str(data) + ".y, Light_" + str(data) + ".u);\n")
        eline6 = ("  connect(Light_" + str(data) + ".p, Light_driver_" + str(data) + ".p2);\n")
        eline7 = ("  connect(Light_driver_" + str(data) + ".p1,  cable_light_" + str(data) + ".p);\n")
        eline8 = ("  connect(" + str(data1) + ".p2, cable_light_" + str(data) + ".n);\n")
        #print(eline0, eline1,eline2,eline3,eline4,eline5,eline6,eline7,eline8)

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
        
    m = cable_length(lvl, xdim, ydim, zdim)   
    mline01 = ("  \n/* AC/DC Converter " + str(data1) +" */\n")
    mline02 = ("  HPF.DC.DC2DC_Converters.StepDown " + str(data1) + "(modelData = modelData_DCDC);\n")
    mline03 = ("  HPF.Cables.NEC_CableModelDC cable_" + str(data1) + 
              "(wireGaugeDC = HPF.Types.WireGaugeDC.gauge_14, length=" + str(m) 
              + ");\n")
    
    #print(mline01, mline02,mline03)
    line_num = index_lin(fileData1,"model")
    fileData1.insert(line_num+1, mline01)
    fileData1.insert(line_num+2, mline02)
    fileData1.insert(line_num+4, mline03)
    
    ## Modelica code syntax to add "equation" information
    eline01 = ("\n/* AC/DC Converter " + str(data1) +" */\n")
    eline02 = ("  connect(cable_" + str(data1) + ".n, cable_light_" + new_ckt + ".p);\n")
    eline03 = ("  connect(" + str(data1) + ".p1,  cable_" + str(data1) + ".p);\n")
    
    eline04 = ("  connect(" + str(data1) + ".n1, GndDC.p);\n")
    eline05 = ("  connect(" + str(data1) + ".n2, GndDC.p);\n")
    #print(eline01,eline02,eline03,eline04,eline05)
    line_num1 = index_lin(fileData1,"equation")
    fileData1.insert(line_num1+1, eline01)
    fileData1.insert(line_num1+2, eline02)
    fileData1.insert(line_num1+3, eline03)
    fileData1.insert(line_num1+4, eline04)
    fileData1.insert(line_num1+5, eline05)

    
      
new_ckt = ckt.replace("-","_")
txt_file_w = "DC_Light_Panel_" + new_ckt + ".mo"
f = open(txt_file_w, 'w')
f.writelines(fileData1)
f.close()


#Correct name for the model file
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "ACDC_Light_Panel_" + new_ckt 
filedata = filedata.replace('light_ref_module', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)

#Correct name for the incoming cable cable_Light_lvl1_ckt1_A
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "cable_light_" + new_ckt 
filedata = filedata.replace('cable_light_L1_1A', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)

#Correct name for the combitimetable headers
with open(txt_file_w, 'r') as file :
  filedata = file.read()
nm = "combiTimeTable_L" + str(floor)
filedata = filedata.replace('combiTimeTable_L3', nm)
nm = city_name + "L" + str(floor)
filedata = filedata.replace('San-Diego-L3', nm)
nm = "L" + str(floor)
filedata = filedata.replace('L3', nm)
with open(txt_file_w, 'w') as file:
  file.write(filedata)  



timecount = round(time.time() - startTime, 2)
print("Total light ckts added =  %s " %(count))
print("code run time =  %s " %(timecount))

    
    
    
    

    
    
