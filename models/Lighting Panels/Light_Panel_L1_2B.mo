within ;
model Light_Panel_L1_2B
  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  HPF.SinglePhase.Components.Ground GndAC annotation (
    Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
  HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
    Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
  HPF.Cables.NEC_CableModel cable_Light_lvl1_ckt1_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12,
      length=16.1)
    annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
    tableOnFile=true,
    tableName="L1-Core-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
    tableOnFile=true,
    tableName="L1-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
    tableOnFile=true,
    tableName="L1-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
    tableOnFile=true,
    tableName="L1-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
    tableOnFile=true,
    tableName="L1-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 292 */
  HPF.DC.Variable_DC_Load Light_292;
  HPF.Cables.NEC_CableModel cable_light_292(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_292(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_292(k=28);
  
/* Light Model 291 */
  HPF.DC.Variable_DC_Load Light_291;
  HPF.Cables.NEC_CableModel cable_light_291(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_291(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_291(k=28);
  
/* Light Model 290 */
  HPF.DC.Variable_DC_Load Light_290;
  HPF.Cables.NEC_CableModel cable_light_290(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_290(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_290(k=28);
  
/* Light Model 289 */
  HPF.DC.Variable_DC_Load Light_289;
  HPF.Cables.NEC_CableModel cable_light_289(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_289(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_289(k=28);
  
/* Light Model 288 */
  HPF.DC.Variable_DC_Load Light_288;
  HPF.Cables.NEC_CableModel cable_light_288(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_288(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_288(k=22);
  
/* Light Model 287 */
  HPF.DC.Variable_DC_Load Light_287;
  HPF.Cables.NEC_CableModel cable_light_287(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_287(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_287(k=22);
  
/* Light Model 231 */
  HPF.DC.Variable_DC_Load Light_231;
  HPF.Cables.NEC_CableModel cable_light_231(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_231(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_231(k=21);
  
/* Light Model 186 */
  HPF.DC.Variable_DC_Load Light_186;
  HPF.Cables.NEC_CableModel cable_light_186(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_186(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_186(k=25);
  
/* Light Model 185 */
  HPF.DC.Variable_DC_Load Light_185;
  HPF.Cables.NEC_CableModel cable_light_185(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_185(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_185(k=25);
  
/* Light Model 184 */
  HPF.DC.Variable_DC_Load Light_184;
  HPF.Cables.NEC_CableModel cable_light_184(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_184(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_184(k=42);
  
/* Light Model 174 */
  HPF.DC.Variable_DC_Load Light_174;
  HPF.Cables.NEC_CableModel cable_light_174(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_174(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_174(k=31);
  
/* Light Model 173 */
  HPF.DC.Variable_DC_Load Light_173;
  HPF.Cables.NEC_CableModel cable_light_173(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_173(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_173(k=31);
  
/* Light Model 172 */
  HPF.DC.Variable_DC_Load Light_172;
  HPF.Cables.NEC_CableModel cable_light_172(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_172(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_172(k=31);
  
/* Light Model 171 */
  HPF.DC.Variable_DC_Load Light_171;
  HPF.Cables.NEC_CableModel cable_light_171(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_171(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_171(k=31);
  
/* Light Model 170 */
  HPF.DC.Variable_DC_Load Light_170;
  HPF.Cables.NEC_CableModel cable_light_170(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_170(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_170(k=31);
  
/* Light Model 169 */
  HPF.DC.Variable_DC_Load Light_169;
  HPF.Cables.NEC_CableModel cable_light_169(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_169(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_169(k=31);
  
/* Light Model 168 */
  HPF.DC.Variable_DC_Load Light_168;
  HPF.Cables.NEC_CableModel cable_light_168(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_168(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_168(k=31);
  
/* Light Model 167 */
  HPF.DC.Variable_DC_Load Light_167;
  HPF.Cables.NEC_CableModel cable_light_167(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_167(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_167(k=31);
  
/* Light Model 166 */
  HPF.DC.Variable_DC_Load Light_166;
  HPF.Cables.NEC_CableModel cable_light_166(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_166(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_166(k=31);
  
/* Light Model 165 */
  HPF.DC.Variable_DC_Load Light_165;
  HPF.Cables.NEC_CableModel cable_light_165(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_165(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_165(k=31);
  
/* Light Model 164 */
  HPF.DC.Variable_DC_Load Light_164;
  HPF.Cables.NEC_CableModel cable_light_164(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_164(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_164(k=31);
  
/* Light Model 163 */
  HPF.DC.Variable_DC_Load Light_163;
  HPF.Cables.NEC_CableModel cable_light_163(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_163(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_163(k=31);
  
/* Light Model 162 */
  HPF.DC.Variable_DC_Load Light_162;
  HPF.Cables.NEC_CableModel cable_light_162(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_162(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_162(k=31);
  
/* Light Model 161 */
  HPF.DC.Variable_DC_Load Light_161;
  HPF.Cables.NEC_CableModel cable_light_161(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_161(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_161(k=31);
  
/* Light Model 160 */
  HPF.DC.Variable_DC_Load Light_160;
  HPF.Cables.NEC_CableModel cable_light_160(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_160(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_160(k=31);
  
/* Light Model 159 */
  HPF.DC.Variable_DC_Load Light_159;
  HPF.Cables.NEC_CableModel cable_light_159(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_159(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_159(k=31);
  
/* Light Model 158 */
  HPF.DC.Variable_DC_Load Light_158;
  HPF.Cables.NEC_CableModel cable_light_158(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_158(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_158(k=31);
  
/* Light Model 157 */
  HPF.DC.Variable_DC_Load Light_157;
  HPF.Cables.NEC_CableModel cable_light_157(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_157(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_157(k=31);
  
/* Light Model 156 */
  HPF.DC.Variable_DC_Load Light_156;
  HPF.Cables.NEC_CableModel cable_light_156(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_156(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_156(k=31);
  
/* Light Model 155 */
  HPF.DC.Variable_DC_Load Light_155;
  HPF.Cables.NEC_CableModel cable_light_155(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_155(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_155(k=31);
  
/* Light Model 154 */
  HPF.DC.Variable_DC_Load Light_154;
  HPF.Cables.NEC_CableModel cable_light_154(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_154(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_154(k=31);
  
/* Light Model 147 */
  HPF.DC.Variable_DC_Load Light_147;
  HPF.Cables.NEC_CableModel cable_light_147(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.91);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_147(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_147(k=40);
  
/* Light Model 146 */
  HPF.DC.Variable_DC_Load Light_146;
  HPF.Cables.NEC_CableModel cable_light_146(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_146(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_146(k=40);
  
/* Light Model 95 */
  HPF.DC.Variable_DC_Load Light_95;
  HPF.Cables.NEC_CableModel cable_light_95(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_95(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_95(k=42);
  
/* Light Model 94 */
  HPF.DC.Variable_DC_Load Light_94;
  HPF.Cables.NEC_CableModel cable_light_94(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_94(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_94(k=42);
  
/* Light Model 93 */
  HPF.DC.Variable_DC_Load Light_93;
  HPF.Cables.NEC_CableModel cable_light_93(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_93(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_93(k=42);
  
/* Light Model 60 */
  HPF.DC.Variable_DC_Load Light_60;
  HPF.Cables.NEC_CableModel cable_light_60(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_60(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_60(k=21);
  
/* Light Model 59 */
  HPF.DC.Variable_DC_Load Light_59;
  HPF.Cables.NEC_CableModel cable_light_59(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_59(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_59(k=21);
  
/* Light Model 58 */
  HPF.DC.Variable_DC_Load Light_58;
  HPF.Cables.NEC_CableModel cable_light_58(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_58(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_58(k=21);
  
/* Light Model 57 */
  HPF.DC.Variable_DC_Load Light_57;
  HPF.Cables.NEC_CableModel cable_light_57(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_57(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_57(k=21);
  
/* Light Model 56 */
  HPF.DC.Variable_DC_Load Light_56;
  HPF.Cables.NEC_CableModel cable_light_56(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_56(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_56(k=21);
  
/* Light Model 55 */
  HPF.DC.Variable_DC_Load Light_55;
  HPF.Cables.NEC_CableModel cable_light_55(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_55(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_55(k=21);
  
/* Light Model 36 */
  HPF.DC.Variable_DC_Load Light_36;
  HPF.Cables.NEC_CableModel cable_light_36(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_36(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_36(k=35);
  
/* Light Model 34 */
  HPF.DC.Variable_DC_Load Light_34;
  HPF.Cables.NEC_CableModel cable_light_34(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_34(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_34(k=35);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 292 */
  connect(Light_Driver_292.hPin_L, cable_light_292.pin_p);
  connect(Light_292.p, Light_Driver_292.pin_p);
  connect(Light_292.n, GndDC.p);
  connect(Light_Driver_292.hPin_N, GndAC.pin);
  connect(Light_Driver_292.pin_n, GndDC.p);
  connect(cable_light_292.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_292.y, Light_292.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_292.u);
/* Light Connections 291 */
  connect(Light_Driver_291.hPin_L, cable_light_291.pin_p);
  connect(Light_291.p, Light_Driver_291.pin_p);
  connect(Light_291.n, GndDC.p);
  connect(Light_Driver_291.hPin_N, GndAC.pin);
  connect(Light_Driver_291.pin_n, GndDC.p);
  connect(cable_light_291.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_291.y, Light_291.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_291.u);
/* Light Connections 290 */
  connect(Light_Driver_290.hPin_L, cable_light_290.pin_p);
  connect(Light_290.p, Light_Driver_290.pin_p);
  connect(Light_290.n, GndDC.p);
  connect(Light_Driver_290.hPin_N, GndAC.pin);
  connect(Light_Driver_290.pin_n, GndDC.p);
  connect(cable_light_290.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_290.y, Light_290.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_290.u);
/* Light Connections 289 */
  connect(Light_Driver_289.hPin_L, cable_light_289.pin_p);
  connect(Light_289.p, Light_Driver_289.pin_p);
  connect(Light_289.n, GndDC.p);
  connect(Light_Driver_289.hPin_N, GndAC.pin);
  connect(Light_Driver_289.pin_n, GndDC.p);
  connect(cable_light_289.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_289.y, Light_289.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_289.u);
/* Light Connections 288 */
  connect(Light_Driver_288.hPin_L, cable_light_288.pin_p);
  connect(Light_288.p, Light_Driver_288.pin_p);
  connect(Light_288.n, GndDC.p);
  connect(Light_Driver_288.hPin_N, GndAC.pin);
  connect(Light_Driver_288.pin_n, GndDC.p);
  connect(cable_light_288.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_288.y, Light_288.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_288.u);
/* Light Connections 287 */
  connect(Light_Driver_287.hPin_L, cable_light_287.pin_p);
  connect(Light_287.p, Light_Driver_287.pin_p);
  connect(Light_287.n, GndDC.p);
  connect(Light_Driver_287.hPin_N, GndAC.pin);
  connect(Light_Driver_287.pin_n, GndDC.p);
  connect(cable_light_287.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_287.y, Light_287.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_287.u);
/* Light Connections 231 */
  connect(Light_Driver_231.hPin_L, cable_light_231.pin_p);
  connect(Light_231.p, Light_Driver_231.pin_p);
  connect(Light_231.n, GndDC.p);
  connect(Light_Driver_231.hPin_N, GndAC.pin);
  connect(Light_Driver_231.pin_n, GndDC.p);
  connect(cable_light_231.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_231.y, Light_231.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_231.u);
/* Light Connections 186 */
  connect(Light_Driver_186.hPin_L, cable_light_186.pin_p);
  connect(Light_186.p, Light_Driver_186.pin_p);
  connect(Light_186.n, GndDC.p);
  connect(Light_Driver_186.hPin_N, GndAC.pin);
  connect(Light_Driver_186.pin_n, GndDC.p);
  connect(cable_light_186.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_186.y, Light_186.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_186.u);
/* Light Connections 185 */
  connect(Light_Driver_185.hPin_L, cable_light_185.pin_p);
  connect(Light_185.p, Light_Driver_185.pin_p);
  connect(Light_185.n, GndDC.p);
  connect(Light_Driver_185.hPin_N, GndAC.pin);
  connect(Light_Driver_185.pin_n, GndDC.p);
  connect(cable_light_185.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_185.y, Light_185.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_185.u);
/* Light Connections 184 */
  connect(Light_Driver_184.hPin_L, cable_light_184.pin_p);
  connect(Light_184.p, Light_Driver_184.pin_p);
  connect(Light_184.n, GndDC.p);
  connect(Light_Driver_184.hPin_N, GndAC.pin);
  connect(Light_Driver_184.pin_n, GndDC.p);
  connect(cable_light_184.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_184.y, Light_184.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_184.u);
/* Light Connections 174 */
  connect(Light_Driver_174.hPin_L, cable_light_174.pin_p);
  connect(Light_174.p, Light_Driver_174.pin_p);
  connect(Light_174.n, GndDC.p);
  connect(Light_Driver_174.hPin_N, GndAC.pin);
  connect(Light_Driver_174.pin_n, GndDC.p);
  connect(cable_light_174.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_174.y, Light_174.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_174.u);
/* Light Connections 173 */
  connect(Light_Driver_173.hPin_L, cable_light_173.pin_p);
  connect(Light_173.p, Light_Driver_173.pin_p);
  connect(Light_173.n, GndDC.p);
  connect(Light_Driver_173.hPin_N, GndAC.pin);
  connect(Light_Driver_173.pin_n, GndDC.p);
  connect(cable_light_173.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_173.y, Light_173.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_173.u);
/* Light Connections 172 */
  connect(Light_Driver_172.hPin_L, cable_light_172.pin_p);
  connect(Light_172.p, Light_Driver_172.pin_p);
  connect(Light_172.n, GndDC.p);
  connect(Light_Driver_172.hPin_N, GndAC.pin);
  connect(Light_Driver_172.pin_n, GndDC.p);
  connect(cable_light_172.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_172.y, Light_172.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_172.u);
/* Light Connections 171 */
  connect(Light_Driver_171.hPin_L, cable_light_171.pin_p);
  connect(Light_171.p, Light_Driver_171.pin_p);
  connect(Light_171.n, GndDC.p);
  connect(Light_Driver_171.hPin_N, GndAC.pin);
  connect(Light_Driver_171.pin_n, GndDC.p);
  connect(cable_light_171.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_171.y, Light_171.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_171.u);
/* Light Connections 170 */
  connect(Light_Driver_170.hPin_L, cable_light_170.pin_p);
  connect(Light_170.p, Light_Driver_170.pin_p);
  connect(Light_170.n, GndDC.p);
  connect(Light_Driver_170.hPin_N, GndAC.pin);
  connect(Light_Driver_170.pin_n, GndDC.p);
  connect(cable_light_170.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_170.y, Light_170.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_170.u);
/* Light Connections 169 */
  connect(Light_Driver_169.hPin_L, cable_light_169.pin_p);
  connect(Light_169.p, Light_Driver_169.pin_p);
  connect(Light_169.n, GndDC.p);
  connect(Light_Driver_169.hPin_N, GndAC.pin);
  connect(Light_Driver_169.pin_n, GndDC.p);
  connect(cable_light_169.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_169.y, Light_169.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_169.u);
/* Light Connections 168 */
  connect(Light_Driver_168.hPin_L, cable_light_168.pin_p);
  connect(Light_168.p, Light_Driver_168.pin_p);
  connect(Light_168.n, GndDC.p);
  connect(Light_Driver_168.hPin_N, GndAC.pin);
  connect(Light_Driver_168.pin_n, GndDC.p);
  connect(cable_light_168.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_168.y, Light_168.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_168.u);
/* Light Connections 167 */
  connect(Light_Driver_167.hPin_L, cable_light_167.pin_p);
  connect(Light_167.p, Light_Driver_167.pin_p);
  connect(Light_167.n, GndDC.p);
  connect(Light_Driver_167.hPin_N, GndAC.pin);
  connect(Light_Driver_167.pin_n, GndDC.p);
  connect(cable_light_167.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_167.y, Light_167.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_167.u);
/* Light Connections 166 */
  connect(Light_Driver_166.hPin_L, cable_light_166.pin_p);
  connect(Light_166.p, Light_Driver_166.pin_p);
  connect(Light_166.n, GndDC.p);
  connect(Light_Driver_166.hPin_N, GndAC.pin);
  connect(Light_Driver_166.pin_n, GndDC.p);
  connect(cable_light_166.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_166.y, Light_166.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_166.u);
/* Light Connections 165 */
  connect(Light_Driver_165.hPin_L, cable_light_165.pin_p);
  connect(Light_165.p, Light_Driver_165.pin_p);
  connect(Light_165.n, GndDC.p);
  connect(Light_Driver_165.hPin_N, GndAC.pin);
  connect(Light_Driver_165.pin_n, GndDC.p);
  connect(cable_light_165.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_165.y, Light_165.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_165.u);
/* Light Connections 164 */
  connect(Light_Driver_164.hPin_L, cable_light_164.pin_p);
  connect(Light_164.p, Light_Driver_164.pin_p);
  connect(Light_164.n, GndDC.p);
  connect(Light_Driver_164.hPin_N, GndAC.pin);
  connect(Light_Driver_164.pin_n, GndDC.p);
  connect(cable_light_164.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_164.y, Light_164.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_164.u);
/* Light Connections 163 */
  connect(Light_Driver_163.hPin_L, cable_light_163.pin_p);
  connect(Light_163.p, Light_Driver_163.pin_p);
  connect(Light_163.n, GndDC.p);
  connect(Light_Driver_163.hPin_N, GndAC.pin);
  connect(Light_Driver_163.pin_n, GndDC.p);
  connect(cable_light_163.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_163.y, Light_163.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_163.u);
/* Light Connections 162 */
  connect(Light_Driver_162.hPin_L, cable_light_162.pin_p);
  connect(Light_162.p, Light_Driver_162.pin_p);
  connect(Light_162.n, GndDC.p);
  connect(Light_Driver_162.hPin_N, GndAC.pin);
  connect(Light_Driver_162.pin_n, GndDC.p);
  connect(cable_light_162.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_162.y, Light_162.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_162.u);
/* Light Connections 161 */
  connect(Light_Driver_161.hPin_L, cable_light_161.pin_p);
  connect(Light_161.p, Light_Driver_161.pin_p);
  connect(Light_161.n, GndDC.p);
  connect(Light_Driver_161.hPin_N, GndAC.pin);
  connect(Light_Driver_161.pin_n, GndDC.p);
  connect(cable_light_161.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_161.y, Light_161.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_161.u);
/* Light Connections 160 */
  connect(Light_Driver_160.hPin_L, cable_light_160.pin_p);
  connect(Light_160.p, Light_Driver_160.pin_p);
  connect(Light_160.n, GndDC.p);
  connect(Light_Driver_160.hPin_N, GndAC.pin);
  connect(Light_Driver_160.pin_n, GndDC.p);
  connect(cable_light_160.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_160.y, Light_160.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_160.u);
/* Light Connections 159 */
  connect(Light_Driver_159.hPin_L, cable_light_159.pin_p);
  connect(Light_159.p, Light_Driver_159.pin_p);
  connect(Light_159.n, GndDC.p);
  connect(Light_Driver_159.hPin_N, GndAC.pin);
  connect(Light_Driver_159.pin_n, GndDC.p);
  connect(cable_light_159.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_159.y, Light_159.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_159.u);
/* Light Connections 158 */
  connect(Light_Driver_158.hPin_L, cable_light_158.pin_p);
  connect(Light_158.p, Light_Driver_158.pin_p);
  connect(Light_158.n, GndDC.p);
  connect(Light_Driver_158.hPin_N, GndAC.pin);
  connect(Light_Driver_158.pin_n, GndDC.p);
  connect(cable_light_158.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_158.y, Light_158.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_158.u);
/* Light Connections 157 */
  connect(Light_Driver_157.hPin_L, cable_light_157.pin_p);
  connect(Light_157.p, Light_Driver_157.pin_p);
  connect(Light_157.n, GndDC.p);
  connect(Light_Driver_157.hPin_N, GndAC.pin);
  connect(Light_Driver_157.pin_n, GndDC.p);
  connect(cable_light_157.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_157.y, Light_157.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_157.u);
/* Light Connections 156 */
  connect(Light_Driver_156.hPin_L, cable_light_156.pin_p);
  connect(Light_156.p, Light_Driver_156.pin_p);
  connect(Light_156.n, GndDC.p);
  connect(Light_Driver_156.hPin_N, GndAC.pin);
  connect(Light_Driver_156.pin_n, GndDC.p);
  connect(cable_light_156.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_156.y, Light_156.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_156.u);
/* Light Connections 155 */
  connect(Light_Driver_155.hPin_L, cable_light_155.pin_p);
  connect(Light_155.p, Light_Driver_155.pin_p);
  connect(Light_155.n, GndDC.p);
  connect(Light_Driver_155.hPin_N, GndAC.pin);
  connect(Light_Driver_155.pin_n, GndDC.p);
  connect(cable_light_155.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_155.y, Light_155.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_155.u);
/* Light Connections 154 */
  connect(Light_Driver_154.hPin_L, cable_light_154.pin_p);
  connect(Light_154.p, Light_Driver_154.pin_p);
  connect(Light_154.n, GndDC.p);
  connect(Light_Driver_154.hPin_N, GndAC.pin);
  connect(Light_Driver_154.pin_n, GndDC.p);
  connect(cable_light_154.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_154.y, Light_154.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_154.u);
/* Light Connections 147 */
  connect(Light_Driver_147.hPin_L, cable_light_147.pin_p);
  connect(Light_147.p, Light_Driver_147.pin_p);
  connect(Light_147.n, GndDC.p);
  connect(Light_Driver_147.hPin_N, GndAC.pin);
  connect(Light_Driver_147.pin_n, GndDC.p);
  connect(cable_light_147.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_147.y, Light_147.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_147.u);
/* Light Connections 146 */
  connect(Light_Driver_146.hPin_L, cable_light_146.pin_p);
  connect(Light_146.p, Light_Driver_146.pin_p);
  connect(Light_146.n, GndDC.p);
  connect(Light_Driver_146.hPin_N, GndAC.pin);
  connect(Light_Driver_146.pin_n, GndDC.p);
  connect(cable_light_146.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_146.y, Light_146.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_146.u);
/* Light Connections 95 */
  connect(Light_Driver_95.hPin_L, cable_light_95.pin_p);
  connect(Light_95.p, Light_Driver_95.pin_p);
  connect(Light_95.n, GndDC.p);
  connect(Light_Driver_95.hPin_N, GndAC.pin);
  connect(Light_Driver_95.pin_n, GndDC.p);
  connect(cable_light_95.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_95.y, Light_95.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_95.u);
/* Light Connections 94 */
  connect(Light_Driver_94.hPin_L, cable_light_94.pin_p);
  connect(Light_94.p, Light_Driver_94.pin_p);
  connect(Light_94.n, GndDC.p);
  connect(Light_Driver_94.hPin_N, GndAC.pin);
  connect(Light_Driver_94.pin_n, GndDC.p);
  connect(cable_light_94.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_94.y, Light_94.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_94.u);
/* Light Connections 93 */
  connect(Light_Driver_93.hPin_L, cable_light_93.pin_p);
  connect(Light_93.p, Light_Driver_93.pin_p);
  connect(Light_93.n, GndDC.p);
  connect(Light_Driver_93.hPin_N, GndAC.pin);
  connect(Light_Driver_93.pin_n, GndDC.p);
  connect(cable_light_93.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_93.y, Light_93.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_93.u);
/* Light Connections 60 */
  connect(Light_Driver_60.hPin_L, cable_light_60.pin_p);
  connect(Light_60.p, Light_Driver_60.pin_p);
  connect(Light_60.n, GndDC.p);
  connect(Light_Driver_60.hPin_N, GndAC.pin);
  connect(Light_Driver_60.pin_n, GndDC.p);
  connect(cable_light_60.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_60.y, Light_60.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_60.u);
/* Light Connections 59 */
  connect(Light_Driver_59.hPin_L, cable_light_59.pin_p);
  connect(Light_59.p, Light_Driver_59.pin_p);
  connect(Light_59.n, GndDC.p);
  connect(Light_Driver_59.hPin_N, GndAC.pin);
  connect(Light_Driver_59.pin_n, GndDC.p);
  connect(cable_light_59.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_59.y, Light_59.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_59.u);
/* Light Connections 58 */
  connect(Light_Driver_58.hPin_L, cable_light_58.pin_p);
  connect(Light_58.p, Light_Driver_58.pin_p);
  connect(Light_58.n, GndDC.p);
  connect(Light_Driver_58.hPin_N, GndAC.pin);
  connect(Light_Driver_58.pin_n, GndDC.p);
  connect(cable_light_58.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_58.y, Light_58.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_58.u);
/* Light Connections 57 */
  connect(Light_Driver_57.hPin_L, cable_light_57.pin_p);
  connect(Light_57.p, Light_Driver_57.pin_p);
  connect(Light_57.n, GndDC.p);
  connect(Light_Driver_57.hPin_N, GndAC.pin);
  connect(Light_Driver_57.pin_n, GndDC.p);
  connect(cable_light_57.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_57.y, Light_57.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_57.u);
/* Light Connections 56 */
  connect(Light_Driver_56.hPin_L, cable_light_56.pin_p);
  connect(Light_56.p, Light_Driver_56.pin_p);
  connect(Light_56.n, GndDC.p);
  connect(Light_Driver_56.hPin_N, GndAC.pin);
  connect(Light_Driver_56.pin_n, GndDC.p);
  connect(cable_light_56.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_56.y, Light_56.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_56.u);
/* Light Connections 55 */
  connect(Light_Driver_55.hPin_L, cable_light_55.pin_p);
  connect(Light_55.p, Light_Driver_55.pin_p);
  connect(Light_55.n, GndDC.p);
  connect(Light_Driver_55.hPin_N, GndAC.pin);
  connect(Light_Driver_55.pin_n, GndDC.p);
  connect(cable_light_55.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_55.y, Light_55.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_55.u);
/* Light Connections 36 */
  connect(Light_Driver_36.hPin_L, cable_light_36.pin_p);
  connect(Light_36.p, Light_Driver_36.pin_p);
  connect(Light_36.n, GndDC.p);
  connect(Light_Driver_36.hPin_N, GndAC.pin);
  connect(Light_Driver_36.pin_n, GndDC.p);
  connect(cable_light_36.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_36.y, Light_36.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_36.u);
/* Light Connections 34 */
  connect(Light_Driver_34.hPin_L, cable_light_34.pin_p);
  connect(Light_34.p, Light_Driver_34.pin_p);
  connect(Light_34.n, GndDC.p);
  connect(Light_Driver_34.hPin_N, GndAC.pin);
  connect(Light_Driver_34.pin_n, GndDC.p);
  connect(cable_light_34.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_34.y, Light_34.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_34.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_2B;
