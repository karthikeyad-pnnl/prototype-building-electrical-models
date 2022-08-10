within ;
model Light_Panel_L2_1C
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
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
    tableOnFile=true,
    tableName="L2-Core-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
    tableOnFile=true,
    tableName="L2-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
    tableOnFile=true,
    tableName="L2-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
    tableOnFile=true,
    tableName="L2-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
    tableOnFile=true,
    tableName="L2-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 514 */
  HPF.DC.Variable_DC_Load Light_514;
  HPF.Cables.NEC_CableModel cable_light_514(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_514(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_514(k=31);
  
/* Light Model 513 */
  HPF.DC.Variable_DC_Load Light_513;
  HPF.Cables.NEC_CableModel cable_light_513(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_513(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_513(k=31);
  
/* Light Model 512 */
  HPF.DC.Variable_DC_Load Light_512;
  HPF.Cables.NEC_CableModel cable_light_512(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.91);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_512(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_512(k=31);
  
/* Light Model 511 */
  HPF.DC.Variable_DC_Load Light_511;
  HPF.Cables.NEC_CableModel cable_light_511(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_511(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_511(k=31);
  
/* Light Model 510 */
  HPF.DC.Variable_DC_Load Light_510;
  HPF.Cables.NEC_CableModel cable_light_510(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_510(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_510(k=31);
  
/* Light Model 509 */
  HPF.DC.Variable_DC_Load Light_509;
  HPF.Cables.NEC_CableModel cable_light_509(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_509(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_509(k=31);
  
/* Light Model 508 */
  HPF.DC.Variable_DC_Load Light_508;
  HPF.Cables.NEC_CableModel cable_light_508(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_508(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_508(k=31);
  
/* Light Model 507 */
  HPF.DC.Variable_DC_Load Light_507;
  HPF.Cables.NEC_CableModel cable_light_507(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_507(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_507(k=31);
  
/* Light Model 506 */
  HPF.DC.Variable_DC_Load Light_506;
  HPF.Cables.NEC_CableModel cable_light_506(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_506(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_506(k=31);
  
/* Light Model 505 */
  HPF.DC.Variable_DC_Load Light_505;
  HPF.Cables.NEC_CableModel cable_light_505(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_505(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_505(k=31);
  
/* Light Model 504 */
  HPF.DC.Variable_DC_Load Light_504;
  HPF.Cables.NEC_CableModel cable_light_504(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_504(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_504(k=31);
  
/* Light Model 503 */
  HPF.DC.Variable_DC_Load Light_503;
  HPF.Cables.NEC_CableModel cable_light_503(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_503(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_503(k=31);
  
/* Light Model 502 */
  HPF.DC.Variable_DC_Load Light_502;
  HPF.Cables.NEC_CableModel cable_light_502(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_502(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_502(k=31);
  
/* Light Model 501 */
  HPF.DC.Variable_DC_Load Light_501;
  HPF.Cables.NEC_CableModel cable_light_501(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_501(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_501(k=31);
  
/* Light Model 500 */
  HPF.DC.Variable_DC_Load Light_500;
  HPF.Cables.NEC_CableModel cable_light_500(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_500(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_500(k=31);
  
/* Light Model 499 */
  HPF.DC.Variable_DC_Load Light_499;
  HPF.Cables.NEC_CableModel cable_light_499(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_499(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_499(k=31);
  
/* Light Model 442 */
  HPF.DC.Variable_DC_Load Light_442;
  HPF.Cables.NEC_CableModel cable_light_442(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_442(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_442(k=40);
  
/* Light Model 441 */
  HPF.DC.Variable_DC_Load Light_441;
  HPF.Cables.NEC_CableModel cable_light_441(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_441(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_441(k=40);
  
/* Light Model 440 */
  HPF.DC.Variable_DC_Load Light_440;
  HPF.Cables.NEC_CableModel cable_light_440(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_440(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_440(k=28);
  
/* Light Model 439 */
  HPF.DC.Variable_DC_Load Light_439;
  HPF.Cables.NEC_CableModel cable_light_439(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_439(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_439(k=28);
  
/* Light Model 438 */
  HPF.DC.Variable_DC_Load Light_438;
  HPF.Cables.NEC_CableModel cable_light_438(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_438(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_438(k=40);
  
/* Light Model 437 */
  HPF.DC.Variable_DC_Load Light_437;
  HPF.Cables.NEC_CableModel cable_light_437(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_437(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_437(k=40);
  
/* Light Model 436 */
  HPF.DC.Variable_DC_Load Light_436;
  HPF.Cables.NEC_CableModel cable_light_436(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=41.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_436(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_436(k=25);
  
/* Light Model 435 */
  HPF.DC.Variable_DC_Load Light_435;
  HPF.Cables.NEC_CableModel cable_light_435(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=40.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_435(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_435(k=25);
  
/* Light Model 434 */
  HPF.DC.Variable_DC_Load Light_434;
  HPF.Cables.NEC_CableModel cable_light_434(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_434(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_434(k=40);
  
/* Light Model 433 */
  HPF.DC.Variable_DC_Load Light_433;
  HPF.Cables.NEC_CableModel cable_light_433(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=42.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_433(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_433(k=40);
  
/* Light Model 432 */
  HPF.DC.Variable_DC_Load Light_432;
  HPF.Cables.NEC_CableModel cable_light_432(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=41.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_432(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_432(k=40);
  
/* Light Model 431 */
  HPF.DC.Variable_DC_Load Light_431;
  HPF.Cables.NEC_CableModel cable_light_431(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.42);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_431(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_431(k=40);
  
/* Light Model 430 */
  HPF.DC.Variable_DC_Load Light_430;
  HPF.Cables.NEC_CableModel cable_light_430(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_430(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_430(k=31);
  
/* Light Model 429 */
  HPF.DC.Variable_DC_Load Light_429;
  HPF.Cables.NEC_CableModel cable_light_429(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_429(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_429(k=31);
  
/* Light Model 428 */
  HPF.DC.Variable_DC_Load Light_428;
  HPF.Cables.NEC_CableModel cable_light_428(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=40.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_428(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_428(k=31);
  
/* Light Model 427 */
  HPF.DC.Variable_DC_Load Light_427;
  HPF.Cables.NEC_CableModel cable_light_427(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=40.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_427(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_427(k=31);
  
/* Light Model 426 */
  HPF.DC.Variable_DC_Load Light_426;
  HPF.Cables.NEC_CableModel cable_light_426(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_426(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_426(k=31);
  
/* Light Model 425 */
  HPF.DC.Variable_DC_Load Light_425;
  HPF.Cables.NEC_CableModel cable_light_425(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_425(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_425(k=31);
  
/* Light Model 424 */
  HPF.DC.Variable_DC_Load Light_424;
  HPF.Cables.NEC_CableModel cable_light_424(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_424(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_424(k=31);
  
/* Light Model 423 */
  HPF.DC.Variable_DC_Load Light_423;
  HPF.Cables.NEC_CableModel cable_light_423(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_423(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_423(k=31);
  
/* Light Model 421 */
  HPF.DC.Variable_DC_Load Light_421;
  HPF.Cables.NEC_CableModel cable_light_421(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_421(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_421(k=31);
  
/* Light Model 420 */
  HPF.DC.Variable_DC_Load Light_420;
  HPF.Cables.NEC_CableModel cable_light_420(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_420(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_420(k=31);
  
/* Light Model 419 */
  HPF.DC.Variable_DC_Load Light_419;
  HPF.Cables.NEC_CableModel cable_light_419(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_419(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_419(k=31);
  
/* Light Model 418 */
  HPF.DC.Variable_DC_Load Light_418;
  HPF.Cables.NEC_CableModel cable_light_418(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_418(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_418(k=31);
  
/* Light Model 416 */
  HPF.DC.Variable_DC_Load Light_416;
  HPF.Cables.NEC_CableModel cable_light_416(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_416(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_416(k=31);
  
/* Light Model 415 */
  HPF.DC.Variable_DC_Load Light_415;
  HPF.Cables.NEC_CableModel cable_light_415(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_415(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_415(k=31);
  
/* Light Model 414 */
  HPF.DC.Variable_DC_Load Light_414;
  HPF.Cables.NEC_CableModel cable_light_414(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_414(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_414(k=31);
  
/* Light Model 413 */
  HPF.DC.Variable_DC_Load Light_413;
  HPF.Cables.NEC_CableModel cable_light_413(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_413(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_413(k=31);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 514 */
  connect(Light_Driver_514.hPin_L, cable_light_514.pin_p);
  connect(Light_514.p, Light_Driver_514.pin_p);
  connect(Light_514.n, GndDC.p);
  connect(Light_Driver_514.hPin_N, GndAC.pin);
  connect(Light_Driver_514.pin_n, GndDC.p);
  connect(cable_light_514.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_514.y, Light_514.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_514.u);
/* Light Connections 513 */
  connect(Light_Driver_513.hPin_L, cable_light_513.pin_p);
  connect(Light_513.p, Light_Driver_513.pin_p);
  connect(Light_513.n, GndDC.p);
  connect(Light_Driver_513.hPin_N, GndAC.pin);
  connect(Light_Driver_513.pin_n, GndDC.p);
  connect(cable_light_513.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_513.y, Light_513.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_513.u);
/* Light Connections 512 */
  connect(Light_Driver_512.hPin_L, cable_light_512.pin_p);
  connect(Light_512.p, Light_Driver_512.pin_p);
  connect(Light_512.n, GndDC.p);
  connect(Light_Driver_512.hPin_N, GndAC.pin);
  connect(Light_Driver_512.pin_n, GndDC.p);
  connect(cable_light_512.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_512.y, Light_512.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_512.u);
/* Light Connections 511 */
  connect(Light_Driver_511.hPin_L, cable_light_511.pin_p);
  connect(Light_511.p, Light_Driver_511.pin_p);
  connect(Light_511.n, GndDC.p);
  connect(Light_Driver_511.hPin_N, GndAC.pin);
  connect(Light_Driver_511.pin_n, GndDC.p);
  connect(cable_light_511.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_511.y, Light_511.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_511.u);
/* Light Connections 510 */
  connect(Light_Driver_510.hPin_L, cable_light_510.pin_p);
  connect(Light_510.p, Light_Driver_510.pin_p);
  connect(Light_510.n, GndDC.p);
  connect(Light_Driver_510.hPin_N, GndAC.pin);
  connect(Light_Driver_510.pin_n, GndDC.p);
  connect(cable_light_510.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_510.y, Light_510.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_510.u);
/* Light Connections 509 */
  connect(Light_Driver_509.hPin_L, cable_light_509.pin_p);
  connect(Light_509.p, Light_Driver_509.pin_p);
  connect(Light_509.n, GndDC.p);
  connect(Light_Driver_509.hPin_N, GndAC.pin);
  connect(Light_Driver_509.pin_n, GndDC.p);
  connect(cable_light_509.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_509.y, Light_509.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_509.u);
/* Light Connections 508 */
  connect(Light_Driver_508.hPin_L, cable_light_508.pin_p);
  connect(Light_508.p, Light_Driver_508.pin_p);
  connect(Light_508.n, GndDC.p);
  connect(Light_Driver_508.hPin_N, GndAC.pin);
  connect(Light_Driver_508.pin_n, GndDC.p);
  connect(cable_light_508.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_508.y, Light_508.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_508.u);
/* Light Connections 507 */
  connect(Light_Driver_507.hPin_L, cable_light_507.pin_p);
  connect(Light_507.p, Light_Driver_507.pin_p);
  connect(Light_507.n, GndDC.p);
  connect(Light_Driver_507.hPin_N, GndAC.pin);
  connect(Light_Driver_507.pin_n, GndDC.p);
  connect(cable_light_507.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_507.y, Light_507.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_507.u);
/* Light Connections 506 */
  connect(Light_Driver_506.hPin_L, cable_light_506.pin_p);
  connect(Light_506.p, Light_Driver_506.pin_p);
  connect(Light_506.n, GndDC.p);
  connect(Light_Driver_506.hPin_N, GndAC.pin);
  connect(Light_Driver_506.pin_n, GndDC.p);
  connect(cable_light_506.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_506.y, Light_506.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_506.u);
/* Light Connections 505 */
  connect(Light_Driver_505.hPin_L, cable_light_505.pin_p);
  connect(Light_505.p, Light_Driver_505.pin_p);
  connect(Light_505.n, GndDC.p);
  connect(Light_Driver_505.hPin_N, GndAC.pin);
  connect(Light_Driver_505.pin_n, GndDC.p);
  connect(cable_light_505.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_505.y, Light_505.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_505.u);
/* Light Connections 504 */
  connect(Light_Driver_504.hPin_L, cable_light_504.pin_p);
  connect(Light_504.p, Light_Driver_504.pin_p);
  connect(Light_504.n, GndDC.p);
  connect(Light_Driver_504.hPin_N, GndAC.pin);
  connect(Light_Driver_504.pin_n, GndDC.p);
  connect(cable_light_504.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_504.y, Light_504.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_504.u);
/* Light Connections 503 */
  connect(Light_Driver_503.hPin_L, cable_light_503.pin_p);
  connect(Light_503.p, Light_Driver_503.pin_p);
  connect(Light_503.n, GndDC.p);
  connect(Light_Driver_503.hPin_N, GndAC.pin);
  connect(Light_Driver_503.pin_n, GndDC.p);
  connect(cable_light_503.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_503.y, Light_503.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_503.u);
/* Light Connections 502 */
  connect(Light_Driver_502.hPin_L, cable_light_502.pin_p);
  connect(Light_502.p, Light_Driver_502.pin_p);
  connect(Light_502.n, GndDC.p);
  connect(Light_Driver_502.hPin_N, GndAC.pin);
  connect(Light_Driver_502.pin_n, GndDC.p);
  connect(cable_light_502.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_502.y, Light_502.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_502.u);
/* Light Connections 501 */
  connect(Light_Driver_501.hPin_L, cable_light_501.pin_p);
  connect(Light_501.p, Light_Driver_501.pin_p);
  connect(Light_501.n, GndDC.p);
  connect(Light_Driver_501.hPin_N, GndAC.pin);
  connect(Light_Driver_501.pin_n, GndDC.p);
  connect(cable_light_501.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_501.y, Light_501.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_501.u);
/* Light Connections 500 */
  connect(Light_Driver_500.hPin_L, cable_light_500.pin_p);
  connect(Light_500.p, Light_Driver_500.pin_p);
  connect(Light_500.n, GndDC.p);
  connect(Light_Driver_500.hPin_N, GndAC.pin);
  connect(Light_Driver_500.pin_n, GndDC.p);
  connect(cable_light_500.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_500.y, Light_500.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_500.u);
/* Light Connections 499 */
  connect(Light_Driver_499.hPin_L, cable_light_499.pin_p);
  connect(Light_499.p, Light_Driver_499.pin_p);
  connect(Light_499.n, GndDC.p);
  connect(Light_Driver_499.hPin_N, GndAC.pin);
  connect(Light_Driver_499.pin_n, GndDC.p);
  connect(cable_light_499.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_499.y, Light_499.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_499.u);
/* Light Connections 442 */
  connect(Light_Driver_442.hPin_L, cable_light_442.pin_p);
  connect(Light_442.p, Light_Driver_442.pin_p);
  connect(Light_442.n, GndDC.p);
  connect(Light_Driver_442.hPin_N, GndAC.pin);
  connect(Light_Driver_442.pin_n, GndDC.p);
  connect(cable_light_442.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_442.y, Light_442.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_442.u);
/* Light Connections 441 */
  connect(Light_Driver_441.hPin_L, cable_light_441.pin_p);
  connect(Light_441.p, Light_Driver_441.pin_p);
  connect(Light_441.n, GndDC.p);
  connect(Light_Driver_441.hPin_N, GndAC.pin);
  connect(Light_Driver_441.pin_n, GndDC.p);
  connect(cable_light_441.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_441.y, Light_441.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_441.u);
/* Light Connections 440 */
  connect(Light_Driver_440.hPin_L, cable_light_440.pin_p);
  connect(Light_440.p, Light_Driver_440.pin_p);
  connect(Light_440.n, GndDC.p);
  connect(Light_Driver_440.hPin_N, GndAC.pin);
  connect(Light_Driver_440.pin_n, GndDC.p);
  connect(cable_light_440.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_440.y, Light_440.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_440.u);
/* Light Connections 439 */
  connect(Light_Driver_439.hPin_L, cable_light_439.pin_p);
  connect(Light_439.p, Light_Driver_439.pin_p);
  connect(Light_439.n, GndDC.p);
  connect(Light_Driver_439.hPin_N, GndAC.pin);
  connect(Light_Driver_439.pin_n, GndDC.p);
  connect(cable_light_439.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_439.y, Light_439.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_439.u);
/* Light Connections 438 */
  connect(Light_Driver_438.hPin_L, cable_light_438.pin_p);
  connect(Light_438.p, Light_Driver_438.pin_p);
  connect(Light_438.n, GndDC.p);
  connect(Light_Driver_438.hPin_N, GndAC.pin);
  connect(Light_Driver_438.pin_n, GndDC.p);
  connect(cable_light_438.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_438.y, Light_438.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_438.u);
/* Light Connections 437 */
  connect(Light_Driver_437.hPin_L, cable_light_437.pin_p);
  connect(Light_437.p, Light_Driver_437.pin_p);
  connect(Light_437.n, GndDC.p);
  connect(Light_Driver_437.hPin_N, GndAC.pin);
  connect(Light_Driver_437.pin_n, GndDC.p);
  connect(cable_light_437.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_437.y, Light_437.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_437.u);
/* Light Connections 436 */
  connect(Light_Driver_436.hPin_L, cable_light_436.pin_p);
  connect(Light_436.p, Light_Driver_436.pin_p);
  connect(Light_436.n, GndDC.p);
  connect(Light_Driver_436.hPin_N, GndAC.pin);
  connect(Light_Driver_436.pin_n, GndDC.p);
  connect(cable_light_436.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_436.y, Light_436.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_436.u);
/* Light Connections 435 */
  connect(Light_Driver_435.hPin_L, cable_light_435.pin_p);
  connect(Light_435.p, Light_Driver_435.pin_p);
  connect(Light_435.n, GndDC.p);
  connect(Light_Driver_435.hPin_N, GndAC.pin);
  connect(Light_Driver_435.pin_n, GndDC.p);
  connect(cable_light_435.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_435.y, Light_435.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_435.u);
/* Light Connections 434 */
  connect(Light_Driver_434.hPin_L, cable_light_434.pin_p);
  connect(Light_434.p, Light_Driver_434.pin_p);
  connect(Light_434.n, GndDC.p);
  connect(Light_Driver_434.hPin_N, GndAC.pin);
  connect(Light_Driver_434.pin_n, GndDC.p);
  connect(cable_light_434.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_434.y, Light_434.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_434.u);
/* Light Connections 433 */
  connect(Light_Driver_433.hPin_L, cable_light_433.pin_p);
  connect(Light_433.p, Light_Driver_433.pin_p);
  connect(Light_433.n, GndDC.p);
  connect(Light_Driver_433.hPin_N, GndAC.pin);
  connect(Light_Driver_433.pin_n, GndDC.p);
  connect(cable_light_433.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_433.y, Light_433.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_433.u);
/* Light Connections 432 */
  connect(Light_Driver_432.hPin_L, cable_light_432.pin_p);
  connect(Light_432.p, Light_Driver_432.pin_p);
  connect(Light_432.n, GndDC.p);
  connect(Light_Driver_432.hPin_N, GndAC.pin);
  connect(Light_Driver_432.pin_n, GndDC.p);
  connect(cable_light_432.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_432.y, Light_432.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_432.u);
/* Light Connections 431 */
  connect(Light_Driver_431.hPin_L, cable_light_431.pin_p);
  connect(Light_431.p, Light_Driver_431.pin_p);
  connect(Light_431.n, GndDC.p);
  connect(Light_Driver_431.hPin_N, GndAC.pin);
  connect(Light_Driver_431.pin_n, GndDC.p);
  connect(cable_light_431.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_431.y, Light_431.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_431.u);
/* Light Connections 430 */
  connect(Light_Driver_430.hPin_L, cable_light_430.pin_p);
  connect(Light_430.p, Light_Driver_430.pin_p);
  connect(Light_430.n, GndDC.p);
  connect(Light_Driver_430.hPin_N, GndAC.pin);
  connect(Light_Driver_430.pin_n, GndDC.p);
  connect(cable_light_430.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_430.y, Light_430.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_430.u);
/* Light Connections 429 */
  connect(Light_Driver_429.hPin_L, cable_light_429.pin_p);
  connect(Light_429.p, Light_Driver_429.pin_p);
  connect(Light_429.n, GndDC.p);
  connect(Light_Driver_429.hPin_N, GndAC.pin);
  connect(Light_Driver_429.pin_n, GndDC.p);
  connect(cable_light_429.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_429.y, Light_429.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_429.u);
/* Light Connections 428 */
  connect(Light_Driver_428.hPin_L, cable_light_428.pin_p);
  connect(Light_428.p, Light_Driver_428.pin_p);
  connect(Light_428.n, GndDC.p);
  connect(Light_Driver_428.hPin_N, GndAC.pin);
  connect(Light_Driver_428.pin_n, GndDC.p);
  connect(cable_light_428.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_428.y, Light_428.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_428.u);
/* Light Connections 427 */
  connect(Light_Driver_427.hPin_L, cable_light_427.pin_p);
  connect(Light_427.p, Light_Driver_427.pin_p);
  connect(Light_427.n, GndDC.p);
  connect(Light_Driver_427.hPin_N, GndAC.pin);
  connect(Light_Driver_427.pin_n, GndDC.p);
  connect(cable_light_427.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_427.y, Light_427.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_427.u);
/* Light Connections 426 */
  connect(Light_Driver_426.hPin_L, cable_light_426.pin_p);
  connect(Light_426.p, Light_Driver_426.pin_p);
  connect(Light_426.n, GndDC.p);
  connect(Light_Driver_426.hPin_N, GndAC.pin);
  connect(Light_Driver_426.pin_n, GndDC.p);
  connect(cable_light_426.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_426.y, Light_426.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_426.u);
/* Light Connections 425 */
  connect(Light_Driver_425.hPin_L, cable_light_425.pin_p);
  connect(Light_425.p, Light_Driver_425.pin_p);
  connect(Light_425.n, GndDC.p);
  connect(Light_Driver_425.hPin_N, GndAC.pin);
  connect(Light_Driver_425.pin_n, GndDC.p);
  connect(cable_light_425.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_425.y, Light_425.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_425.u);
/* Light Connections 424 */
  connect(Light_Driver_424.hPin_L, cable_light_424.pin_p);
  connect(Light_424.p, Light_Driver_424.pin_p);
  connect(Light_424.n, GndDC.p);
  connect(Light_Driver_424.hPin_N, GndAC.pin);
  connect(Light_Driver_424.pin_n, GndDC.p);
  connect(cable_light_424.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_424.y, Light_424.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_424.u);
/* Light Connections 423 */
  connect(Light_Driver_423.hPin_L, cable_light_423.pin_p);
  connect(Light_423.p, Light_Driver_423.pin_p);
  connect(Light_423.n, GndDC.p);
  connect(Light_Driver_423.hPin_N, GndAC.pin);
  connect(Light_Driver_423.pin_n, GndDC.p);
  connect(cable_light_423.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_423.y, Light_423.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_423.u);
/* Light Connections 421 */
  connect(Light_Driver_421.hPin_L, cable_light_421.pin_p);
  connect(Light_421.p, Light_Driver_421.pin_p);
  connect(Light_421.n, GndDC.p);
  connect(Light_Driver_421.hPin_N, GndAC.pin);
  connect(Light_Driver_421.pin_n, GndDC.p);
  connect(cable_light_421.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_421.y, Light_421.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_421.u);
/* Light Connections 420 */
  connect(Light_Driver_420.hPin_L, cable_light_420.pin_p);
  connect(Light_420.p, Light_Driver_420.pin_p);
  connect(Light_420.n, GndDC.p);
  connect(Light_Driver_420.hPin_N, GndAC.pin);
  connect(Light_Driver_420.pin_n, GndDC.p);
  connect(cable_light_420.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_420.y, Light_420.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_420.u);
/* Light Connections 419 */
  connect(Light_Driver_419.hPin_L, cable_light_419.pin_p);
  connect(Light_419.p, Light_Driver_419.pin_p);
  connect(Light_419.n, GndDC.p);
  connect(Light_Driver_419.hPin_N, GndAC.pin);
  connect(Light_Driver_419.pin_n, GndDC.p);
  connect(cable_light_419.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_419.y, Light_419.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_419.u);
/* Light Connections 418 */
  connect(Light_Driver_418.hPin_L, cable_light_418.pin_p);
  connect(Light_418.p, Light_Driver_418.pin_p);
  connect(Light_418.n, GndDC.p);
  connect(Light_Driver_418.hPin_N, GndAC.pin);
  connect(Light_Driver_418.pin_n, GndDC.p);
  connect(cable_light_418.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_418.y, Light_418.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_418.u);
/* Light Connections 416 */
  connect(Light_Driver_416.hPin_L, cable_light_416.pin_p);
  connect(Light_416.p, Light_Driver_416.pin_p);
  connect(Light_416.n, GndDC.p);
  connect(Light_Driver_416.hPin_N, GndAC.pin);
  connect(Light_Driver_416.pin_n, GndDC.p);
  connect(cable_light_416.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_416.y, Light_416.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_416.u);
/* Light Connections 415 */
  connect(Light_Driver_415.hPin_L, cable_light_415.pin_p);
  connect(Light_415.p, Light_Driver_415.pin_p);
  connect(Light_415.n, GndDC.p);
  connect(Light_Driver_415.hPin_N, GndAC.pin);
  connect(Light_Driver_415.pin_n, GndDC.p);
  connect(cable_light_415.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_415.y, Light_415.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_415.u);
/* Light Connections 414 */
  connect(Light_Driver_414.hPin_L, cable_light_414.pin_p);
  connect(Light_414.p, Light_Driver_414.pin_p);
  connect(Light_414.n, GndDC.p);
  connect(Light_Driver_414.hPin_N, GndAC.pin);
  connect(Light_Driver_414.pin_n, GndDC.p);
  connect(cable_light_414.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_414.y, Light_414.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_414.u);
/* Light Connections 413 */
  connect(Light_Driver_413.hPin_L, cable_light_413.pin_p);
  connect(Light_413.p, Light_Driver_413.pin_p);
  connect(Light_413.n, GndDC.p);
  connect(Light_Driver_413.hPin_N, GndAC.pin);
  connect(Light_Driver_413.pin_n, GndDC.p);
  connect(cable_light_413.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_413.y, Light_413.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_413.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_1C;
