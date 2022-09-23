within PrototypeBuildingElectricalModels.Subsystems.LightingPanels;
model Light_Panel_L2_1A
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
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
    tableOnFile=true,
    tableName="L2-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
    tableOnFile=true,
    tableName="L2-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
    tableOnFile=true,
    tableName="L2-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
    tableOnFile=true,
    tableName="L2-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 542 */
  HPF.DC.Variable_DC_Load Light_542;
  HPF.Cables.NEC_CableModel cable_light_542(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_542(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_542(k=31);
  
/* Light Model 541 */
  HPF.DC.Variable_DC_Load Light_541;
  HPF.Cables.NEC_CableModel cable_light_541(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_541(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_541(k=31);
  
/* Light Model 540 */
  HPF.DC.Variable_DC_Load Light_540;
  HPF.Cables.NEC_CableModel cable_light_540(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_540(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_540(k=31);
  
/* Light Model 539 */
  HPF.DC.Variable_DC_Load Light_539;
  HPF.Cables.NEC_CableModel cable_light_539(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.99);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_539(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_539(k=31);
  
/* Light Model 538 */
  HPF.DC.Variable_DC_Load Light_538;
  HPF.Cables.NEC_CableModel cable_light_538(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_538(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_538(k=31);
  
/* Light Model 537 */
  HPF.DC.Variable_DC_Load Light_537;
  HPF.Cables.NEC_CableModel cable_light_537(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_537(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_537(k=31);
  
/* Light Model 536 */
  HPF.DC.Variable_DC_Load Light_536;
  HPF.Cables.NEC_CableModel cable_light_536(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_536(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_536(k=31);
  
/* Light Model 535 */
  HPF.DC.Variable_DC_Load Light_535;
  HPF.Cables.NEC_CableModel cable_light_535(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.91);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_535(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_535(k=31);
  
/* Light Model 533 */
  HPF.DC.Variable_DC_Load Light_533;
  HPF.Cables.NEC_CableModel cable_light_533(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_533(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_533(k=31);
  
/* Light Model 532 */
  HPF.DC.Variable_DC_Load Light_532;
  HPF.Cables.NEC_CableModel cable_light_532(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_532(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_532(k=31);
  
/* Light Model 531 */
  HPF.DC.Variable_DC_Load Light_531;
  HPF.Cables.NEC_CableModel cable_light_531(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_531(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_531(k=31);
  
/* Light Model 530 */
  HPF.DC.Variable_DC_Load Light_530;
  HPF.Cables.NEC_CableModel cable_light_530(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_530(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_530(k=31);
  
/* Light Model 528 */
  HPF.DC.Variable_DC_Load Light_528;
  HPF.Cables.NEC_CableModel cable_light_528(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_528(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_528(k=31);
  
/* Light Model 527 */
  HPF.DC.Variable_DC_Load Light_527;
  HPF.Cables.NEC_CableModel cable_light_527(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_527(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_527(k=31);
  
/* Light Model 526 */
  HPF.DC.Variable_DC_Load Light_526;
  HPF.Cables.NEC_CableModel cable_light_526(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_526(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_526(k=31);
  
/* Light Model 525 */
  HPF.DC.Variable_DC_Load Light_525;
  HPF.Cables.NEC_CableModel cable_light_525(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_525(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_525(k=31);
  
/* Light Model 466 */
  HPF.DC.Variable_DC_Load Light_466;
  HPF.Cables.NEC_CableModel cable_light_466(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_466(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_466(k=25);
  
/* Light Model 465 */
  HPF.DC.Variable_DC_Load Light_465;
  HPF.Cables.NEC_CableModel cable_light_465(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_465(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_465(k=25);
  
/* Light Model 464 */
  HPF.DC.Variable_DC_Load Light_464;
  HPF.Cables.NEC_CableModel cable_light_464(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.65);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_464(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_464(k=40);
  
/* Light Model 463 */
  HPF.DC.Variable_DC_Load Light_463;
  HPF.Cables.NEC_CableModel cable_light_463(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_463(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_463(k=40);
  
/* Light Model 462 */
  HPF.DC.Variable_DC_Load Light_462;
  HPF.Cables.NEC_CableModel cable_light_462(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_462(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_462(k=40);
  
/* Light Model 461 */
  HPF.DC.Variable_DC_Load Light_461;
  HPF.Cables.NEC_CableModel cable_light_461(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_461(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_461(k=40);
  
/* Light Model 460 */
  HPF.DC.Variable_DC_Load Light_460;
  HPF.Cables.NEC_CableModel cable_light_460(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_460(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_460(k=28);
  
/* Light Model 459 */
  HPF.DC.Variable_DC_Load Light_459;
  HPF.Cables.NEC_CableModel cable_light_459(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_459(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_459(k=28);
  
/* Light Model 458 */
  HPF.DC.Variable_DC_Load Light_458;
  HPF.Cables.NEC_CableModel cable_light_458(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_458(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_458(k=40);
  
/* Light Model 457 */
  HPF.DC.Variable_DC_Load Light_457;
  HPF.Cables.NEC_CableModel cable_light_457(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_457(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_457(k=40);
  
/* Light Model 456 */
  HPF.DC.Variable_DC_Load Light_456;
  HPF.Cables.NEC_CableModel cable_light_456(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_456(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_456(k=28);
  
/* Light Model 455 */
  HPF.DC.Variable_DC_Load Light_455;
  HPF.Cables.NEC_CableModel cable_light_455(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_455(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_455(k=28);
  
/* Light Model 454 */
  HPF.DC.Variable_DC_Load Light_454;
  HPF.Cables.NEC_CableModel cable_light_454(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_454(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_454(k=40);
  
/* Light Model 453 */
  HPF.DC.Variable_DC_Load Light_453;
  HPF.Cables.NEC_CableModel cable_light_453(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.25);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_453(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_453(k=40);
  
/* Light Model 327 */
  HPF.DC.Variable_DC_Load Light_327;
  HPF.Cables.NEC_CableModel cable_light_327(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_327(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_327(k=21);
  
/* Light Model 326 */
  HPF.DC.Variable_DC_Load Light_326;
  HPF.Cables.NEC_CableModel cable_light_326(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_326(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_326(k=21);
  
/* Light Model 325 */
  HPF.DC.Variable_DC_Load Light_325;
  HPF.Cables.NEC_CableModel cable_light_325(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_325(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_325(k=21);
  
/* Light Model 324 */
  HPF.DC.Variable_DC_Load Light_324;
  HPF.Cables.NEC_CableModel cable_light_324(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.04);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_324(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_324(k=21);
  
/* Light Model 323 */
  HPF.DC.Variable_DC_Load Light_323;
  HPF.Cables.NEC_CableModel cable_light_323(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_323(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_323(k=21);
  
/* Light Model 322 */
  HPF.DC.Variable_DC_Load Light_322;
  HPF.Cables.NEC_CableModel cable_light_322(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_322(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_322(k=21);
  
/* Light Model 321 */
  HPF.DC.Variable_DC_Load Light_321;
  HPF.Cables.NEC_CableModel cable_light_321(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_321(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_321(k=21);
  
/* Light Model 320 */
  HPF.DC.Variable_DC_Load Light_320;
  HPF.Cables.NEC_CableModel cable_light_320(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_320(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_320(k=21);
  
/* Light Model 319 */
  HPF.DC.Variable_DC_Load Light_319;
  HPF.Cables.NEC_CableModel cable_light_319(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.51);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_319(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_319(k=21);
  
/* Light Model 318 */
  HPF.DC.Variable_DC_Load Light_318;
  HPF.Cables.NEC_CableModel cable_light_318(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_318(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_318(k=21);
  
/* Light Model 317 */
  HPF.DC.Variable_DC_Load Light_317;
  HPF.Cables.NEC_CableModel cable_light_317(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_317(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_317(k=21);
  
/* Light Model 310 */
  HPF.DC.Variable_DC_Load Light_310;
  HPF.Cables.NEC_CableModel cable_light_310(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_310(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_310(k=34);
  
/* Light Model 309 */
  HPF.DC.Variable_DC_Load Light_309;
  HPF.Cables.NEC_CableModel cable_light_309(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_309(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_309(k=34);
  
/* Light Model 308 */
  HPF.DC.Variable_DC_Load Light_308;
  HPF.Cables.NEC_CableModel cable_light_308(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_308(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_308(k=28);
  
/* Light Model 307 */
  HPF.DC.Variable_DC_Load Light_307;
  HPF.Cables.NEC_CableModel cable_light_307(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_307(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_307(k=28);
  
/* Light Model 302 */
  HPF.DC.Variable_DC_Load Light_302;
  HPF.Cables.NEC_CableModel cable_light_302(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_302(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_302(k=22);
  
/* Light Model 299 */
  HPF.DC.Variable_DC_Load Light_299;
  HPF.Cables.NEC_CableModel cable_light_299(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_299(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_299(k=35);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 542 */
  connect(Light_Driver_542.hPin_L, cable_light_542.pin_p);
  connect(Light_542.p, Light_Driver_542.pin_p);
  connect(Light_542.n, GndDC.p);
  connect(Light_Driver_542.hPin_N, GndAC.pin);
  connect(Light_Driver_542.pin_n, GndDC.p);
  connect(cable_light_542.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_542.y, Light_542.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_542.u);
/* Light Connections 541 */
  connect(Light_Driver_541.hPin_L, cable_light_541.pin_p);
  connect(Light_541.p, Light_Driver_541.pin_p);
  connect(Light_541.n, GndDC.p);
  connect(Light_Driver_541.hPin_N, GndAC.pin);
  connect(Light_Driver_541.pin_n, GndDC.p);
  connect(cable_light_541.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_541.y, Light_541.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_541.u);
/* Light Connections 540 */
  connect(Light_Driver_540.hPin_L, cable_light_540.pin_p);
  connect(Light_540.p, Light_Driver_540.pin_p);
  connect(Light_540.n, GndDC.p);
  connect(Light_Driver_540.hPin_N, GndAC.pin);
  connect(Light_Driver_540.pin_n, GndDC.p);
  connect(cable_light_540.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_540.y, Light_540.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_540.u);
/* Light Connections 539 */
  connect(Light_Driver_539.hPin_L, cable_light_539.pin_p);
  connect(Light_539.p, Light_Driver_539.pin_p);
  connect(Light_539.n, GndDC.p);
  connect(Light_Driver_539.hPin_N, GndAC.pin);
  connect(Light_Driver_539.pin_n, GndDC.p);
  connect(cable_light_539.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_539.y, Light_539.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_539.u);
/* Light Connections 538 */
  connect(Light_Driver_538.hPin_L, cable_light_538.pin_p);
  connect(Light_538.p, Light_Driver_538.pin_p);
  connect(Light_538.n, GndDC.p);
  connect(Light_Driver_538.hPin_N, GndAC.pin);
  connect(Light_Driver_538.pin_n, GndDC.p);
  connect(cable_light_538.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_538.y, Light_538.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_538.u);
/* Light Connections 537 */
  connect(Light_Driver_537.hPin_L, cable_light_537.pin_p);
  connect(Light_537.p, Light_Driver_537.pin_p);
  connect(Light_537.n, GndDC.p);
  connect(Light_Driver_537.hPin_N, GndAC.pin);
  connect(Light_Driver_537.pin_n, GndDC.p);
  connect(cable_light_537.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_537.y, Light_537.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_537.u);
/* Light Connections 536 */
  connect(Light_Driver_536.hPin_L, cable_light_536.pin_p);
  connect(Light_536.p, Light_Driver_536.pin_p);
  connect(Light_536.n, GndDC.p);
  connect(Light_Driver_536.hPin_N, GndAC.pin);
  connect(Light_Driver_536.pin_n, GndDC.p);
  connect(cable_light_536.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_536.y, Light_536.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_536.u);
/* Light Connections 535 */
  connect(Light_Driver_535.hPin_L, cable_light_535.pin_p);
  connect(Light_535.p, Light_Driver_535.pin_p);
  connect(Light_535.n, GndDC.p);
  connect(Light_Driver_535.hPin_N, GndAC.pin);
  connect(Light_Driver_535.pin_n, GndDC.p);
  connect(cable_light_535.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_535.y, Light_535.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_535.u);
/* Light Connections 533 */
  connect(Light_Driver_533.hPin_L, cable_light_533.pin_p);
  connect(Light_533.p, Light_Driver_533.pin_p);
  connect(Light_533.n, GndDC.p);
  connect(Light_Driver_533.hPin_N, GndAC.pin);
  connect(Light_Driver_533.pin_n, GndDC.p);
  connect(cable_light_533.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_533.y, Light_533.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_533.u);
/* Light Connections 532 */
  connect(Light_Driver_532.hPin_L, cable_light_532.pin_p);
  connect(Light_532.p, Light_Driver_532.pin_p);
  connect(Light_532.n, GndDC.p);
  connect(Light_Driver_532.hPin_N, GndAC.pin);
  connect(Light_Driver_532.pin_n, GndDC.p);
  connect(cable_light_532.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_532.y, Light_532.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_532.u);
/* Light Connections 531 */
  connect(Light_Driver_531.hPin_L, cable_light_531.pin_p);
  connect(Light_531.p, Light_Driver_531.pin_p);
  connect(Light_531.n, GndDC.p);
  connect(Light_Driver_531.hPin_N, GndAC.pin);
  connect(Light_Driver_531.pin_n, GndDC.p);
  connect(cable_light_531.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_531.y, Light_531.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_531.u);
/* Light Connections 530 */
  connect(Light_Driver_530.hPin_L, cable_light_530.pin_p);
  connect(Light_530.p, Light_Driver_530.pin_p);
  connect(Light_530.n, GndDC.p);
  connect(Light_Driver_530.hPin_N, GndAC.pin);
  connect(Light_Driver_530.pin_n, GndDC.p);
  connect(cable_light_530.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_530.y, Light_530.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_530.u);
/* Light Connections 528 */
  connect(Light_Driver_528.hPin_L, cable_light_528.pin_p);
  connect(Light_528.p, Light_Driver_528.pin_p);
  connect(Light_528.n, GndDC.p);
  connect(Light_Driver_528.hPin_N, GndAC.pin);
  connect(Light_Driver_528.pin_n, GndDC.p);
  connect(cable_light_528.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_528.y, Light_528.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_528.u);
/* Light Connections 527 */
  connect(Light_Driver_527.hPin_L, cable_light_527.pin_p);
  connect(Light_527.p, Light_Driver_527.pin_p);
  connect(Light_527.n, GndDC.p);
  connect(Light_Driver_527.hPin_N, GndAC.pin);
  connect(Light_Driver_527.pin_n, GndDC.p);
  connect(cable_light_527.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_527.y, Light_527.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_527.u);
/* Light Connections 526 */
  connect(Light_Driver_526.hPin_L, cable_light_526.pin_p);
  connect(Light_526.p, Light_Driver_526.pin_p);
  connect(Light_526.n, GndDC.p);
  connect(Light_Driver_526.hPin_N, GndAC.pin);
  connect(Light_Driver_526.pin_n, GndDC.p);
  connect(cable_light_526.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_526.y, Light_526.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_526.u);
/* Light Connections 525 */
  connect(Light_Driver_525.hPin_L, cable_light_525.pin_p);
  connect(Light_525.p, Light_Driver_525.pin_p);
  connect(Light_525.n, GndDC.p);
  connect(Light_Driver_525.hPin_N, GndAC.pin);
  connect(Light_Driver_525.pin_n, GndDC.p);
  connect(cable_light_525.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_525.y, Light_525.u);
  connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_525.u);
/* Light Connections 466 */
  connect(Light_Driver_466.hPin_L, cable_light_466.pin_p);
  connect(Light_466.p, Light_Driver_466.pin_p);
  connect(Light_466.n, GndDC.p);
  connect(Light_Driver_466.hPin_N, GndAC.pin);
  connect(Light_Driver_466.pin_n, GndDC.p);
  connect(cable_light_466.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_466.y, Light_466.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_466.u);
/* Light Connections 465 */
  connect(Light_Driver_465.hPin_L, cable_light_465.pin_p);
  connect(Light_465.p, Light_Driver_465.pin_p);
  connect(Light_465.n, GndDC.p);
  connect(Light_Driver_465.hPin_N, GndAC.pin);
  connect(Light_Driver_465.pin_n, GndDC.p);
  connect(cable_light_465.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_465.y, Light_465.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_465.u);
/* Light Connections 464 */
  connect(Light_Driver_464.hPin_L, cable_light_464.pin_p);
  connect(Light_464.p, Light_Driver_464.pin_p);
  connect(Light_464.n, GndDC.p);
  connect(Light_Driver_464.hPin_N, GndAC.pin);
  connect(Light_Driver_464.pin_n, GndDC.p);
  connect(cable_light_464.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_464.y, Light_464.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_464.u);
/* Light Connections 463 */
  connect(Light_Driver_463.hPin_L, cable_light_463.pin_p);
  connect(Light_463.p, Light_Driver_463.pin_p);
  connect(Light_463.n, GndDC.p);
  connect(Light_Driver_463.hPin_N, GndAC.pin);
  connect(Light_Driver_463.pin_n, GndDC.p);
  connect(cable_light_463.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_463.y, Light_463.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_463.u);
/* Light Connections 462 */
  connect(Light_Driver_462.hPin_L, cable_light_462.pin_p);
  connect(Light_462.p, Light_Driver_462.pin_p);
  connect(Light_462.n, GndDC.p);
  connect(Light_Driver_462.hPin_N, GndAC.pin);
  connect(Light_Driver_462.pin_n, GndDC.p);
  connect(cable_light_462.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_462.y, Light_462.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_462.u);
/* Light Connections 461 */
  connect(Light_Driver_461.hPin_L, cable_light_461.pin_p);
  connect(Light_461.p, Light_Driver_461.pin_p);
  connect(Light_461.n, GndDC.p);
  connect(Light_Driver_461.hPin_N, GndAC.pin);
  connect(Light_Driver_461.pin_n, GndDC.p);
  connect(cable_light_461.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_461.y, Light_461.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_461.u);
/* Light Connections 460 */
  connect(Light_Driver_460.hPin_L, cable_light_460.pin_p);
  connect(Light_460.p, Light_Driver_460.pin_p);
  connect(Light_460.n, GndDC.p);
  connect(Light_Driver_460.hPin_N, GndAC.pin);
  connect(Light_Driver_460.pin_n, GndDC.p);
  connect(cable_light_460.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_460.y, Light_460.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_460.u);
/* Light Connections 459 */
  connect(Light_Driver_459.hPin_L, cable_light_459.pin_p);
  connect(Light_459.p, Light_Driver_459.pin_p);
  connect(Light_459.n, GndDC.p);
  connect(Light_Driver_459.hPin_N, GndAC.pin);
  connect(Light_Driver_459.pin_n, GndDC.p);
  connect(cable_light_459.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_459.y, Light_459.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_459.u);
/* Light Connections 458 */
  connect(Light_Driver_458.hPin_L, cable_light_458.pin_p);
  connect(Light_458.p, Light_Driver_458.pin_p);
  connect(Light_458.n, GndDC.p);
  connect(Light_Driver_458.hPin_N, GndAC.pin);
  connect(Light_Driver_458.pin_n, GndDC.p);
  connect(cable_light_458.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_458.y, Light_458.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_458.u);
/* Light Connections 457 */
  connect(Light_Driver_457.hPin_L, cable_light_457.pin_p);
  connect(Light_457.p, Light_Driver_457.pin_p);
  connect(Light_457.n, GndDC.p);
  connect(Light_Driver_457.hPin_N, GndAC.pin);
  connect(Light_Driver_457.pin_n, GndDC.p);
  connect(cable_light_457.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_457.y, Light_457.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_457.u);
/* Light Connections 456 */
  connect(Light_Driver_456.hPin_L, cable_light_456.pin_p);
  connect(Light_456.p, Light_Driver_456.pin_p);
  connect(Light_456.n, GndDC.p);
  connect(Light_Driver_456.hPin_N, GndAC.pin);
  connect(Light_Driver_456.pin_n, GndDC.p);
  connect(cable_light_456.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_456.y, Light_456.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_456.u);
/* Light Connections 455 */
  connect(Light_Driver_455.hPin_L, cable_light_455.pin_p);
  connect(Light_455.p, Light_Driver_455.pin_p);
  connect(Light_455.n, GndDC.p);
  connect(Light_Driver_455.hPin_N, GndAC.pin);
  connect(Light_Driver_455.pin_n, GndDC.p);
  connect(cable_light_455.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_455.y, Light_455.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_455.u);
/* Light Connections 454 */
  connect(Light_Driver_454.hPin_L, cable_light_454.pin_p);
  connect(Light_454.p, Light_Driver_454.pin_p);
  connect(Light_454.n, GndDC.p);
  connect(Light_Driver_454.hPin_N, GndAC.pin);
  connect(Light_Driver_454.pin_n, GndDC.p);
  connect(cable_light_454.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_454.y, Light_454.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_454.u);
/* Light Connections 453 */
  connect(Light_Driver_453.hPin_L, cable_light_453.pin_p);
  connect(Light_453.p, Light_Driver_453.pin_p);
  connect(Light_453.n, GndDC.p);
  connect(Light_Driver_453.hPin_N, GndAC.pin);
  connect(Light_Driver_453.pin_n, GndDC.p);
  connect(cable_light_453.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_453.y, Light_453.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_453.u);
/* Light Connections 327 */
  connect(Light_Driver_327.hPin_L, cable_light_327.pin_p);
  connect(Light_327.p, Light_Driver_327.pin_p);
  connect(Light_327.n, GndDC.p);
  connect(Light_Driver_327.hPin_N, GndAC.pin);
  connect(Light_Driver_327.pin_n, GndDC.p);
  connect(cable_light_327.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_327.y, Light_327.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_327.u);
/* Light Connections 326 */
  connect(Light_Driver_326.hPin_L, cable_light_326.pin_p);
  connect(Light_326.p, Light_Driver_326.pin_p);
  connect(Light_326.n, GndDC.p);
  connect(Light_Driver_326.hPin_N, GndAC.pin);
  connect(Light_Driver_326.pin_n, GndDC.p);
  connect(cable_light_326.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_326.y, Light_326.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_326.u);
/* Light Connections 325 */
  connect(Light_Driver_325.hPin_L, cable_light_325.pin_p);
  connect(Light_325.p, Light_Driver_325.pin_p);
  connect(Light_325.n, GndDC.p);
  connect(Light_Driver_325.hPin_N, GndAC.pin);
  connect(Light_Driver_325.pin_n, GndDC.p);
  connect(cable_light_325.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_325.y, Light_325.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_325.u);
/* Light Connections 324 */
  connect(Light_Driver_324.hPin_L, cable_light_324.pin_p);
  connect(Light_324.p, Light_Driver_324.pin_p);
  connect(Light_324.n, GndDC.p);
  connect(Light_Driver_324.hPin_N, GndAC.pin);
  connect(Light_Driver_324.pin_n, GndDC.p);
  connect(cable_light_324.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_324.y, Light_324.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_324.u);
/* Light Connections 323 */
  connect(Light_Driver_323.hPin_L, cable_light_323.pin_p);
  connect(Light_323.p, Light_Driver_323.pin_p);
  connect(Light_323.n, GndDC.p);
  connect(Light_Driver_323.hPin_N, GndAC.pin);
  connect(Light_Driver_323.pin_n, GndDC.p);
  connect(cable_light_323.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_323.y, Light_323.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_323.u);
/* Light Connections 322 */
  connect(Light_Driver_322.hPin_L, cable_light_322.pin_p);
  connect(Light_322.p, Light_Driver_322.pin_p);
  connect(Light_322.n, GndDC.p);
  connect(Light_Driver_322.hPin_N, GndAC.pin);
  connect(Light_Driver_322.pin_n, GndDC.p);
  connect(cable_light_322.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_322.y, Light_322.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_322.u);
/* Light Connections 321 */
  connect(Light_Driver_321.hPin_L, cable_light_321.pin_p);
  connect(Light_321.p, Light_Driver_321.pin_p);
  connect(Light_321.n, GndDC.p);
  connect(Light_Driver_321.hPin_N, GndAC.pin);
  connect(Light_Driver_321.pin_n, GndDC.p);
  connect(cable_light_321.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_321.y, Light_321.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_321.u);
/* Light Connections 320 */
  connect(Light_Driver_320.hPin_L, cable_light_320.pin_p);
  connect(Light_320.p, Light_Driver_320.pin_p);
  connect(Light_320.n, GndDC.p);
  connect(Light_Driver_320.hPin_N, GndAC.pin);
  connect(Light_Driver_320.pin_n, GndDC.p);
  connect(cable_light_320.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_320.y, Light_320.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_320.u);
/* Light Connections 319 */
  connect(Light_Driver_319.hPin_L, cable_light_319.pin_p);
  connect(Light_319.p, Light_Driver_319.pin_p);
  connect(Light_319.n, GndDC.p);
  connect(Light_Driver_319.hPin_N, GndAC.pin);
  connect(Light_Driver_319.pin_n, GndDC.p);
  connect(cable_light_319.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_319.y, Light_319.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_319.u);
/* Light Connections 318 */
  connect(Light_Driver_318.hPin_L, cable_light_318.pin_p);
  connect(Light_318.p, Light_Driver_318.pin_p);
  connect(Light_318.n, GndDC.p);
  connect(Light_Driver_318.hPin_N, GndAC.pin);
  connect(Light_Driver_318.pin_n, GndDC.p);
  connect(cable_light_318.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_318.y, Light_318.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_318.u);
/* Light Connections 317 */
  connect(Light_Driver_317.hPin_L, cable_light_317.pin_p);
  connect(Light_317.p, Light_Driver_317.pin_p);
  connect(Light_317.n, GndDC.p);
  connect(Light_Driver_317.hPin_N, GndAC.pin);
  connect(Light_Driver_317.pin_n, GndDC.p);
  connect(cable_light_317.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_317.y, Light_317.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_317.u);
/* Light Connections 310 */
  connect(Light_Driver_310.hPin_L, cable_light_310.pin_p);
  connect(Light_310.p, Light_Driver_310.pin_p);
  connect(Light_310.n, GndDC.p);
  connect(Light_Driver_310.hPin_N, GndAC.pin);
  connect(Light_Driver_310.pin_n, GndDC.p);
  connect(cable_light_310.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_310.y, Light_310.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_310.u);
/* Light Connections 309 */
  connect(Light_Driver_309.hPin_L, cable_light_309.pin_p);
  connect(Light_309.p, Light_Driver_309.pin_p);
  connect(Light_309.n, GndDC.p);
  connect(Light_Driver_309.hPin_N, GndAC.pin);
  connect(Light_Driver_309.pin_n, GndDC.p);
  connect(cable_light_309.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_309.y, Light_309.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_309.u);
/* Light Connections 308 */
  connect(Light_Driver_308.hPin_L, cable_light_308.pin_p);
  connect(Light_308.p, Light_Driver_308.pin_p);
  connect(Light_308.n, GndDC.p);
  connect(Light_Driver_308.hPin_N, GndAC.pin);
  connect(Light_Driver_308.pin_n, GndDC.p);
  connect(cable_light_308.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_308.y, Light_308.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_308.u);
/* Light Connections 307 */
  connect(Light_Driver_307.hPin_L, cable_light_307.pin_p);
  connect(Light_307.p, Light_Driver_307.pin_p);
  connect(Light_307.n, GndDC.p);
  connect(Light_Driver_307.hPin_N, GndAC.pin);
  connect(Light_Driver_307.pin_n, GndDC.p);
  connect(cable_light_307.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_307.y, Light_307.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_307.u);
/* Light Connections 302 */
  connect(Light_Driver_302.hPin_L, cable_light_302.pin_p);
  connect(Light_302.p, Light_Driver_302.pin_p);
  connect(Light_302.n, GndDC.p);
  connect(Light_Driver_302.hPin_N, GndAC.pin);
  connect(Light_Driver_302.pin_n, GndDC.p);
  connect(cable_light_302.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_302.y, Light_302.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_302.u);
/* Light Connections 299 */
  connect(Light_Driver_299.hPin_L, cable_light_299.pin_p);
  connect(Light_299.p, Light_Driver_299.pin_p);
  connect(Light_299.n, GndDC.p);
  connect(Light_Driver_299.hPin_N, GndAC.pin);
  connect(Light_Driver_299.pin_n, GndDC.p);
  connect(cable_light_299.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_299.y, Light_299.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_299.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_1A;
