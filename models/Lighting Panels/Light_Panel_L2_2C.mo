within ;
model Light_Panel_L2_2C
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

  
/* Light Model 556 */
  HPF.DC.Variable_DC_Load Light_556;
  HPF.Cables.NEC_CableModel cable_light_556(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_556(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_556(k=25);
  
/* Light Model 555 */
  HPF.DC.Variable_DC_Load Light_555;
  HPF.Cables.NEC_CableModel cable_light_555(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_555(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_555(k=25);
  
/* Light Model 554 */
  HPF.DC.Variable_DC_Load Light_554;
  HPF.Cables.NEC_CableModel cable_light_554(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_554(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_554(k=25);
  
/* Light Model 553 */
  HPF.DC.Variable_DC_Load Light_553;
  HPF.Cables.NEC_CableModel cable_light_553(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_553(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_553(k=25);
  
/* Light Model 552 */
  HPF.DC.Variable_DC_Load Light_552;
  HPF.Cables.NEC_CableModel cable_light_552(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_552(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_552(k=25);
  
/* Light Model 551 */
  HPF.DC.Variable_DC_Load Light_551;
  HPF.Cables.NEC_CableModel cable_light_551(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_551(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_551(k=25);
  
/* Light Model 550 */
  HPF.DC.Variable_DC_Load Light_550;
  HPF.Cables.NEC_CableModel cable_light_550(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_550(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_550(k=25);
  
/* Light Model 549 */
  HPF.DC.Variable_DC_Load Light_549;
  HPF.Cables.NEC_CableModel cable_light_549(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_549(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_549(k=25);
  
/* Light Model 548 */
  HPF.DC.Variable_DC_Load Light_548;
  HPF.Cables.NEC_CableModel cable_light_548(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_548(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_548(k=25);
  
/* Light Model 547 */
  HPF.DC.Variable_DC_Load Light_547;
  HPF.Cables.NEC_CableModel cable_light_547(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_547(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_547(k=25);
  
/* Light Model 545 */
  HPF.DC.Variable_DC_Load Light_545;
  HPF.Cables.NEC_CableModel cable_light_545(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_545(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_545(k=42);
  
/* Light Model 534 */
  HPF.DC.Variable_DC_Load Light_534;
  HPF.Cables.NEC_CableModel cable_light_534(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_534(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_534(k=31);
  
/* Light Model 529 */
  HPF.DC.Variable_DC_Load Light_529;
  HPF.Cables.NEC_CableModel cable_light_529(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.49);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_529(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_529(k=31);
  
/* Light Model 524 */
  HPF.DC.Variable_DC_Load Light_524;
  HPF.Cables.NEC_CableModel cable_light_524(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_524(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_524(k=31);
  
/* Light Model 523 */
  HPF.DC.Variable_DC_Load Light_523;
  HPF.Cables.NEC_CableModel cable_light_523(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_523(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_523(k=31);
  
/* Light Model 522 */
  HPF.DC.Variable_DC_Load Light_522;
  HPF.Cables.NEC_CableModel cable_light_522(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_522(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_522(k=31);
  
/* Light Model 521 */
  HPF.DC.Variable_DC_Load Light_521;
  HPF.Cables.NEC_CableModel cable_light_521(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_521(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_521(k=31);
  
/* Light Model 520 */
  HPF.DC.Variable_DC_Load Light_520;
  HPF.Cables.NEC_CableModel cable_light_520(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.53);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_520(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_520(k=31);
  
/* Light Model 519 */
  HPF.DC.Variable_DC_Load Light_519;
  HPF.Cables.NEC_CableModel cable_light_519(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_519(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_519(k=31);
  
/* Light Model 518 */
  HPF.DC.Variable_DC_Load Light_518;
  HPF.Cables.NEC_CableModel cable_light_518(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_518(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_518(k=31);
  
/* Light Model 517 */
  HPF.DC.Variable_DC_Load Light_517;
  HPF.Cables.NEC_CableModel cable_light_517(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_517(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_517(k=31);
  
/* Light Model 516 */
  HPF.DC.Variable_DC_Load Light_516;
  HPF.Cables.NEC_CableModel cable_light_516(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_516(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_516(k=31);
  
/* Light Model 515 */
  HPF.DC.Variable_DC_Load Light_515;
  HPF.Cables.NEC_CableModel cable_light_515(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_515(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_515(k=31);
  
/* Light Model 366 */
  HPF.DC.Variable_DC_Load Light_366;
  HPF.Cables.NEC_CableModel cable_light_366(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_366(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_366(k=31);
  
/* Light Model 365 */
  HPF.DC.Variable_DC_Load Light_365;
  HPF.Cables.NEC_CableModel cable_light_365(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_365(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_365(k=31);
  
/* Light Model 364 */
  HPF.DC.Variable_DC_Load Light_364;
  HPF.Cables.NEC_CableModel cable_light_364(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_364(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_364(k=31);
  
/* Light Model 363 */
  HPF.DC.Variable_DC_Load Light_363;
  HPF.Cables.NEC_CableModel cable_light_363(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_363(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_363(k=31);
  
/* Light Model 362 */
  HPF.DC.Variable_DC_Load Light_362;
  HPF.Cables.NEC_CableModel cable_light_362(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_362(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_362(k=31);
  
/* Light Model 361 */
  HPF.DC.Variable_DC_Load Light_361;
  HPF.Cables.NEC_CableModel cable_light_361(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_361(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_361(k=31);
  
/* Light Model 360 */
  HPF.DC.Variable_DC_Load Light_360;
  HPF.Cables.NEC_CableModel cable_light_360(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_360(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_360(k=31);
  
/* Light Model 359 */
  HPF.DC.Variable_DC_Load Light_359;
  HPF.Cables.NEC_CableModel cable_light_359(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_359(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_359(k=31);
  
/* Light Model 358 */
  HPF.DC.Variable_DC_Load Light_358;
  HPF.Cables.NEC_CableModel cable_light_358(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_358(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_358(k=31);
  
/* Light Model 357 */
  HPF.DC.Variable_DC_Load Light_357;
  HPF.Cables.NEC_CableModel cable_light_357(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_357(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_357(k=31);
  
/* Light Model 356 */
  HPF.DC.Variable_DC_Load Light_356;
  HPF.Cables.NEC_CableModel cable_light_356(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.42);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_356(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_356(k=31);
  
/* Light Model 355 */
  HPF.DC.Variable_DC_Load Light_355;
  HPF.Cables.NEC_CableModel cable_light_355(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_355(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_355(k=31);
  
/* Light Model 316 */
  HPF.DC.Variable_DC_Load Light_316;
  HPF.Cables.NEC_CableModel cable_light_316(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_316(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_316(k=34);
  
/* Light Model 315 */
  HPF.DC.Variable_DC_Load Light_315;
  HPF.Cables.NEC_CableModel cable_light_315(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_315(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_315(k=34);
  
/* Light Model 314 */
  HPF.DC.Variable_DC_Load Light_314;
  HPF.Cables.NEC_CableModel cable_light_314(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_314(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_314(k=34);
  
/* Light Model 313 */
  HPF.DC.Variable_DC_Load Light_313;
  HPF.Cables.NEC_CableModel cable_light_313(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_313(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_313(k=34);
  
/* Light Model 312 */
  HPF.DC.Variable_DC_Load Light_312;
  HPF.Cables.NEC_CableModel cable_light_312(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_312(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_312(k=34);
  
/* Light Model 311 */
  HPF.DC.Variable_DC_Load Light_311;
  HPF.Cables.NEC_CableModel cable_light_311(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_311(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_311(k=34);
  
/* Light Model 306 */
  HPF.DC.Variable_DC_Load Light_306;
  HPF.Cables.NEC_CableModel cable_light_306(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=3.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_306(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_306(k=28);
  
/* Light Model 305 */
  HPF.DC.Variable_DC_Load Light_305;
  HPF.Cables.NEC_CableModel cable_light_305(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_305(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_305(k=28);
  
/* Light Model 304 */
  HPF.DC.Variable_DC_Load Light_304;
  HPF.Cables.NEC_CableModel cable_light_304(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_304(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_304(k=28);
  
/* Light Model 303 */
  HPF.DC.Variable_DC_Load Light_303;
  HPF.Cables.NEC_CableModel cable_light_303(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_303(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_303(k=28);
  
/* Light Model 301 */
  HPF.DC.Variable_DC_Load Light_301;
  HPF.Cables.NEC_CableModel cable_light_301(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_301(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_301(k=22);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 556 */
  connect(Light_Driver_556.hPin_L, cable_light_556.pin_p);
  connect(Light_556.p, Light_Driver_556.pin_p);
  connect(Light_556.n, GndDC.p);
  connect(Light_Driver_556.hPin_N, GndAC.pin);
  connect(Light_Driver_556.pin_n, GndDC.p);
  connect(cable_light_556.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_556.y, Light_556.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_556.u);
/* Light Connections 555 */
  connect(Light_Driver_555.hPin_L, cable_light_555.pin_p);
  connect(Light_555.p, Light_Driver_555.pin_p);
  connect(Light_555.n, GndDC.p);
  connect(Light_Driver_555.hPin_N, GndAC.pin);
  connect(Light_Driver_555.pin_n, GndDC.p);
  connect(cable_light_555.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_555.y, Light_555.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_555.u);
/* Light Connections 554 */
  connect(Light_Driver_554.hPin_L, cable_light_554.pin_p);
  connect(Light_554.p, Light_Driver_554.pin_p);
  connect(Light_554.n, GndDC.p);
  connect(Light_Driver_554.hPin_N, GndAC.pin);
  connect(Light_Driver_554.pin_n, GndDC.p);
  connect(cable_light_554.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_554.y, Light_554.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_554.u);
/* Light Connections 553 */
  connect(Light_Driver_553.hPin_L, cable_light_553.pin_p);
  connect(Light_553.p, Light_Driver_553.pin_p);
  connect(Light_553.n, GndDC.p);
  connect(Light_Driver_553.hPin_N, GndAC.pin);
  connect(Light_Driver_553.pin_n, GndDC.p);
  connect(cable_light_553.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_553.y, Light_553.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_553.u);
/* Light Connections 552 */
  connect(Light_Driver_552.hPin_L, cable_light_552.pin_p);
  connect(Light_552.p, Light_Driver_552.pin_p);
  connect(Light_552.n, GndDC.p);
  connect(Light_Driver_552.hPin_N, GndAC.pin);
  connect(Light_Driver_552.pin_n, GndDC.p);
  connect(cable_light_552.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_552.y, Light_552.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_552.u);
/* Light Connections 551 */
  connect(Light_Driver_551.hPin_L, cable_light_551.pin_p);
  connect(Light_551.p, Light_Driver_551.pin_p);
  connect(Light_551.n, GndDC.p);
  connect(Light_Driver_551.hPin_N, GndAC.pin);
  connect(Light_Driver_551.pin_n, GndDC.p);
  connect(cable_light_551.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_551.y, Light_551.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_551.u);
/* Light Connections 550 */
  connect(Light_Driver_550.hPin_L, cable_light_550.pin_p);
  connect(Light_550.p, Light_Driver_550.pin_p);
  connect(Light_550.n, GndDC.p);
  connect(Light_Driver_550.hPin_N, GndAC.pin);
  connect(Light_Driver_550.pin_n, GndDC.p);
  connect(cable_light_550.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_550.y, Light_550.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_550.u);
/* Light Connections 549 */
  connect(Light_Driver_549.hPin_L, cable_light_549.pin_p);
  connect(Light_549.p, Light_Driver_549.pin_p);
  connect(Light_549.n, GndDC.p);
  connect(Light_Driver_549.hPin_N, GndAC.pin);
  connect(Light_Driver_549.pin_n, GndDC.p);
  connect(cable_light_549.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_549.y, Light_549.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_549.u);
/* Light Connections 548 */
  connect(Light_Driver_548.hPin_L, cable_light_548.pin_p);
  connect(Light_548.p, Light_Driver_548.pin_p);
  connect(Light_548.n, GndDC.p);
  connect(Light_Driver_548.hPin_N, GndAC.pin);
  connect(Light_Driver_548.pin_n, GndDC.p);
  connect(cable_light_548.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_548.y, Light_548.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_548.u);
/* Light Connections 547 */
  connect(Light_Driver_547.hPin_L, cable_light_547.pin_p);
  connect(Light_547.p, Light_Driver_547.pin_p);
  connect(Light_547.n, GndDC.p);
  connect(Light_Driver_547.hPin_N, GndAC.pin);
  connect(Light_Driver_547.pin_n, GndDC.p);
  connect(cable_light_547.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_547.y, Light_547.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_547.u);
/* Light Connections 545 */
  connect(Light_Driver_545.hPin_L, cable_light_545.pin_p);
  connect(Light_545.p, Light_Driver_545.pin_p);
  connect(Light_545.n, GndDC.p);
  connect(Light_Driver_545.hPin_N, GndAC.pin);
  connect(Light_Driver_545.pin_n, GndDC.p);
  connect(cable_light_545.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_545.y, Light_545.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_545.u);
/* Light Connections 534 */
  connect(Light_Driver_534.hPin_L, cable_light_534.pin_p);
  connect(Light_534.p, Light_Driver_534.pin_p);
  connect(Light_534.n, GndDC.p);
  connect(Light_Driver_534.hPin_N, GndAC.pin);
  connect(Light_Driver_534.pin_n, GndDC.p);
  connect(cable_light_534.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_534.y, Light_534.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_534.u);
/* Light Connections 529 */
  connect(Light_Driver_529.hPin_L, cable_light_529.pin_p);
  connect(Light_529.p, Light_Driver_529.pin_p);
  connect(Light_529.n, GndDC.p);
  connect(Light_Driver_529.hPin_N, GndAC.pin);
  connect(Light_Driver_529.pin_n, GndDC.p);
  connect(cable_light_529.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_529.y, Light_529.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_529.u);
/* Light Connections 524 */
  connect(Light_Driver_524.hPin_L, cable_light_524.pin_p);
  connect(Light_524.p, Light_Driver_524.pin_p);
  connect(Light_524.n, GndDC.p);
  connect(Light_Driver_524.hPin_N, GndAC.pin);
  connect(Light_Driver_524.pin_n, GndDC.p);
  connect(cable_light_524.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_524.y, Light_524.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_524.u);
/* Light Connections 523 */
  connect(Light_Driver_523.hPin_L, cable_light_523.pin_p);
  connect(Light_523.p, Light_Driver_523.pin_p);
  connect(Light_523.n, GndDC.p);
  connect(Light_Driver_523.hPin_N, GndAC.pin);
  connect(Light_Driver_523.pin_n, GndDC.p);
  connect(cable_light_523.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_523.y, Light_523.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_523.u);
/* Light Connections 522 */
  connect(Light_Driver_522.hPin_L, cable_light_522.pin_p);
  connect(Light_522.p, Light_Driver_522.pin_p);
  connect(Light_522.n, GndDC.p);
  connect(Light_Driver_522.hPin_N, GndAC.pin);
  connect(Light_Driver_522.pin_n, GndDC.p);
  connect(cable_light_522.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_522.y, Light_522.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_522.u);
/* Light Connections 521 */
  connect(Light_Driver_521.hPin_L, cable_light_521.pin_p);
  connect(Light_521.p, Light_Driver_521.pin_p);
  connect(Light_521.n, GndDC.p);
  connect(Light_Driver_521.hPin_N, GndAC.pin);
  connect(Light_Driver_521.pin_n, GndDC.p);
  connect(cable_light_521.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_521.y, Light_521.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_521.u);
/* Light Connections 520 */
  connect(Light_Driver_520.hPin_L, cable_light_520.pin_p);
  connect(Light_520.p, Light_Driver_520.pin_p);
  connect(Light_520.n, GndDC.p);
  connect(Light_Driver_520.hPin_N, GndAC.pin);
  connect(Light_Driver_520.pin_n, GndDC.p);
  connect(cable_light_520.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_520.y, Light_520.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_520.u);
/* Light Connections 519 */
  connect(Light_Driver_519.hPin_L, cable_light_519.pin_p);
  connect(Light_519.p, Light_Driver_519.pin_p);
  connect(Light_519.n, GndDC.p);
  connect(Light_Driver_519.hPin_N, GndAC.pin);
  connect(Light_Driver_519.pin_n, GndDC.p);
  connect(cable_light_519.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_519.y, Light_519.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_519.u);
/* Light Connections 518 */
  connect(Light_Driver_518.hPin_L, cable_light_518.pin_p);
  connect(Light_518.p, Light_Driver_518.pin_p);
  connect(Light_518.n, GndDC.p);
  connect(Light_Driver_518.hPin_N, GndAC.pin);
  connect(Light_Driver_518.pin_n, GndDC.p);
  connect(cable_light_518.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_518.y, Light_518.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_518.u);
/* Light Connections 517 */
  connect(Light_Driver_517.hPin_L, cable_light_517.pin_p);
  connect(Light_517.p, Light_Driver_517.pin_p);
  connect(Light_517.n, GndDC.p);
  connect(Light_Driver_517.hPin_N, GndAC.pin);
  connect(Light_Driver_517.pin_n, GndDC.p);
  connect(cable_light_517.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_517.y, Light_517.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_517.u);
/* Light Connections 516 */
  connect(Light_Driver_516.hPin_L, cable_light_516.pin_p);
  connect(Light_516.p, Light_Driver_516.pin_p);
  connect(Light_516.n, GndDC.p);
  connect(Light_Driver_516.hPin_N, GndAC.pin);
  connect(Light_Driver_516.pin_n, GndDC.p);
  connect(cable_light_516.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_516.y, Light_516.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_516.u);
/* Light Connections 515 */
  connect(Light_Driver_515.hPin_L, cable_light_515.pin_p);
  connect(Light_515.p, Light_Driver_515.pin_p);
  connect(Light_515.n, GndDC.p);
  connect(Light_Driver_515.hPin_N, GndAC.pin);
  connect(Light_Driver_515.pin_n, GndDC.p);
  connect(cable_light_515.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_515.y, Light_515.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_515.u);
/* Light Connections 366 */
  connect(Light_Driver_366.hPin_L, cable_light_366.pin_p);
  connect(Light_366.p, Light_Driver_366.pin_p);
  connect(Light_366.n, GndDC.p);
  connect(Light_Driver_366.hPin_N, GndAC.pin);
  connect(Light_Driver_366.pin_n, GndDC.p);
  connect(cable_light_366.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_366.y, Light_366.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_366.u);
/* Light Connections 365 */
  connect(Light_Driver_365.hPin_L, cable_light_365.pin_p);
  connect(Light_365.p, Light_Driver_365.pin_p);
  connect(Light_365.n, GndDC.p);
  connect(Light_Driver_365.hPin_N, GndAC.pin);
  connect(Light_Driver_365.pin_n, GndDC.p);
  connect(cable_light_365.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_365.y, Light_365.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_365.u);
/* Light Connections 364 */
  connect(Light_Driver_364.hPin_L, cable_light_364.pin_p);
  connect(Light_364.p, Light_Driver_364.pin_p);
  connect(Light_364.n, GndDC.p);
  connect(Light_Driver_364.hPin_N, GndAC.pin);
  connect(Light_Driver_364.pin_n, GndDC.p);
  connect(cable_light_364.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_364.y, Light_364.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_364.u);
/* Light Connections 363 */
  connect(Light_Driver_363.hPin_L, cable_light_363.pin_p);
  connect(Light_363.p, Light_Driver_363.pin_p);
  connect(Light_363.n, GndDC.p);
  connect(Light_Driver_363.hPin_N, GndAC.pin);
  connect(Light_Driver_363.pin_n, GndDC.p);
  connect(cable_light_363.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_363.y, Light_363.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_363.u);
/* Light Connections 362 */
  connect(Light_Driver_362.hPin_L, cable_light_362.pin_p);
  connect(Light_362.p, Light_Driver_362.pin_p);
  connect(Light_362.n, GndDC.p);
  connect(Light_Driver_362.hPin_N, GndAC.pin);
  connect(Light_Driver_362.pin_n, GndDC.p);
  connect(cable_light_362.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_362.y, Light_362.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_362.u);
/* Light Connections 361 */
  connect(Light_Driver_361.hPin_L, cable_light_361.pin_p);
  connect(Light_361.p, Light_Driver_361.pin_p);
  connect(Light_361.n, GndDC.p);
  connect(Light_Driver_361.hPin_N, GndAC.pin);
  connect(Light_Driver_361.pin_n, GndDC.p);
  connect(cable_light_361.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_361.y, Light_361.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_361.u);
/* Light Connections 360 */
  connect(Light_Driver_360.hPin_L, cable_light_360.pin_p);
  connect(Light_360.p, Light_Driver_360.pin_p);
  connect(Light_360.n, GndDC.p);
  connect(Light_Driver_360.hPin_N, GndAC.pin);
  connect(Light_Driver_360.pin_n, GndDC.p);
  connect(cable_light_360.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_360.y, Light_360.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_360.u);
/* Light Connections 359 */
  connect(Light_Driver_359.hPin_L, cable_light_359.pin_p);
  connect(Light_359.p, Light_Driver_359.pin_p);
  connect(Light_359.n, GndDC.p);
  connect(Light_Driver_359.hPin_N, GndAC.pin);
  connect(Light_Driver_359.pin_n, GndDC.p);
  connect(cable_light_359.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_359.y, Light_359.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_359.u);
/* Light Connections 358 */
  connect(Light_Driver_358.hPin_L, cable_light_358.pin_p);
  connect(Light_358.p, Light_Driver_358.pin_p);
  connect(Light_358.n, GndDC.p);
  connect(Light_Driver_358.hPin_N, GndAC.pin);
  connect(Light_Driver_358.pin_n, GndDC.p);
  connect(cable_light_358.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_358.y, Light_358.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_358.u);
/* Light Connections 357 */
  connect(Light_Driver_357.hPin_L, cable_light_357.pin_p);
  connect(Light_357.p, Light_Driver_357.pin_p);
  connect(Light_357.n, GndDC.p);
  connect(Light_Driver_357.hPin_N, GndAC.pin);
  connect(Light_Driver_357.pin_n, GndDC.p);
  connect(cable_light_357.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_357.y, Light_357.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_357.u);
/* Light Connections 356 */
  connect(Light_Driver_356.hPin_L, cable_light_356.pin_p);
  connect(Light_356.p, Light_Driver_356.pin_p);
  connect(Light_356.n, GndDC.p);
  connect(Light_Driver_356.hPin_N, GndAC.pin);
  connect(Light_Driver_356.pin_n, GndDC.p);
  connect(cable_light_356.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_356.y, Light_356.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_356.u);
/* Light Connections 355 */
  connect(Light_Driver_355.hPin_L, cable_light_355.pin_p);
  connect(Light_355.p, Light_Driver_355.pin_p);
  connect(Light_355.n, GndDC.p);
  connect(Light_Driver_355.hPin_N, GndAC.pin);
  connect(Light_Driver_355.pin_n, GndDC.p);
  connect(cable_light_355.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_355.y, Light_355.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_355.u);
/* Light Connections 316 */
  connect(Light_Driver_316.hPin_L, cable_light_316.pin_p);
  connect(Light_316.p, Light_Driver_316.pin_p);
  connect(Light_316.n, GndDC.p);
  connect(Light_Driver_316.hPin_N, GndAC.pin);
  connect(Light_Driver_316.pin_n, GndDC.p);
  connect(cable_light_316.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_316.y, Light_316.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_316.u);
/* Light Connections 315 */
  connect(Light_Driver_315.hPin_L, cable_light_315.pin_p);
  connect(Light_315.p, Light_Driver_315.pin_p);
  connect(Light_315.n, GndDC.p);
  connect(Light_Driver_315.hPin_N, GndAC.pin);
  connect(Light_Driver_315.pin_n, GndDC.p);
  connect(cable_light_315.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_315.y, Light_315.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_315.u);
/* Light Connections 314 */
  connect(Light_Driver_314.hPin_L, cable_light_314.pin_p);
  connect(Light_314.p, Light_Driver_314.pin_p);
  connect(Light_314.n, GndDC.p);
  connect(Light_Driver_314.hPin_N, GndAC.pin);
  connect(Light_Driver_314.pin_n, GndDC.p);
  connect(cable_light_314.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_314.y, Light_314.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_314.u);
/* Light Connections 313 */
  connect(Light_Driver_313.hPin_L, cable_light_313.pin_p);
  connect(Light_313.p, Light_Driver_313.pin_p);
  connect(Light_313.n, GndDC.p);
  connect(Light_Driver_313.hPin_N, GndAC.pin);
  connect(Light_Driver_313.pin_n, GndDC.p);
  connect(cable_light_313.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_313.y, Light_313.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_313.u);
/* Light Connections 312 */
  connect(Light_Driver_312.hPin_L, cable_light_312.pin_p);
  connect(Light_312.p, Light_Driver_312.pin_p);
  connect(Light_312.n, GndDC.p);
  connect(Light_Driver_312.hPin_N, GndAC.pin);
  connect(Light_Driver_312.pin_n, GndDC.p);
  connect(cable_light_312.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_312.y, Light_312.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_312.u);
/* Light Connections 311 */
  connect(Light_Driver_311.hPin_L, cable_light_311.pin_p);
  connect(Light_311.p, Light_Driver_311.pin_p);
  connect(Light_311.n, GndDC.p);
  connect(Light_Driver_311.hPin_N, GndAC.pin);
  connect(Light_Driver_311.pin_n, GndDC.p);
  connect(cable_light_311.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_311.y, Light_311.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_311.u);
/* Light Connections 306 */
  connect(Light_Driver_306.hPin_L, cable_light_306.pin_p);
  connect(Light_306.p, Light_Driver_306.pin_p);
  connect(Light_306.n, GndDC.p);
  connect(Light_Driver_306.hPin_N, GndAC.pin);
  connect(Light_Driver_306.pin_n, GndDC.p);
  connect(cable_light_306.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_306.y, Light_306.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_306.u);
/* Light Connections 305 */
  connect(Light_Driver_305.hPin_L, cable_light_305.pin_p);
  connect(Light_305.p, Light_Driver_305.pin_p);
  connect(Light_305.n, GndDC.p);
  connect(Light_Driver_305.hPin_N, GndAC.pin);
  connect(Light_Driver_305.pin_n, GndDC.p);
  connect(cable_light_305.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_305.y, Light_305.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_305.u);
/* Light Connections 304 */
  connect(Light_Driver_304.hPin_L, cable_light_304.pin_p);
  connect(Light_304.p, Light_Driver_304.pin_p);
  connect(Light_304.n, GndDC.p);
  connect(Light_Driver_304.hPin_N, GndAC.pin);
  connect(Light_Driver_304.pin_n, GndDC.p);
  connect(cable_light_304.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_304.y, Light_304.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_304.u);
/* Light Connections 303 */
  connect(Light_Driver_303.hPin_L, cable_light_303.pin_p);
  connect(Light_303.p, Light_Driver_303.pin_p);
  connect(Light_303.n, GndDC.p);
  connect(Light_Driver_303.hPin_N, GndAC.pin);
  connect(Light_Driver_303.pin_n, GndDC.p);
  connect(cable_light_303.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_303.y, Light_303.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_303.u);
/* Light Connections 301 */
  connect(Light_Driver_301.hPin_L, cable_light_301.pin_p);
  connect(Light_301.p, Light_Driver_301.pin_p);
  connect(Light_301.n, GndDC.p);
  connect(Light_Driver_301.hPin_N, GndAC.pin);
  connect(Light_Driver_301.pin_n, GndDC.p);
  connect(cable_light_301.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_301.y, Light_301.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_301.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_2C;
