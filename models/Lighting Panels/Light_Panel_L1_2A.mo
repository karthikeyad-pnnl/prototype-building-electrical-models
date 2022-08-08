within ;
model Light_Panel_L1_2A
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

  
/* Light Model 255 */
  HPF.DC.Variable_DC_Load Light_255;
  HPF.Cables.NEC_CableModel cable_light_255(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_255(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_255(k=40);
  
/* Light Model 254 */
  HPF.DC.Variable_DC_Load Light_254;
  HPF.Cables.NEC_CableModel cable_light_254(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_254(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_254(k=28);
  
/* Light Model 253 */
  HPF.DC.Variable_DC_Load Light_253;
  HPF.Cables.NEC_CableModel cable_light_253(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_253(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_253(k=28);
  
/* Light Model 252 */
  HPF.DC.Variable_DC_Load Light_252;
  HPF.Cables.NEC_CableModel cable_light_252(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_252(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_252(k=40);
  
/* Light Model 251 */
  HPF.DC.Variable_DC_Load Light_251;
  HPF.Cables.NEC_CableModel cable_light_251(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_251(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_251(k=40);
  
/* Light Model 250 */
  HPF.DC.Variable_DC_Load Light_250;
  HPF.Cables.NEC_CableModel cable_light_250(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_250(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_250(k=28);
  
/* Light Model 249 */
  HPF.DC.Variable_DC_Load Light_249;
  HPF.Cables.NEC_CableModel cable_light_249(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_249(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_249(k=28);
  
/* Light Model 248 */
  HPF.DC.Variable_DC_Load Light_248;
  HPF.Cables.NEC_CableModel cable_light_248(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_248(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_248(k=40);
  
/* Light Model 247 */
  HPF.DC.Variable_DC_Load Light_247;
  HPF.Cables.NEC_CableModel cable_light_247(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_247(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_247(k=40);
  
/* Light Model 246 */
  HPF.DC.Variable_DC_Load Light_246;
  HPF.Cables.NEC_CableModel cable_light_246(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_246(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_246(k=28);
  
/* Light Model 245 */
  HPF.DC.Variable_DC_Load Light_245;
  HPF.Cables.NEC_CableModel cable_light_245(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_245(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_245(k=28);
  
/* Light Model 244 */
  HPF.DC.Variable_DC_Load Light_244;
  HPF.Cables.NEC_CableModel cable_light_244(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_244(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_244(k=40);
  
/* Light Model 243 */
  HPF.DC.Variable_DC_Load Light_243;
  HPF.Cables.NEC_CableModel cable_light_243(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.92);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_243(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_243(k=40);
  
/* Light Model 242 */
  HPF.DC.Variable_DC_Load Light_242;
  HPF.Cables.NEC_CableModel cable_light_242(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_242(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_242(k=21);
  
/* Light Model 241 */
  HPF.DC.Variable_DC_Load Light_241;
  HPF.Cables.NEC_CableModel cable_light_241(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_241(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_241(k=21);
  
/* Light Model 239 */
  HPF.DC.Variable_DC_Load Light_239;
  HPF.Cables.NEC_CableModel cable_light_239(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_239(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_239(k=21);
  
/* Light Model 235 */
  HPF.DC.Variable_DC_Load Light_235;
  HPF.Cables.NEC_CableModel cable_light_235(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_235(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_235(k=21);
  
/* Light Model 234 */
  HPF.DC.Variable_DC_Load Light_234;
  HPF.Cables.NEC_CableModel cable_light_234(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_234(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_234(k=21);
  
/* Light Model 233 */
  HPF.DC.Variable_DC_Load Light_233;
  HPF.Cables.NEC_CableModel cable_light_233(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_233(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_233(k=21);
  
/* Light Model 232 */
  HPF.DC.Variable_DC_Load Light_232;
  HPF.Cables.NEC_CableModel cable_light_232(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.84);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_232(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_232(k=21);
  
/* Light Model 226 */
  HPF.DC.Variable_DC_Load Light_226;
  HPF.Cables.NEC_CableModel cable_light_226(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_226(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_226(k=28);
  
/* Light Model 225 */
  HPF.DC.Variable_DC_Load Light_225;
  HPF.Cables.NEC_CableModel cable_light_225(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_225(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_225(k=28);
  
/* Light Model 224 */
  HPF.DC.Variable_DC_Load Light_224;
  HPF.Cables.NEC_CableModel cable_light_224(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_224(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_224(k=28);
  
/* Light Model 223 */
  HPF.DC.Variable_DC_Load Light_223;
  HPF.Cables.NEC_CableModel cable_light_223(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_223(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_223(k=28);
  
/* Light Model 222 */
  HPF.DC.Variable_DC_Load Light_222;
  HPF.Cables.NEC_CableModel cable_light_222(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_222(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_222(k=28);
  
/* Light Model 221 */
  HPF.DC.Variable_DC_Load Light_221;
  HPF.Cables.NEC_CableModel cable_light_221(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_221(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_221(k=28);
  
/* Light Model 220 */
  HPF.DC.Variable_DC_Load Light_220;
  HPF.Cables.NEC_CableModel cable_light_220(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_220(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_220(k=28);
  
/* Light Model 219 */
  HPF.DC.Variable_DC_Load Light_219;
  HPF.Cables.NEC_CableModel cable_light_219(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_219(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_219(k=28);
  
/* Light Model 204 */
  HPF.DC.Variable_DC_Load Light_204;
  HPF.Cables.NEC_CableModel cable_light_204(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_204(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_204(k=31);
  
/* Light Model 203 */
  HPF.DC.Variable_DC_Load Light_203;
  HPF.Cables.NEC_CableModel cable_light_203(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_203(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_203(k=31);
  
/* Light Model 202 */
  HPF.DC.Variable_DC_Load Light_202;
  HPF.Cables.NEC_CableModel cable_light_202(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_202(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_202(k=31);
  
/* Light Model 201 */
  HPF.DC.Variable_DC_Load Light_201;
  HPF.Cables.NEC_CableModel cable_light_201(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_201(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_201(k=31);
  
/* Light Model 200 */
  HPF.DC.Variable_DC_Load Light_200;
  HPF.Cables.NEC_CableModel cable_light_200(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_200(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_200(k=31);
  
/* Light Model 199 */
  HPF.DC.Variable_DC_Load Light_199;
  HPF.Cables.NEC_CableModel cable_light_199(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_199(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_199(k=31);
  
/* Light Model 190 */
  HPF.DC.Variable_DC_Load Light_190;
  HPF.Cables.NEC_CableModel cable_light_190(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_190(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_190(k=40);
  
/* Light Model 189 */
  HPF.DC.Variable_DC_Load Light_189;
  HPF.Cables.NEC_CableModel cable_light_189(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_189(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_189(k=40);
  
/* Light Model 187 */
  HPF.DC.Variable_DC_Load Light_187;
  HPF.Cables.NEC_CableModel cable_light_187(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_187(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_187(k=40);
  
/* Light Model 183 */
  HPF.DC.Variable_DC_Load Light_183;
  HPF.Cables.NEC_CableModel cable_light_183(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_183(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_183(k=31);
  
/* Light Model 182 */
  HPF.DC.Variable_DC_Load Light_182;
  HPF.Cables.NEC_CableModel cable_light_182(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_182(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_182(k=31);
  
/* Light Model 181 */
  HPF.DC.Variable_DC_Load Light_181;
  HPF.Cables.NEC_CableModel cable_light_181(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_181(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_181(k=31);
  
/* Light Model 180 */
  HPF.DC.Variable_DC_Load Light_180;
  HPF.Cables.NEC_CableModel cable_light_180(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_180(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_180(k=31);
  
/* Light Model 179 */
  HPF.DC.Variable_DC_Load Light_179;
  HPF.Cables.NEC_CableModel cable_light_179(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_179(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_179(k=31);
  
/* Light Model 178 */
  HPF.DC.Variable_DC_Load Light_178;
  HPF.Cables.NEC_CableModel cable_light_178(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_178(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_178(k=31);
  
/* Light Model 177 */
  HPF.DC.Variable_DC_Load Light_177;
  HPF.Cables.NEC_CableModel cable_light_177(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_177(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_177(k=31);
  
/* Light Model 176 */
  HPF.DC.Variable_DC_Load Light_176;
  HPF.Cables.NEC_CableModel cable_light_176(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_176(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_176(k=31);
  
/* Light Model 175 */
  HPF.DC.Variable_DC_Load Light_175;
  HPF.Cables.NEC_CableModel cable_light_175(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_175(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_175(k=31);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 255 */
  connect(Light_Driver_255.hPin_L, cable_light_255.pin_p);
  connect(Light_255.p, Light_Driver_255.pin_p);
  connect(Light_255.n, GndDC.p);
  connect(Light_Driver_255.hPin_N, GndAC.pin);
  connect(Light_Driver_255.pin_n, GndDC.p);
  connect(cable_light_255.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_255.y, Light_255.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_255.u);
/* Light Connections 254 */
  connect(Light_Driver_254.hPin_L, cable_light_254.pin_p);
  connect(Light_254.p, Light_Driver_254.pin_p);
  connect(Light_254.n, GndDC.p);
  connect(Light_Driver_254.hPin_N, GndAC.pin);
  connect(Light_Driver_254.pin_n, GndDC.p);
  connect(cable_light_254.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_254.y, Light_254.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_254.u);
/* Light Connections 253 */
  connect(Light_Driver_253.hPin_L, cable_light_253.pin_p);
  connect(Light_253.p, Light_Driver_253.pin_p);
  connect(Light_253.n, GndDC.p);
  connect(Light_Driver_253.hPin_N, GndAC.pin);
  connect(Light_Driver_253.pin_n, GndDC.p);
  connect(cable_light_253.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_253.y, Light_253.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_253.u);
/* Light Connections 252 */
  connect(Light_Driver_252.hPin_L, cable_light_252.pin_p);
  connect(Light_252.p, Light_Driver_252.pin_p);
  connect(Light_252.n, GndDC.p);
  connect(Light_Driver_252.hPin_N, GndAC.pin);
  connect(Light_Driver_252.pin_n, GndDC.p);
  connect(cable_light_252.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_252.y, Light_252.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_252.u);
/* Light Connections 251 */
  connect(Light_Driver_251.hPin_L, cable_light_251.pin_p);
  connect(Light_251.p, Light_Driver_251.pin_p);
  connect(Light_251.n, GndDC.p);
  connect(Light_Driver_251.hPin_N, GndAC.pin);
  connect(Light_Driver_251.pin_n, GndDC.p);
  connect(cable_light_251.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_251.y, Light_251.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_251.u);
/* Light Connections 250 */
  connect(Light_Driver_250.hPin_L, cable_light_250.pin_p);
  connect(Light_250.p, Light_Driver_250.pin_p);
  connect(Light_250.n, GndDC.p);
  connect(Light_Driver_250.hPin_N, GndAC.pin);
  connect(Light_Driver_250.pin_n, GndDC.p);
  connect(cable_light_250.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_250.y, Light_250.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_250.u);
/* Light Connections 249 */
  connect(Light_Driver_249.hPin_L, cable_light_249.pin_p);
  connect(Light_249.p, Light_Driver_249.pin_p);
  connect(Light_249.n, GndDC.p);
  connect(Light_Driver_249.hPin_N, GndAC.pin);
  connect(Light_Driver_249.pin_n, GndDC.p);
  connect(cable_light_249.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_249.y, Light_249.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_249.u);
/* Light Connections 248 */
  connect(Light_Driver_248.hPin_L, cable_light_248.pin_p);
  connect(Light_248.p, Light_Driver_248.pin_p);
  connect(Light_248.n, GndDC.p);
  connect(Light_Driver_248.hPin_N, GndAC.pin);
  connect(Light_Driver_248.pin_n, GndDC.p);
  connect(cable_light_248.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_248.y, Light_248.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_248.u);
/* Light Connections 247 */
  connect(Light_Driver_247.hPin_L, cable_light_247.pin_p);
  connect(Light_247.p, Light_Driver_247.pin_p);
  connect(Light_247.n, GndDC.p);
  connect(Light_Driver_247.hPin_N, GndAC.pin);
  connect(Light_Driver_247.pin_n, GndDC.p);
  connect(cable_light_247.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_247.y, Light_247.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_247.u);
/* Light Connections 246 */
  connect(Light_Driver_246.hPin_L, cable_light_246.pin_p);
  connect(Light_246.p, Light_Driver_246.pin_p);
  connect(Light_246.n, GndDC.p);
  connect(Light_Driver_246.hPin_N, GndAC.pin);
  connect(Light_Driver_246.pin_n, GndDC.p);
  connect(cable_light_246.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_246.y, Light_246.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_246.u);
/* Light Connections 245 */
  connect(Light_Driver_245.hPin_L, cable_light_245.pin_p);
  connect(Light_245.p, Light_Driver_245.pin_p);
  connect(Light_245.n, GndDC.p);
  connect(Light_Driver_245.hPin_N, GndAC.pin);
  connect(Light_Driver_245.pin_n, GndDC.p);
  connect(cable_light_245.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_245.y, Light_245.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_245.u);
/* Light Connections 244 */
  connect(Light_Driver_244.hPin_L, cable_light_244.pin_p);
  connect(Light_244.p, Light_Driver_244.pin_p);
  connect(Light_244.n, GndDC.p);
  connect(Light_Driver_244.hPin_N, GndAC.pin);
  connect(Light_Driver_244.pin_n, GndDC.p);
  connect(cable_light_244.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_244.y, Light_244.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_244.u);
/* Light Connections 243 */
  connect(Light_Driver_243.hPin_L, cable_light_243.pin_p);
  connect(Light_243.p, Light_Driver_243.pin_p);
  connect(Light_243.n, GndDC.p);
  connect(Light_Driver_243.hPin_N, GndAC.pin);
  connect(Light_Driver_243.pin_n, GndDC.p);
  connect(cable_light_243.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_243.y, Light_243.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_243.u);
/* Light Connections 242 */
  connect(Light_Driver_242.hPin_L, cable_light_242.pin_p);
  connect(Light_242.p, Light_Driver_242.pin_p);
  connect(Light_242.n, GndDC.p);
  connect(Light_Driver_242.hPin_N, GndAC.pin);
  connect(Light_Driver_242.pin_n, GndDC.p);
  connect(cable_light_242.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_242.y, Light_242.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_242.u);
/* Light Connections 241 */
  connect(Light_Driver_241.hPin_L, cable_light_241.pin_p);
  connect(Light_241.p, Light_Driver_241.pin_p);
  connect(Light_241.n, GndDC.p);
  connect(Light_Driver_241.hPin_N, GndAC.pin);
  connect(Light_Driver_241.pin_n, GndDC.p);
  connect(cable_light_241.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_241.y, Light_241.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_241.u);
/* Light Connections 239 */
  connect(Light_Driver_239.hPin_L, cable_light_239.pin_p);
  connect(Light_239.p, Light_Driver_239.pin_p);
  connect(Light_239.n, GndDC.p);
  connect(Light_Driver_239.hPin_N, GndAC.pin);
  connect(Light_Driver_239.pin_n, GndDC.p);
  connect(cable_light_239.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_239.y, Light_239.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_239.u);
/* Light Connections 235 */
  connect(Light_Driver_235.hPin_L, cable_light_235.pin_p);
  connect(Light_235.p, Light_Driver_235.pin_p);
  connect(Light_235.n, GndDC.p);
  connect(Light_Driver_235.hPin_N, GndAC.pin);
  connect(Light_Driver_235.pin_n, GndDC.p);
  connect(cable_light_235.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_235.y, Light_235.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_235.u);
/* Light Connections 234 */
  connect(Light_Driver_234.hPin_L, cable_light_234.pin_p);
  connect(Light_234.p, Light_Driver_234.pin_p);
  connect(Light_234.n, GndDC.p);
  connect(Light_Driver_234.hPin_N, GndAC.pin);
  connect(Light_Driver_234.pin_n, GndDC.p);
  connect(cable_light_234.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_234.y, Light_234.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_234.u);
/* Light Connections 233 */
  connect(Light_Driver_233.hPin_L, cable_light_233.pin_p);
  connect(Light_233.p, Light_Driver_233.pin_p);
  connect(Light_233.n, GndDC.p);
  connect(Light_Driver_233.hPin_N, GndAC.pin);
  connect(Light_Driver_233.pin_n, GndDC.p);
  connect(cable_light_233.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_233.y, Light_233.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_233.u);
/* Light Connections 232 */
  connect(Light_Driver_232.hPin_L, cable_light_232.pin_p);
  connect(Light_232.p, Light_Driver_232.pin_p);
  connect(Light_232.n, GndDC.p);
  connect(Light_Driver_232.hPin_N, GndAC.pin);
  connect(Light_Driver_232.pin_n, GndDC.p);
  connect(cable_light_232.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_232.y, Light_232.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_232.u);
/* Light Connections 226 */
  connect(Light_Driver_226.hPin_L, cable_light_226.pin_p);
  connect(Light_226.p, Light_Driver_226.pin_p);
  connect(Light_226.n, GndDC.p);
  connect(Light_Driver_226.hPin_N, GndAC.pin);
  connect(Light_Driver_226.pin_n, GndDC.p);
  connect(cable_light_226.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_226.y, Light_226.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_226.u);
/* Light Connections 225 */
  connect(Light_Driver_225.hPin_L, cable_light_225.pin_p);
  connect(Light_225.p, Light_Driver_225.pin_p);
  connect(Light_225.n, GndDC.p);
  connect(Light_Driver_225.hPin_N, GndAC.pin);
  connect(Light_Driver_225.pin_n, GndDC.p);
  connect(cable_light_225.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_225.y, Light_225.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_225.u);
/* Light Connections 224 */
  connect(Light_Driver_224.hPin_L, cable_light_224.pin_p);
  connect(Light_224.p, Light_Driver_224.pin_p);
  connect(Light_224.n, GndDC.p);
  connect(Light_Driver_224.hPin_N, GndAC.pin);
  connect(Light_Driver_224.pin_n, GndDC.p);
  connect(cable_light_224.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_224.y, Light_224.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_224.u);
/* Light Connections 223 */
  connect(Light_Driver_223.hPin_L, cable_light_223.pin_p);
  connect(Light_223.p, Light_Driver_223.pin_p);
  connect(Light_223.n, GndDC.p);
  connect(Light_Driver_223.hPin_N, GndAC.pin);
  connect(Light_Driver_223.pin_n, GndDC.p);
  connect(cable_light_223.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_223.y, Light_223.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_223.u);
/* Light Connections 222 */
  connect(Light_Driver_222.hPin_L, cable_light_222.pin_p);
  connect(Light_222.p, Light_Driver_222.pin_p);
  connect(Light_222.n, GndDC.p);
  connect(Light_Driver_222.hPin_N, GndAC.pin);
  connect(Light_Driver_222.pin_n, GndDC.p);
  connect(cable_light_222.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_222.y, Light_222.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_222.u);
/* Light Connections 221 */
  connect(Light_Driver_221.hPin_L, cable_light_221.pin_p);
  connect(Light_221.p, Light_Driver_221.pin_p);
  connect(Light_221.n, GndDC.p);
  connect(Light_Driver_221.hPin_N, GndAC.pin);
  connect(Light_Driver_221.pin_n, GndDC.p);
  connect(cable_light_221.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_221.y, Light_221.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_221.u);
/* Light Connections 220 */
  connect(Light_Driver_220.hPin_L, cable_light_220.pin_p);
  connect(Light_220.p, Light_Driver_220.pin_p);
  connect(Light_220.n, GndDC.p);
  connect(Light_Driver_220.hPin_N, GndAC.pin);
  connect(Light_Driver_220.pin_n, GndDC.p);
  connect(cable_light_220.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_220.y, Light_220.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_220.u);
/* Light Connections 219 */
  connect(Light_Driver_219.hPin_L, cable_light_219.pin_p);
  connect(Light_219.p, Light_Driver_219.pin_p);
  connect(Light_219.n, GndDC.p);
  connect(Light_Driver_219.hPin_N, GndAC.pin);
  connect(Light_Driver_219.pin_n, GndDC.p);
  connect(cable_light_219.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_219.y, Light_219.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_219.u);
/* Light Connections 204 */
  connect(Light_Driver_204.hPin_L, cable_light_204.pin_p);
  connect(Light_204.p, Light_Driver_204.pin_p);
  connect(Light_204.n, GndDC.p);
  connect(Light_Driver_204.hPin_N, GndAC.pin);
  connect(Light_Driver_204.pin_n, GndDC.p);
  connect(cable_light_204.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_204.y, Light_204.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_204.u);
/* Light Connections 203 */
  connect(Light_Driver_203.hPin_L, cable_light_203.pin_p);
  connect(Light_203.p, Light_Driver_203.pin_p);
  connect(Light_203.n, GndDC.p);
  connect(Light_Driver_203.hPin_N, GndAC.pin);
  connect(Light_Driver_203.pin_n, GndDC.p);
  connect(cable_light_203.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_203.y, Light_203.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_203.u);
/* Light Connections 202 */
  connect(Light_Driver_202.hPin_L, cable_light_202.pin_p);
  connect(Light_202.p, Light_Driver_202.pin_p);
  connect(Light_202.n, GndDC.p);
  connect(Light_Driver_202.hPin_N, GndAC.pin);
  connect(Light_Driver_202.pin_n, GndDC.p);
  connect(cable_light_202.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_202.y, Light_202.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_202.u);
/* Light Connections 201 */
  connect(Light_Driver_201.hPin_L, cable_light_201.pin_p);
  connect(Light_201.p, Light_Driver_201.pin_p);
  connect(Light_201.n, GndDC.p);
  connect(Light_Driver_201.hPin_N, GndAC.pin);
  connect(Light_Driver_201.pin_n, GndDC.p);
  connect(cable_light_201.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_201.y, Light_201.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_201.u);
/* Light Connections 200 */
  connect(Light_Driver_200.hPin_L, cable_light_200.pin_p);
  connect(Light_200.p, Light_Driver_200.pin_p);
  connect(Light_200.n, GndDC.p);
  connect(Light_Driver_200.hPin_N, GndAC.pin);
  connect(Light_Driver_200.pin_n, GndDC.p);
  connect(cable_light_200.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_200.y, Light_200.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_200.u);
/* Light Connections 199 */
  connect(Light_Driver_199.hPin_L, cable_light_199.pin_p);
  connect(Light_199.p, Light_Driver_199.pin_p);
  connect(Light_199.n, GndDC.p);
  connect(Light_Driver_199.hPin_N, GndAC.pin);
  connect(Light_Driver_199.pin_n, GndDC.p);
  connect(cable_light_199.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_199.y, Light_199.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_199.u);
/* Light Connections 190 */
  connect(Light_Driver_190.hPin_L, cable_light_190.pin_p);
  connect(Light_190.p, Light_Driver_190.pin_p);
  connect(Light_190.n, GndDC.p);
  connect(Light_Driver_190.hPin_N, GndAC.pin);
  connect(Light_Driver_190.pin_n, GndDC.p);
  connect(cable_light_190.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_190.y, Light_190.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_190.u);
/* Light Connections 189 */
  connect(Light_Driver_189.hPin_L, cable_light_189.pin_p);
  connect(Light_189.p, Light_Driver_189.pin_p);
  connect(Light_189.n, GndDC.p);
  connect(Light_Driver_189.hPin_N, GndAC.pin);
  connect(Light_Driver_189.pin_n, GndDC.p);
  connect(cable_light_189.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_189.y, Light_189.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_189.u);
/* Light Connections 187 */
  connect(Light_Driver_187.hPin_L, cable_light_187.pin_p);
  connect(Light_187.p, Light_Driver_187.pin_p);
  connect(Light_187.n, GndDC.p);
  connect(Light_Driver_187.hPin_N, GndAC.pin);
  connect(Light_Driver_187.pin_n, GndDC.p);
  connect(cable_light_187.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_187.y, Light_187.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_187.u);
/* Light Connections 183 */
  connect(Light_Driver_183.hPin_L, cable_light_183.pin_p);
  connect(Light_183.p, Light_Driver_183.pin_p);
  connect(Light_183.n, GndDC.p);
  connect(Light_Driver_183.hPin_N, GndAC.pin);
  connect(Light_Driver_183.pin_n, GndDC.p);
  connect(cable_light_183.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_183.y, Light_183.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_183.u);
/* Light Connections 182 */
  connect(Light_Driver_182.hPin_L, cable_light_182.pin_p);
  connect(Light_182.p, Light_Driver_182.pin_p);
  connect(Light_182.n, GndDC.p);
  connect(Light_Driver_182.hPin_N, GndAC.pin);
  connect(Light_Driver_182.pin_n, GndDC.p);
  connect(cable_light_182.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_182.y, Light_182.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_182.u);
/* Light Connections 181 */
  connect(Light_Driver_181.hPin_L, cable_light_181.pin_p);
  connect(Light_181.p, Light_Driver_181.pin_p);
  connect(Light_181.n, GndDC.p);
  connect(Light_Driver_181.hPin_N, GndAC.pin);
  connect(Light_Driver_181.pin_n, GndDC.p);
  connect(cable_light_181.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_181.y, Light_181.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_181.u);
/* Light Connections 180 */
  connect(Light_Driver_180.hPin_L, cable_light_180.pin_p);
  connect(Light_180.p, Light_Driver_180.pin_p);
  connect(Light_180.n, GndDC.p);
  connect(Light_Driver_180.hPin_N, GndAC.pin);
  connect(Light_Driver_180.pin_n, GndDC.p);
  connect(cable_light_180.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_180.y, Light_180.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_180.u);
/* Light Connections 179 */
  connect(Light_Driver_179.hPin_L, cable_light_179.pin_p);
  connect(Light_179.p, Light_Driver_179.pin_p);
  connect(Light_179.n, GndDC.p);
  connect(Light_Driver_179.hPin_N, GndAC.pin);
  connect(Light_Driver_179.pin_n, GndDC.p);
  connect(cable_light_179.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_179.y, Light_179.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_179.u);
/* Light Connections 178 */
  connect(Light_Driver_178.hPin_L, cable_light_178.pin_p);
  connect(Light_178.p, Light_Driver_178.pin_p);
  connect(Light_178.n, GndDC.p);
  connect(Light_Driver_178.hPin_N, GndAC.pin);
  connect(Light_Driver_178.pin_n, GndDC.p);
  connect(cable_light_178.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_178.y, Light_178.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_178.u);
/* Light Connections 177 */
  connect(Light_Driver_177.hPin_L, cable_light_177.pin_p);
  connect(Light_177.p, Light_Driver_177.pin_p);
  connect(Light_177.n, GndDC.p);
  connect(Light_Driver_177.hPin_N, GndAC.pin);
  connect(Light_Driver_177.pin_n, GndDC.p);
  connect(cable_light_177.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_177.y, Light_177.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_177.u);
/* Light Connections 176 */
  connect(Light_Driver_176.hPin_L, cable_light_176.pin_p);
  connect(Light_176.p, Light_Driver_176.pin_p);
  connect(Light_176.n, GndDC.p);
  connect(Light_Driver_176.hPin_N, GndAC.pin);
  connect(Light_Driver_176.pin_n, GndDC.p);
  connect(cable_light_176.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_176.y, Light_176.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_176.u);
/* Light Connections 175 */
  connect(Light_Driver_175.hPin_L, cable_light_175.pin_p);
  connect(Light_175.p, Light_Driver_175.pin_p);
  connect(Light_175.n, GndDC.p);
  connect(Light_Driver_175.hPin_N, GndAC.pin);
  connect(Light_Driver_175.pin_n, GndDC.p);
  connect(cable_light_175.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_175.y, Light_175.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_175.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_2A;
