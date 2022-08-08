within ;
model Light_Panel_L1_1C
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

  
/* Light Model 278 */
  HPF.DC.Variable_DC_Load Light_278;
  HPF.Cables.NEC_CableModel cable_light_278(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_278(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_278(k=40);
  
/* Light Model 277 */
  HPF.DC.Variable_DC_Load Light_277;
  HPF.Cables.NEC_CableModel cable_light_277(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_277(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_277(k=40);
  
/* Light Model 276 */
  HPF.DC.Variable_DC_Load Light_276;
  HPF.Cables.NEC_CableModel cable_light_276(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_276(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_276(k=40);
  
/* Light Model 275 */
  HPF.DC.Variable_DC_Load Light_275;
  HPF.Cables.NEC_CableModel cable_light_275(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_275(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_275(k=40);
  
/* Light Model 274 */
  HPF.DC.Variable_DC_Load Light_274;
  HPF.Cables.NEC_CableModel cable_light_274(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_274(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_274(k=28);
  
/* Light Model 273 */
  HPF.DC.Variable_DC_Load Light_273;
  HPF.Cables.NEC_CableModel cable_light_273(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_273(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_273(k=28);
  
/* Light Model 272 */
  HPF.DC.Variable_DC_Load Light_272;
  HPF.Cables.NEC_CableModel cable_light_272(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_272(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_272(k=40);
  
/* Light Model 271 */
  HPF.DC.Variable_DC_Load Light_271;
  HPF.Cables.NEC_CableModel cable_light_271(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_271(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_271(k=40);
  
/* Light Model 270 */
  HPF.DC.Variable_DC_Load Light_270;
  HPF.Cables.NEC_CableModel cable_light_270(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.7);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_270(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_270(k=40);
  
/* Light Model 269 */
  HPF.DC.Variable_DC_Load Light_269;
  HPF.Cables.NEC_CableModel cable_light_269(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_269(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_269(k=40);
  
/* Light Model 268 */
  HPF.DC.Variable_DC_Load Light_268;
  HPF.Cables.NEC_CableModel cable_light_268(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=41.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_268(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_268(k=40);
  
/* Light Model 267 */
  HPF.DC.Variable_DC_Load Light_267;
  HPF.Cables.NEC_CableModel cable_light_267(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=43.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_267(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_267(k=40);
  
/* Light Model 266 */
  HPF.DC.Variable_DC_Load Light_266;
  HPF.Cables.NEC_CableModel cable_light_266(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_266(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_266(k=28);
  
/* Light Model 265 */
  HPF.DC.Variable_DC_Load Light_265;
  HPF.Cables.NEC_CableModel cable_light_265(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_265(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_265(k=28);
  
/* Light Model 264 */
  HPF.DC.Variable_DC_Load Light_264;
  HPF.Cables.NEC_CableModel cable_light_264(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_264(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_264(k=40);
  
/* Light Model 263 */
  HPF.DC.Variable_DC_Load Light_263;
  HPF.Cables.NEC_CableModel cable_light_263(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_263(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_263(k=40);
  
/* Light Model 262 */
  HPF.DC.Variable_DC_Load Light_262;
  HPF.Cables.NEC_CableModel cable_light_262(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_262(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_262(k=28);
  
/* Light Model 261 */
  HPF.DC.Variable_DC_Load Light_261;
  HPF.Cables.NEC_CableModel cable_light_261(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.58);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_261(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_261(k=28);
  
/* Light Model 260 */
  HPF.DC.Variable_DC_Load Light_260;
  HPF.Cables.NEC_CableModel cable_light_260(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_260(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_260(k=40);
  
/* Light Model 259 */
  HPF.DC.Variable_DC_Load Light_259;
  HPF.Cables.NEC_CableModel cable_light_259(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_259(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_259(k=40);
  
/* Light Model 258 */
  HPF.DC.Variable_DC_Load Light_258;
  HPF.Cables.NEC_CableModel cable_light_258(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_258(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_258(k=28);
  
/* Light Model 257 */
  HPF.DC.Variable_DC_Load Light_257;
  HPF.Cables.NEC_CableModel cable_light_257(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_257(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_257(k=28);
  
/* Light Model 256 */
  HPF.DC.Variable_DC_Load Light_256;
  HPF.Cables.NEC_CableModel cable_light_256(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_256(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_256(k=40);
  
/* Light Model 240 */
  HPF.DC.Variable_DC_Load Light_240;
  HPF.Cables.NEC_CableModel cable_light_240(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_240(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_240(k=21);
  
/* Light Model 238 */
  HPF.DC.Variable_DC_Load Light_238;
  HPF.Cables.NEC_CableModel cable_light_238(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_238(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_238(k=21);
  
/* Light Model 237 */
  HPF.DC.Variable_DC_Load Light_237;
  HPF.Cables.NEC_CableModel cable_light_237(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_237(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_237(k=21);
  
/* Light Model 236 */
  HPF.DC.Variable_DC_Load Light_236;
  HPF.Cables.NEC_CableModel cable_light_236(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_236(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_236(k=21);
  
/* Light Model 230 */
  HPF.DC.Variable_DC_Load Light_230;
  HPF.Cables.NEC_CableModel cable_light_230(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_230(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_230(k=25);
  
/* Light Model 229 */
  HPF.DC.Variable_DC_Load Light_229;
  HPF.Cables.NEC_CableModel cable_light_229(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_229(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_229(k=25);
  
/* Light Model 228 */
  HPF.DC.Variable_DC_Load Light_228;
  HPF.Cables.NEC_CableModel cable_light_228(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_228(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_228(k=25);
  
/* Light Model 227 */
  HPF.DC.Variable_DC_Load Light_227;
  HPF.Cables.NEC_CableModel cable_light_227(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_227(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_227(k=25);
  
/* Light Model 218 */
  HPF.DC.Variable_DC_Load Light_218;
  HPF.Cables.NEC_CableModel cable_light_218(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_218(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_218(k=28);
  
/* Light Model 217 */
  HPF.DC.Variable_DC_Load Light_217;
  HPF.Cables.NEC_CableModel cable_light_217(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_217(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_217(k=28);
  
/* Light Model 216 */
  HPF.DC.Variable_DC_Load Light_216;
  HPF.Cables.NEC_CableModel cable_light_216(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_216(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_216(k=31);
  
/* Light Model 215 */
  HPF.DC.Variable_DC_Load Light_215;
  HPF.Cables.NEC_CableModel cable_light_215(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_215(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_215(k=31);
  
/* Light Model 214 */
  HPF.DC.Variable_DC_Load Light_214;
  HPF.Cables.NEC_CableModel cable_light_214(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_214(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_214(k=31);
  
/* Light Model 213 */
  HPF.DC.Variable_DC_Load Light_213;
  HPF.Cables.NEC_CableModel cable_light_213(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_213(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_213(k=31);
  
/* Light Model 212 */
  HPF.DC.Variable_DC_Load Light_212;
  HPF.Cables.NEC_CableModel cable_light_212(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.65);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_212(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_212(k=31);
  
/* Light Model 211 */
  HPF.DC.Variable_DC_Load Light_211;
  HPF.Cables.NEC_CableModel cable_light_211(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.42);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_211(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_211(k=31);
  
/* Light Model 210 */
  HPF.DC.Variable_DC_Load Light_210;
  HPF.Cables.NEC_CableModel cable_light_210(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_210(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_210(k=31);
  
/* Light Model 209 */
  HPF.DC.Variable_DC_Load Light_209;
  HPF.Cables.NEC_CableModel cable_light_209(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_209(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_209(k=31);
  
/* Light Model 208 */
  HPF.DC.Variable_DC_Load Light_208;
  HPF.Cables.NEC_CableModel cable_light_208(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_208(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_208(k=31);
  
/* Light Model 207 */
  HPF.DC.Variable_DC_Load Light_207;
  HPF.Cables.NEC_CableModel cable_light_207(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_207(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_207(k=31);
  
/* Light Model 206 */
  HPF.DC.Variable_DC_Load Light_206;
  HPF.Cables.NEC_CableModel cable_light_206(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_206(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_206(k=31);
  
/* Light Model 205 */
  HPF.DC.Variable_DC_Load Light_205;
  HPF.Cables.NEC_CableModel cable_light_205(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_205(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_205(k=31);
  
/* Light Model 195 */
  HPF.DC.Variable_DC_Load Light_195;
  HPF.Cables.NEC_CableModel cable_light_195(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_195(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_195(k=22);
  
/* Light Model 194 */
  HPF.DC.Variable_DC_Load Light_194;
  HPF.Cables.NEC_CableModel cable_light_194(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_194(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_194(k=22);
  
/* Light Model 193 */
  HPF.DC.Variable_DC_Load Light_193;
  HPF.Cables.NEC_CableModel cable_light_193(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_193(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_193(k=21);
  
/* Light Model 192 */
  HPF.DC.Variable_DC_Load Light_192;
  HPF.Cables.NEC_CableModel cable_light_192(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.7);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_192(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_192(k=21);
  
/* Light Model 191 */
  HPF.DC.Variable_DC_Load Light_191;
  HPF.Cables.NEC_CableModel cable_light_191(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_191(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_191(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 278 */
  connect(Light_Driver_278.hPin_L, cable_light_278.pin_p);
  connect(Light_278.p, Light_Driver_278.pin_p);
  connect(Light_278.n, GndDC.p);
  connect(Light_Driver_278.hPin_N, GndAC.pin);
  connect(Light_Driver_278.pin_n, GndDC.p);
  connect(cable_light_278.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_278.y, Light_278.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_278.u);
/* Light Connections 277 */
  connect(Light_Driver_277.hPin_L, cable_light_277.pin_p);
  connect(Light_277.p, Light_Driver_277.pin_p);
  connect(Light_277.n, GndDC.p);
  connect(Light_Driver_277.hPin_N, GndAC.pin);
  connect(Light_Driver_277.pin_n, GndDC.p);
  connect(cable_light_277.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_277.y, Light_277.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_277.u);
/* Light Connections 276 */
  connect(Light_Driver_276.hPin_L, cable_light_276.pin_p);
  connect(Light_276.p, Light_Driver_276.pin_p);
  connect(Light_276.n, GndDC.p);
  connect(Light_Driver_276.hPin_N, GndAC.pin);
  connect(Light_Driver_276.pin_n, GndDC.p);
  connect(cable_light_276.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_276.y, Light_276.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_276.u);
/* Light Connections 275 */
  connect(Light_Driver_275.hPin_L, cable_light_275.pin_p);
  connect(Light_275.p, Light_Driver_275.pin_p);
  connect(Light_275.n, GndDC.p);
  connect(Light_Driver_275.hPin_N, GndAC.pin);
  connect(Light_Driver_275.pin_n, GndDC.p);
  connect(cable_light_275.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_275.y, Light_275.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_275.u);
/* Light Connections 274 */
  connect(Light_Driver_274.hPin_L, cable_light_274.pin_p);
  connect(Light_274.p, Light_Driver_274.pin_p);
  connect(Light_274.n, GndDC.p);
  connect(Light_Driver_274.hPin_N, GndAC.pin);
  connect(Light_Driver_274.pin_n, GndDC.p);
  connect(cable_light_274.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_274.y, Light_274.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_274.u);
/* Light Connections 273 */
  connect(Light_Driver_273.hPin_L, cable_light_273.pin_p);
  connect(Light_273.p, Light_Driver_273.pin_p);
  connect(Light_273.n, GndDC.p);
  connect(Light_Driver_273.hPin_N, GndAC.pin);
  connect(Light_Driver_273.pin_n, GndDC.p);
  connect(cable_light_273.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_273.y, Light_273.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_273.u);
/* Light Connections 272 */
  connect(Light_Driver_272.hPin_L, cable_light_272.pin_p);
  connect(Light_272.p, Light_Driver_272.pin_p);
  connect(Light_272.n, GndDC.p);
  connect(Light_Driver_272.hPin_N, GndAC.pin);
  connect(Light_Driver_272.pin_n, GndDC.p);
  connect(cable_light_272.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_272.y, Light_272.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_272.u);
/* Light Connections 271 */
  connect(Light_Driver_271.hPin_L, cable_light_271.pin_p);
  connect(Light_271.p, Light_Driver_271.pin_p);
  connect(Light_271.n, GndDC.p);
  connect(Light_Driver_271.hPin_N, GndAC.pin);
  connect(Light_Driver_271.pin_n, GndDC.p);
  connect(cable_light_271.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_271.y, Light_271.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_271.u);
/* Light Connections 270 */
  connect(Light_Driver_270.hPin_L, cable_light_270.pin_p);
  connect(Light_270.p, Light_Driver_270.pin_p);
  connect(Light_270.n, GndDC.p);
  connect(Light_Driver_270.hPin_N, GndAC.pin);
  connect(Light_Driver_270.pin_n, GndDC.p);
  connect(cable_light_270.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_270.y, Light_270.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_270.u);
/* Light Connections 269 */
  connect(Light_Driver_269.hPin_L, cable_light_269.pin_p);
  connect(Light_269.p, Light_Driver_269.pin_p);
  connect(Light_269.n, GndDC.p);
  connect(Light_Driver_269.hPin_N, GndAC.pin);
  connect(Light_Driver_269.pin_n, GndDC.p);
  connect(cable_light_269.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_269.y, Light_269.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_269.u);
/* Light Connections 268 */
  connect(Light_Driver_268.hPin_L, cable_light_268.pin_p);
  connect(Light_268.p, Light_Driver_268.pin_p);
  connect(Light_268.n, GndDC.p);
  connect(Light_Driver_268.hPin_N, GndAC.pin);
  connect(Light_Driver_268.pin_n, GndDC.p);
  connect(cable_light_268.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_268.y, Light_268.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_268.u);
/* Light Connections 267 */
  connect(Light_Driver_267.hPin_L, cable_light_267.pin_p);
  connect(Light_267.p, Light_Driver_267.pin_p);
  connect(Light_267.n, GndDC.p);
  connect(Light_Driver_267.hPin_N, GndAC.pin);
  connect(Light_Driver_267.pin_n, GndDC.p);
  connect(cable_light_267.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_267.y, Light_267.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_267.u);
/* Light Connections 266 */
  connect(Light_Driver_266.hPin_L, cable_light_266.pin_p);
  connect(Light_266.p, Light_Driver_266.pin_p);
  connect(Light_266.n, GndDC.p);
  connect(Light_Driver_266.hPin_N, GndAC.pin);
  connect(Light_Driver_266.pin_n, GndDC.p);
  connect(cable_light_266.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_266.y, Light_266.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_266.u);
/* Light Connections 265 */
  connect(Light_Driver_265.hPin_L, cable_light_265.pin_p);
  connect(Light_265.p, Light_Driver_265.pin_p);
  connect(Light_265.n, GndDC.p);
  connect(Light_Driver_265.hPin_N, GndAC.pin);
  connect(Light_Driver_265.pin_n, GndDC.p);
  connect(cable_light_265.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_265.y, Light_265.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_265.u);
/* Light Connections 264 */
  connect(Light_Driver_264.hPin_L, cable_light_264.pin_p);
  connect(Light_264.p, Light_Driver_264.pin_p);
  connect(Light_264.n, GndDC.p);
  connect(Light_Driver_264.hPin_N, GndAC.pin);
  connect(Light_Driver_264.pin_n, GndDC.p);
  connect(cable_light_264.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_264.y, Light_264.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_264.u);
/* Light Connections 263 */
  connect(Light_Driver_263.hPin_L, cable_light_263.pin_p);
  connect(Light_263.p, Light_Driver_263.pin_p);
  connect(Light_263.n, GndDC.p);
  connect(Light_Driver_263.hPin_N, GndAC.pin);
  connect(Light_Driver_263.pin_n, GndDC.p);
  connect(cable_light_263.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_263.y, Light_263.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_263.u);
/* Light Connections 262 */
  connect(Light_Driver_262.hPin_L, cable_light_262.pin_p);
  connect(Light_262.p, Light_Driver_262.pin_p);
  connect(Light_262.n, GndDC.p);
  connect(Light_Driver_262.hPin_N, GndAC.pin);
  connect(Light_Driver_262.pin_n, GndDC.p);
  connect(cable_light_262.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_262.y, Light_262.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_262.u);
/* Light Connections 261 */
  connect(Light_Driver_261.hPin_L, cable_light_261.pin_p);
  connect(Light_261.p, Light_Driver_261.pin_p);
  connect(Light_261.n, GndDC.p);
  connect(Light_Driver_261.hPin_N, GndAC.pin);
  connect(Light_Driver_261.pin_n, GndDC.p);
  connect(cable_light_261.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_261.y, Light_261.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_261.u);
/* Light Connections 260 */
  connect(Light_Driver_260.hPin_L, cable_light_260.pin_p);
  connect(Light_260.p, Light_Driver_260.pin_p);
  connect(Light_260.n, GndDC.p);
  connect(Light_Driver_260.hPin_N, GndAC.pin);
  connect(Light_Driver_260.pin_n, GndDC.p);
  connect(cable_light_260.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_260.y, Light_260.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_260.u);
/* Light Connections 259 */
  connect(Light_Driver_259.hPin_L, cable_light_259.pin_p);
  connect(Light_259.p, Light_Driver_259.pin_p);
  connect(Light_259.n, GndDC.p);
  connect(Light_Driver_259.hPin_N, GndAC.pin);
  connect(Light_Driver_259.pin_n, GndDC.p);
  connect(cable_light_259.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_259.y, Light_259.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_259.u);
/* Light Connections 258 */
  connect(Light_Driver_258.hPin_L, cable_light_258.pin_p);
  connect(Light_258.p, Light_Driver_258.pin_p);
  connect(Light_258.n, GndDC.p);
  connect(Light_Driver_258.hPin_N, GndAC.pin);
  connect(Light_Driver_258.pin_n, GndDC.p);
  connect(cable_light_258.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_258.y, Light_258.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_258.u);
/* Light Connections 257 */
  connect(Light_Driver_257.hPin_L, cable_light_257.pin_p);
  connect(Light_257.p, Light_Driver_257.pin_p);
  connect(Light_257.n, GndDC.p);
  connect(Light_Driver_257.hPin_N, GndAC.pin);
  connect(Light_Driver_257.pin_n, GndDC.p);
  connect(cable_light_257.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_257.y, Light_257.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_257.u);
/* Light Connections 256 */
  connect(Light_Driver_256.hPin_L, cable_light_256.pin_p);
  connect(Light_256.p, Light_Driver_256.pin_p);
  connect(Light_256.n, GndDC.p);
  connect(Light_Driver_256.hPin_N, GndAC.pin);
  connect(Light_Driver_256.pin_n, GndDC.p);
  connect(cable_light_256.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_256.y, Light_256.u);
  connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_256.u);
/* Light Connections 240 */
  connect(Light_Driver_240.hPin_L, cable_light_240.pin_p);
  connect(Light_240.p, Light_Driver_240.pin_p);
  connect(Light_240.n, GndDC.p);
  connect(Light_Driver_240.hPin_N, GndAC.pin);
  connect(Light_Driver_240.pin_n, GndDC.p);
  connect(cable_light_240.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_240.y, Light_240.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_240.u);
/* Light Connections 238 */
  connect(Light_Driver_238.hPin_L, cable_light_238.pin_p);
  connect(Light_238.p, Light_Driver_238.pin_p);
  connect(Light_238.n, GndDC.p);
  connect(Light_Driver_238.hPin_N, GndAC.pin);
  connect(Light_Driver_238.pin_n, GndDC.p);
  connect(cable_light_238.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_238.y, Light_238.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_238.u);
/* Light Connections 237 */
  connect(Light_Driver_237.hPin_L, cable_light_237.pin_p);
  connect(Light_237.p, Light_Driver_237.pin_p);
  connect(Light_237.n, GndDC.p);
  connect(Light_Driver_237.hPin_N, GndAC.pin);
  connect(Light_Driver_237.pin_n, GndDC.p);
  connect(cable_light_237.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_237.y, Light_237.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_237.u);
/* Light Connections 236 */
  connect(Light_Driver_236.hPin_L, cable_light_236.pin_p);
  connect(Light_236.p, Light_Driver_236.pin_p);
  connect(Light_236.n, GndDC.p);
  connect(Light_Driver_236.hPin_N, GndAC.pin);
  connect(Light_Driver_236.pin_n, GndDC.p);
  connect(cable_light_236.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_236.y, Light_236.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_236.u);
/* Light Connections 230 */
  connect(Light_Driver_230.hPin_L, cable_light_230.pin_p);
  connect(Light_230.p, Light_Driver_230.pin_p);
  connect(Light_230.n, GndDC.p);
  connect(Light_Driver_230.hPin_N, GndAC.pin);
  connect(Light_Driver_230.pin_n, GndDC.p);
  connect(cable_light_230.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_230.y, Light_230.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_230.u);
/* Light Connections 229 */
  connect(Light_Driver_229.hPin_L, cable_light_229.pin_p);
  connect(Light_229.p, Light_Driver_229.pin_p);
  connect(Light_229.n, GndDC.p);
  connect(Light_Driver_229.hPin_N, GndAC.pin);
  connect(Light_Driver_229.pin_n, GndDC.p);
  connect(cable_light_229.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_229.y, Light_229.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_229.u);
/* Light Connections 228 */
  connect(Light_Driver_228.hPin_L, cable_light_228.pin_p);
  connect(Light_228.p, Light_Driver_228.pin_p);
  connect(Light_228.n, GndDC.p);
  connect(Light_Driver_228.hPin_N, GndAC.pin);
  connect(Light_Driver_228.pin_n, GndDC.p);
  connect(cable_light_228.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_228.y, Light_228.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_228.u);
/* Light Connections 227 */
  connect(Light_Driver_227.hPin_L, cable_light_227.pin_p);
  connect(Light_227.p, Light_Driver_227.pin_p);
  connect(Light_227.n, GndDC.p);
  connect(Light_Driver_227.hPin_N, GndAC.pin);
  connect(Light_Driver_227.pin_n, GndDC.p);
  connect(cable_light_227.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_227.y, Light_227.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_227.u);
/* Light Connections 218 */
  connect(Light_Driver_218.hPin_L, cable_light_218.pin_p);
  connect(Light_218.p, Light_Driver_218.pin_p);
  connect(Light_218.n, GndDC.p);
  connect(Light_Driver_218.hPin_N, GndAC.pin);
  connect(Light_Driver_218.pin_n, GndDC.p);
  connect(cable_light_218.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_218.y, Light_218.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_218.u);
/* Light Connections 217 */
  connect(Light_Driver_217.hPin_L, cable_light_217.pin_p);
  connect(Light_217.p, Light_Driver_217.pin_p);
  connect(Light_217.n, GndDC.p);
  connect(Light_Driver_217.hPin_N, GndAC.pin);
  connect(Light_Driver_217.pin_n, GndDC.p);
  connect(cable_light_217.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_217.y, Light_217.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_217.u);
/* Light Connections 216 */
  connect(Light_Driver_216.hPin_L, cable_light_216.pin_p);
  connect(Light_216.p, Light_Driver_216.pin_p);
  connect(Light_216.n, GndDC.p);
  connect(Light_Driver_216.hPin_N, GndAC.pin);
  connect(Light_Driver_216.pin_n, GndDC.p);
  connect(cable_light_216.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_216.y, Light_216.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_216.u);
/* Light Connections 215 */
  connect(Light_Driver_215.hPin_L, cable_light_215.pin_p);
  connect(Light_215.p, Light_Driver_215.pin_p);
  connect(Light_215.n, GndDC.p);
  connect(Light_Driver_215.hPin_N, GndAC.pin);
  connect(Light_Driver_215.pin_n, GndDC.p);
  connect(cable_light_215.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_215.y, Light_215.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_215.u);
/* Light Connections 214 */
  connect(Light_Driver_214.hPin_L, cable_light_214.pin_p);
  connect(Light_214.p, Light_Driver_214.pin_p);
  connect(Light_214.n, GndDC.p);
  connect(Light_Driver_214.hPin_N, GndAC.pin);
  connect(Light_Driver_214.pin_n, GndDC.p);
  connect(cable_light_214.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_214.y, Light_214.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_214.u);
/* Light Connections 213 */
  connect(Light_Driver_213.hPin_L, cable_light_213.pin_p);
  connect(Light_213.p, Light_Driver_213.pin_p);
  connect(Light_213.n, GndDC.p);
  connect(Light_Driver_213.hPin_N, GndAC.pin);
  connect(Light_Driver_213.pin_n, GndDC.p);
  connect(cable_light_213.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_213.y, Light_213.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_213.u);
/* Light Connections 212 */
  connect(Light_Driver_212.hPin_L, cable_light_212.pin_p);
  connect(Light_212.p, Light_Driver_212.pin_p);
  connect(Light_212.n, GndDC.p);
  connect(Light_Driver_212.hPin_N, GndAC.pin);
  connect(Light_Driver_212.pin_n, GndDC.p);
  connect(cable_light_212.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_212.y, Light_212.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_212.u);
/* Light Connections 211 */
  connect(Light_Driver_211.hPin_L, cable_light_211.pin_p);
  connect(Light_211.p, Light_Driver_211.pin_p);
  connect(Light_211.n, GndDC.p);
  connect(Light_Driver_211.hPin_N, GndAC.pin);
  connect(Light_Driver_211.pin_n, GndDC.p);
  connect(cable_light_211.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_211.y, Light_211.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_211.u);
/* Light Connections 210 */
  connect(Light_Driver_210.hPin_L, cable_light_210.pin_p);
  connect(Light_210.p, Light_Driver_210.pin_p);
  connect(Light_210.n, GndDC.p);
  connect(Light_Driver_210.hPin_N, GndAC.pin);
  connect(Light_Driver_210.pin_n, GndDC.p);
  connect(cable_light_210.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_210.y, Light_210.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_210.u);
/* Light Connections 209 */
  connect(Light_Driver_209.hPin_L, cable_light_209.pin_p);
  connect(Light_209.p, Light_Driver_209.pin_p);
  connect(Light_209.n, GndDC.p);
  connect(Light_Driver_209.hPin_N, GndAC.pin);
  connect(Light_Driver_209.pin_n, GndDC.p);
  connect(cable_light_209.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_209.y, Light_209.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_209.u);
/* Light Connections 208 */
  connect(Light_Driver_208.hPin_L, cable_light_208.pin_p);
  connect(Light_208.p, Light_Driver_208.pin_p);
  connect(Light_208.n, GndDC.p);
  connect(Light_Driver_208.hPin_N, GndAC.pin);
  connect(Light_Driver_208.pin_n, GndDC.p);
  connect(cable_light_208.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_208.y, Light_208.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_208.u);
/* Light Connections 207 */
  connect(Light_Driver_207.hPin_L, cable_light_207.pin_p);
  connect(Light_207.p, Light_Driver_207.pin_p);
  connect(Light_207.n, GndDC.p);
  connect(Light_Driver_207.hPin_N, GndAC.pin);
  connect(Light_Driver_207.pin_n, GndDC.p);
  connect(cable_light_207.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_207.y, Light_207.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_207.u);
/* Light Connections 206 */
  connect(Light_Driver_206.hPin_L, cable_light_206.pin_p);
  connect(Light_206.p, Light_Driver_206.pin_p);
  connect(Light_206.n, GndDC.p);
  connect(Light_Driver_206.hPin_N, GndAC.pin);
  connect(Light_Driver_206.pin_n, GndDC.p);
  connect(cable_light_206.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_206.y, Light_206.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_206.u);
/* Light Connections 205 */
  connect(Light_Driver_205.hPin_L, cable_light_205.pin_p);
  connect(Light_205.p, Light_Driver_205.pin_p);
  connect(Light_205.n, GndDC.p);
  connect(Light_Driver_205.hPin_N, GndAC.pin);
  connect(Light_Driver_205.pin_n, GndDC.p);
  connect(cable_light_205.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_205.y, Light_205.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_205.u);
/* Light Connections 195 */
  connect(Light_Driver_195.hPin_L, cable_light_195.pin_p);
  connect(Light_195.p, Light_Driver_195.pin_p);
  connect(Light_195.n, GndDC.p);
  connect(Light_Driver_195.hPin_N, GndAC.pin);
  connect(Light_Driver_195.pin_n, GndDC.p);
  connect(cable_light_195.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_195.y, Light_195.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_195.u);
/* Light Connections 194 */
  connect(Light_Driver_194.hPin_L, cable_light_194.pin_p);
  connect(Light_194.p, Light_Driver_194.pin_p);
  connect(Light_194.n, GndDC.p);
  connect(Light_Driver_194.hPin_N, GndAC.pin);
  connect(Light_Driver_194.pin_n, GndDC.p);
  connect(cable_light_194.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_194.y, Light_194.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_194.u);
/* Light Connections 193 */
  connect(Light_Driver_193.hPin_L, cable_light_193.pin_p);
  connect(Light_193.p, Light_Driver_193.pin_p);
  connect(Light_193.n, GndDC.p);
  connect(Light_Driver_193.hPin_N, GndAC.pin);
  connect(Light_Driver_193.pin_n, GndDC.p);
  connect(cable_light_193.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_193.y, Light_193.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_193.u);
/* Light Connections 192 */
  connect(Light_Driver_192.hPin_L, cable_light_192.pin_p);
  connect(Light_192.p, Light_Driver_192.pin_p);
  connect(Light_192.n, GndDC.p);
  connect(Light_Driver_192.hPin_N, GndAC.pin);
  connect(Light_Driver_192.pin_n, GndDC.p);
  connect(cable_light_192.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_192.y, Light_192.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_192.u);
/* Light Connections 191 */
  connect(Light_Driver_191.hPin_L, cable_light_191.pin_p);
  connect(Light_191.p, Light_Driver_191.pin_p);
  connect(Light_191.n, GndDC.p);
  connect(Light_Driver_191.hPin_N, GndAC.pin);
  connect(Light_Driver_191.pin_n, GndDC.p);
  connect(cable_light_191.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_191.y, Light_191.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_191.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_1C;
