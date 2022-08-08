within ;
model Light_Panel_L2_1B
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

  
/* Light Model 498 */
  HPF.DC.Variable_DC_Load Light_498;
  HPF.Cables.NEC_CableModel cable_light_498(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_498(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_498(k=31);
  
/* Light Model 497 */
  HPF.DC.Variable_DC_Load Light_497;
  HPF.Cables.NEC_CableModel cable_light_497(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_497(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_497(k=31);
  
/* Light Model 496 */
  HPF.DC.Variable_DC_Load Light_496;
  HPF.Cables.NEC_CableModel cable_light_496(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_496(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_496(k=31);
  
/* Light Model 495 */
  HPF.DC.Variable_DC_Load Light_495;
  HPF.Cables.NEC_CableModel cable_light_495(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_495(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_495(k=31);
  
/* Light Model 494 */
  HPF.DC.Variable_DC_Load Light_494;
  HPF.Cables.NEC_CableModel cable_light_494(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_494(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_494(k=31);
  
/* Light Model 493 */
  HPF.DC.Variable_DC_Load Light_493;
  HPF.Cables.NEC_CableModel cable_light_493(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_493(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_493(k=31);
  
/* Light Model 492 */
  HPF.DC.Variable_DC_Load Light_492;
  HPF.Cables.NEC_CableModel cable_light_492(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_492(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_492(k=31);
  
/* Light Model 491 */
  HPF.DC.Variable_DC_Load Light_491;
  HPF.Cables.NEC_CableModel cable_light_491(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_491(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_491(k=31);
  
/* Light Model 490 */
  HPF.DC.Variable_DC_Load Light_490;
  HPF.Cables.NEC_CableModel cable_light_490(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_490(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_490(k=31);
  
/* Light Model 489 */
  HPF.DC.Variable_DC_Load Light_489;
  HPF.Cables.NEC_CableModel cable_light_489(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_489(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_489(k=31);
  
/* Light Model 488 */
  HPF.DC.Variable_DC_Load Light_488;
  HPF.Cables.NEC_CableModel cable_light_488(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_488(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_488(k=31);
  
/* Light Model 487 */
  HPF.DC.Variable_DC_Load Light_487;
  HPF.Cables.NEC_CableModel cable_light_487(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_487(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_487(k=31);
  
/* Light Model 486 */
  HPF.DC.Variable_DC_Load Light_486;
  HPF.Cables.NEC_CableModel cable_light_486(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_486(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_486(k=31);
  
/* Light Model 485 */
  HPF.DC.Variable_DC_Load Light_485;
  HPF.Cables.NEC_CableModel cable_light_485(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_485(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_485(k=31);
  
/* Light Model 484 */
  HPF.DC.Variable_DC_Load Light_484;
  HPF.Cables.NEC_CableModel cable_light_484(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_484(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_484(k=31);
  
/* Light Model 483 */
  HPF.DC.Variable_DC_Load Light_483;
  HPF.Cables.NEC_CableModel cable_light_483(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_483(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_483(k=31);
  
/* Light Model 482 */
  HPF.DC.Variable_DC_Load Light_482;
  HPF.Cables.NEC_CableModel cable_light_482(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_482(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_482(k=31);
  
/* Light Model 481 */
  HPF.DC.Variable_DC_Load Light_481;
  HPF.Cables.NEC_CableModel cable_light_481(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_481(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_481(k=31);
  
/* Light Model 480 */
  HPF.DC.Variable_DC_Load Light_480;
  HPF.Cables.NEC_CableModel cable_light_480(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_480(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_480(k=31);
  
/* Light Model 479 */
  HPF.DC.Variable_DC_Load Light_479;
  HPF.Cables.NEC_CableModel cable_light_479(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_479(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_479(k=31);
  
/* Light Model 478 */
  HPF.DC.Variable_DC_Load Light_478;
  HPF.Cables.NEC_CableModel cable_light_478(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_478(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_478(k=31);
  
/* Light Model 477 */
  HPF.DC.Variable_DC_Load Light_477;
  HPF.Cables.NEC_CableModel cable_light_477(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_477(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_477(k=31);
  
/* Light Model 476 */
  HPF.DC.Variable_DC_Load Light_476;
  HPF.Cables.NEC_CableModel cable_light_476(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_476(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_476(k=31);
  
/* Light Model 475 */
  HPF.DC.Variable_DC_Load Light_475;
  HPF.Cables.NEC_CableModel cable_light_475(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_475(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_475(k=31);
  
/* Light Model 474 */
  HPF.DC.Variable_DC_Load Light_474;
  HPF.Cables.NEC_CableModel cable_light_474(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_474(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_474(k=31);
  
/* Light Model 473 */
  HPF.DC.Variable_DC_Load Light_473;
  HPF.Cables.NEC_CableModel cable_light_473(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_473(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_473(k=31);
  
/* Light Model 472 */
  HPF.DC.Variable_DC_Load Light_472;
  HPF.Cables.NEC_CableModel cable_light_472(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_472(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_472(k=31);
  
/* Light Model 471 */
  HPF.DC.Variable_DC_Load Light_471;
  HPF.Cables.NEC_CableModel cable_light_471(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_471(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_471(k=31);
  
/* Light Model 470 */
  HPF.DC.Variable_DC_Load Light_470;
  HPF.Cables.NEC_CableModel cable_light_470(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_470(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_470(k=31);
  
/* Light Model 469 */
  HPF.DC.Variable_DC_Load Light_469;
  HPF.Cables.NEC_CableModel cable_light_469(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_469(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_469(k=31);
  
/* Light Model 468 */
  HPF.DC.Variable_DC_Load Light_468;
  HPF.Cables.NEC_CableModel cable_light_468(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_468(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_468(k=31);
  
/* Light Model 467 */
  HPF.DC.Variable_DC_Load Light_467;
  HPF.Cables.NEC_CableModel cable_light_467(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_467(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_467(k=31);
  
/* Light Model 452 */
  HPF.DC.Variable_DC_Load Light_452;
  HPF.Cables.NEC_CableModel cable_light_452(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_452(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_452(k=28);
  
/* Light Model 451 */
  HPF.DC.Variable_DC_Load Light_451;
  HPF.Cables.NEC_CableModel cable_light_451(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_451(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_451(k=28);
  
/* Light Model 450 */
  HPF.DC.Variable_DC_Load Light_450;
  HPF.Cables.NEC_CableModel cable_light_450(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_450(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_450(k=40);
  
/* Light Model 449 */
  HPF.DC.Variable_DC_Load Light_449;
  HPF.Cables.NEC_CableModel cable_light_449(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_449(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_449(k=40);
  
/* Light Model 448 */
  HPF.DC.Variable_DC_Load Light_448;
  HPF.Cables.NEC_CableModel cable_light_448(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_448(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_448(k=28);
  
/* Light Model 447 */
  HPF.DC.Variable_DC_Load Light_447;
  HPF.Cables.NEC_CableModel cable_light_447(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_447(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_447(k=28);
  
/* Light Model 446 */
  HPF.DC.Variable_DC_Load Light_446;
  HPF.Cables.NEC_CableModel cable_light_446(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_446(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_446(k=40);
  
/* Light Model 445 */
  HPF.DC.Variable_DC_Load Light_445;
  HPF.Cables.NEC_CableModel cable_light_445(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_445(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_445(k=40);
  
/* Light Model 444 */
  HPF.DC.Variable_DC_Load Light_444;
  HPF.Cables.NEC_CableModel cable_light_444(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_444(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_444(k=28);
  
/* Light Model 443 */
  HPF.DC.Variable_DC_Load Light_443;
  HPF.Cables.NEC_CableModel cable_light_443(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_443(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_443(k=28);
  
/* Light Model 352 */
  HPF.DC.Variable_DC_Load Light_352;
  HPF.Cables.NEC_CableModel cable_light_352(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_352(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_352(k=35);
  
/* Light Model 346 */
  HPF.DC.Variable_DC_Load Light_346;
  HPF.Cables.NEC_CableModel cable_light_346(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_346(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_346(k=28);
  
/* Light Model 343 */
  HPF.DC.Variable_DC_Load Light_343;
  HPF.Cables.NEC_CableModel cable_light_343(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_343(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_343(k=22);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 498 */
  connect(Light_Driver_498.hPin_L, cable_light_498.pin_p);
  connect(Light_498.p, Light_Driver_498.pin_p);
  connect(Light_498.n, GndDC.p);
  connect(Light_Driver_498.hPin_N, GndAC.pin);
  connect(Light_Driver_498.pin_n, GndDC.p);
  connect(cable_light_498.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_498.y, Light_498.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_498.u);
/* Light Connections 497 */
  connect(Light_Driver_497.hPin_L, cable_light_497.pin_p);
  connect(Light_497.p, Light_Driver_497.pin_p);
  connect(Light_497.n, GndDC.p);
  connect(Light_Driver_497.hPin_N, GndAC.pin);
  connect(Light_Driver_497.pin_n, GndDC.p);
  connect(cable_light_497.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_497.y, Light_497.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_497.u);
/* Light Connections 496 */
  connect(Light_Driver_496.hPin_L, cable_light_496.pin_p);
  connect(Light_496.p, Light_Driver_496.pin_p);
  connect(Light_496.n, GndDC.p);
  connect(Light_Driver_496.hPin_N, GndAC.pin);
  connect(Light_Driver_496.pin_n, GndDC.p);
  connect(cable_light_496.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_496.y, Light_496.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_496.u);
/* Light Connections 495 */
  connect(Light_Driver_495.hPin_L, cable_light_495.pin_p);
  connect(Light_495.p, Light_Driver_495.pin_p);
  connect(Light_495.n, GndDC.p);
  connect(Light_Driver_495.hPin_N, GndAC.pin);
  connect(Light_Driver_495.pin_n, GndDC.p);
  connect(cable_light_495.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_495.y, Light_495.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_495.u);
/* Light Connections 494 */
  connect(Light_Driver_494.hPin_L, cable_light_494.pin_p);
  connect(Light_494.p, Light_Driver_494.pin_p);
  connect(Light_494.n, GndDC.p);
  connect(Light_Driver_494.hPin_N, GndAC.pin);
  connect(Light_Driver_494.pin_n, GndDC.p);
  connect(cable_light_494.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_494.y, Light_494.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_494.u);
/* Light Connections 493 */
  connect(Light_Driver_493.hPin_L, cable_light_493.pin_p);
  connect(Light_493.p, Light_Driver_493.pin_p);
  connect(Light_493.n, GndDC.p);
  connect(Light_Driver_493.hPin_N, GndAC.pin);
  connect(Light_Driver_493.pin_n, GndDC.p);
  connect(cable_light_493.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_493.y, Light_493.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_493.u);
/* Light Connections 492 */
  connect(Light_Driver_492.hPin_L, cable_light_492.pin_p);
  connect(Light_492.p, Light_Driver_492.pin_p);
  connect(Light_492.n, GndDC.p);
  connect(Light_Driver_492.hPin_N, GndAC.pin);
  connect(Light_Driver_492.pin_n, GndDC.p);
  connect(cable_light_492.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_492.y, Light_492.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_492.u);
/* Light Connections 491 */
  connect(Light_Driver_491.hPin_L, cable_light_491.pin_p);
  connect(Light_491.p, Light_Driver_491.pin_p);
  connect(Light_491.n, GndDC.p);
  connect(Light_Driver_491.hPin_N, GndAC.pin);
  connect(Light_Driver_491.pin_n, GndDC.p);
  connect(cable_light_491.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_491.y, Light_491.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_491.u);
/* Light Connections 490 */
  connect(Light_Driver_490.hPin_L, cable_light_490.pin_p);
  connect(Light_490.p, Light_Driver_490.pin_p);
  connect(Light_490.n, GndDC.p);
  connect(Light_Driver_490.hPin_N, GndAC.pin);
  connect(Light_Driver_490.pin_n, GndDC.p);
  connect(cable_light_490.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_490.y, Light_490.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_490.u);
/* Light Connections 489 */
  connect(Light_Driver_489.hPin_L, cable_light_489.pin_p);
  connect(Light_489.p, Light_Driver_489.pin_p);
  connect(Light_489.n, GndDC.p);
  connect(Light_Driver_489.hPin_N, GndAC.pin);
  connect(Light_Driver_489.pin_n, GndDC.p);
  connect(cable_light_489.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_489.y, Light_489.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_489.u);
/* Light Connections 488 */
  connect(Light_Driver_488.hPin_L, cable_light_488.pin_p);
  connect(Light_488.p, Light_Driver_488.pin_p);
  connect(Light_488.n, GndDC.p);
  connect(Light_Driver_488.hPin_N, GndAC.pin);
  connect(Light_Driver_488.pin_n, GndDC.p);
  connect(cable_light_488.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_488.y, Light_488.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_488.u);
/* Light Connections 487 */
  connect(Light_Driver_487.hPin_L, cable_light_487.pin_p);
  connect(Light_487.p, Light_Driver_487.pin_p);
  connect(Light_487.n, GndDC.p);
  connect(Light_Driver_487.hPin_N, GndAC.pin);
  connect(Light_Driver_487.pin_n, GndDC.p);
  connect(cable_light_487.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_487.y, Light_487.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_487.u);
/* Light Connections 486 */
  connect(Light_Driver_486.hPin_L, cable_light_486.pin_p);
  connect(Light_486.p, Light_Driver_486.pin_p);
  connect(Light_486.n, GndDC.p);
  connect(Light_Driver_486.hPin_N, GndAC.pin);
  connect(Light_Driver_486.pin_n, GndDC.p);
  connect(cable_light_486.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_486.y, Light_486.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_486.u);
/* Light Connections 485 */
  connect(Light_Driver_485.hPin_L, cable_light_485.pin_p);
  connect(Light_485.p, Light_Driver_485.pin_p);
  connect(Light_485.n, GndDC.p);
  connect(Light_Driver_485.hPin_N, GndAC.pin);
  connect(Light_Driver_485.pin_n, GndDC.p);
  connect(cable_light_485.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_485.y, Light_485.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_485.u);
/* Light Connections 484 */
  connect(Light_Driver_484.hPin_L, cable_light_484.pin_p);
  connect(Light_484.p, Light_Driver_484.pin_p);
  connect(Light_484.n, GndDC.p);
  connect(Light_Driver_484.hPin_N, GndAC.pin);
  connect(Light_Driver_484.pin_n, GndDC.p);
  connect(cable_light_484.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_484.y, Light_484.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_484.u);
/* Light Connections 483 */
  connect(Light_Driver_483.hPin_L, cable_light_483.pin_p);
  connect(Light_483.p, Light_Driver_483.pin_p);
  connect(Light_483.n, GndDC.p);
  connect(Light_Driver_483.hPin_N, GndAC.pin);
  connect(Light_Driver_483.pin_n, GndDC.p);
  connect(cable_light_483.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_483.y, Light_483.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_483.u);
/* Light Connections 482 */
  connect(Light_Driver_482.hPin_L, cable_light_482.pin_p);
  connect(Light_482.p, Light_Driver_482.pin_p);
  connect(Light_482.n, GndDC.p);
  connect(Light_Driver_482.hPin_N, GndAC.pin);
  connect(Light_Driver_482.pin_n, GndDC.p);
  connect(cable_light_482.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_482.y, Light_482.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_482.u);
/* Light Connections 481 */
  connect(Light_Driver_481.hPin_L, cable_light_481.pin_p);
  connect(Light_481.p, Light_Driver_481.pin_p);
  connect(Light_481.n, GndDC.p);
  connect(Light_Driver_481.hPin_N, GndAC.pin);
  connect(Light_Driver_481.pin_n, GndDC.p);
  connect(cable_light_481.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_481.y, Light_481.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_481.u);
/* Light Connections 480 */
  connect(Light_Driver_480.hPin_L, cable_light_480.pin_p);
  connect(Light_480.p, Light_Driver_480.pin_p);
  connect(Light_480.n, GndDC.p);
  connect(Light_Driver_480.hPin_N, GndAC.pin);
  connect(Light_Driver_480.pin_n, GndDC.p);
  connect(cable_light_480.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_480.y, Light_480.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_480.u);
/* Light Connections 479 */
  connect(Light_Driver_479.hPin_L, cable_light_479.pin_p);
  connect(Light_479.p, Light_Driver_479.pin_p);
  connect(Light_479.n, GndDC.p);
  connect(Light_Driver_479.hPin_N, GndAC.pin);
  connect(Light_Driver_479.pin_n, GndDC.p);
  connect(cable_light_479.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_479.y, Light_479.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_479.u);
/* Light Connections 478 */
  connect(Light_Driver_478.hPin_L, cable_light_478.pin_p);
  connect(Light_478.p, Light_Driver_478.pin_p);
  connect(Light_478.n, GndDC.p);
  connect(Light_Driver_478.hPin_N, GndAC.pin);
  connect(Light_Driver_478.pin_n, GndDC.p);
  connect(cable_light_478.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_478.y, Light_478.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_478.u);
/* Light Connections 477 */
  connect(Light_Driver_477.hPin_L, cable_light_477.pin_p);
  connect(Light_477.p, Light_Driver_477.pin_p);
  connect(Light_477.n, GndDC.p);
  connect(Light_Driver_477.hPin_N, GndAC.pin);
  connect(Light_Driver_477.pin_n, GndDC.p);
  connect(cable_light_477.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_477.y, Light_477.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_477.u);
/* Light Connections 476 */
  connect(Light_Driver_476.hPin_L, cable_light_476.pin_p);
  connect(Light_476.p, Light_Driver_476.pin_p);
  connect(Light_476.n, GndDC.p);
  connect(Light_Driver_476.hPin_N, GndAC.pin);
  connect(Light_Driver_476.pin_n, GndDC.p);
  connect(cable_light_476.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_476.y, Light_476.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_476.u);
/* Light Connections 475 */
  connect(Light_Driver_475.hPin_L, cable_light_475.pin_p);
  connect(Light_475.p, Light_Driver_475.pin_p);
  connect(Light_475.n, GndDC.p);
  connect(Light_Driver_475.hPin_N, GndAC.pin);
  connect(Light_Driver_475.pin_n, GndDC.p);
  connect(cable_light_475.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_475.y, Light_475.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_475.u);
/* Light Connections 474 */
  connect(Light_Driver_474.hPin_L, cable_light_474.pin_p);
  connect(Light_474.p, Light_Driver_474.pin_p);
  connect(Light_474.n, GndDC.p);
  connect(Light_Driver_474.hPin_N, GndAC.pin);
  connect(Light_Driver_474.pin_n, GndDC.p);
  connect(cable_light_474.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_474.y, Light_474.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_474.u);
/* Light Connections 473 */
  connect(Light_Driver_473.hPin_L, cable_light_473.pin_p);
  connect(Light_473.p, Light_Driver_473.pin_p);
  connect(Light_473.n, GndDC.p);
  connect(Light_Driver_473.hPin_N, GndAC.pin);
  connect(Light_Driver_473.pin_n, GndDC.p);
  connect(cable_light_473.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_473.y, Light_473.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_473.u);
/* Light Connections 472 */
  connect(Light_Driver_472.hPin_L, cable_light_472.pin_p);
  connect(Light_472.p, Light_Driver_472.pin_p);
  connect(Light_472.n, GndDC.p);
  connect(Light_Driver_472.hPin_N, GndAC.pin);
  connect(Light_Driver_472.pin_n, GndDC.p);
  connect(cable_light_472.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_472.y, Light_472.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_472.u);
/* Light Connections 471 */
  connect(Light_Driver_471.hPin_L, cable_light_471.pin_p);
  connect(Light_471.p, Light_Driver_471.pin_p);
  connect(Light_471.n, GndDC.p);
  connect(Light_Driver_471.hPin_N, GndAC.pin);
  connect(Light_Driver_471.pin_n, GndDC.p);
  connect(cable_light_471.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_471.y, Light_471.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_471.u);
/* Light Connections 470 */
  connect(Light_Driver_470.hPin_L, cable_light_470.pin_p);
  connect(Light_470.p, Light_Driver_470.pin_p);
  connect(Light_470.n, GndDC.p);
  connect(Light_Driver_470.hPin_N, GndAC.pin);
  connect(Light_Driver_470.pin_n, GndDC.p);
  connect(cable_light_470.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_470.y, Light_470.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_470.u);
/* Light Connections 469 */
  connect(Light_Driver_469.hPin_L, cable_light_469.pin_p);
  connect(Light_469.p, Light_Driver_469.pin_p);
  connect(Light_469.n, GndDC.p);
  connect(Light_Driver_469.hPin_N, GndAC.pin);
  connect(Light_Driver_469.pin_n, GndDC.p);
  connect(cable_light_469.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_469.y, Light_469.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_469.u);
/* Light Connections 468 */
  connect(Light_Driver_468.hPin_L, cable_light_468.pin_p);
  connect(Light_468.p, Light_Driver_468.pin_p);
  connect(Light_468.n, GndDC.p);
  connect(Light_Driver_468.hPin_N, GndAC.pin);
  connect(Light_Driver_468.pin_n, GndDC.p);
  connect(cable_light_468.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_468.y, Light_468.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_468.u);
/* Light Connections 467 */
  connect(Light_Driver_467.hPin_L, cable_light_467.pin_p);
  connect(Light_467.p, Light_Driver_467.pin_p);
  connect(Light_467.n, GndDC.p);
  connect(Light_Driver_467.hPin_N, GndAC.pin);
  connect(Light_Driver_467.pin_n, GndDC.p);
  connect(cable_light_467.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_467.y, Light_467.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_467.u);
/* Light Connections 452 */
  connect(Light_Driver_452.hPin_L, cable_light_452.pin_p);
  connect(Light_452.p, Light_Driver_452.pin_p);
  connect(Light_452.n, GndDC.p);
  connect(Light_Driver_452.hPin_N, GndAC.pin);
  connect(Light_Driver_452.pin_n, GndDC.p);
  connect(cable_light_452.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_452.y, Light_452.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_452.u);
/* Light Connections 451 */
  connect(Light_Driver_451.hPin_L, cable_light_451.pin_p);
  connect(Light_451.p, Light_Driver_451.pin_p);
  connect(Light_451.n, GndDC.p);
  connect(Light_Driver_451.hPin_N, GndAC.pin);
  connect(Light_Driver_451.pin_n, GndDC.p);
  connect(cable_light_451.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_451.y, Light_451.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_451.u);
/* Light Connections 450 */
  connect(Light_Driver_450.hPin_L, cable_light_450.pin_p);
  connect(Light_450.p, Light_Driver_450.pin_p);
  connect(Light_450.n, GndDC.p);
  connect(Light_Driver_450.hPin_N, GndAC.pin);
  connect(Light_Driver_450.pin_n, GndDC.p);
  connect(cable_light_450.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_450.y, Light_450.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_450.u);
/* Light Connections 449 */
  connect(Light_Driver_449.hPin_L, cable_light_449.pin_p);
  connect(Light_449.p, Light_Driver_449.pin_p);
  connect(Light_449.n, GndDC.p);
  connect(Light_Driver_449.hPin_N, GndAC.pin);
  connect(Light_Driver_449.pin_n, GndDC.p);
  connect(cable_light_449.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_449.y, Light_449.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_449.u);
/* Light Connections 448 */
  connect(Light_Driver_448.hPin_L, cable_light_448.pin_p);
  connect(Light_448.p, Light_Driver_448.pin_p);
  connect(Light_448.n, GndDC.p);
  connect(Light_Driver_448.hPin_N, GndAC.pin);
  connect(Light_Driver_448.pin_n, GndDC.p);
  connect(cable_light_448.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_448.y, Light_448.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_448.u);
/* Light Connections 447 */
  connect(Light_Driver_447.hPin_L, cable_light_447.pin_p);
  connect(Light_447.p, Light_Driver_447.pin_p);
  connect(Light_447.n, GndDC.p);
  connect(Light_Driver_447.hPin_N, GndAC.pin);
  connect(Light_Driver_447.pin_n, GndDC.p);
  connect(cable_light_447.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_447.y, Light_447.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_447.u);
/* Light Connections 446 */
  connect(Light_Driver_446.hPin_L, cable_light_446.pin_p);
  connect(Light_446.p, Light_Driver_446.pin_p);
  connect(Light_446.n, GndDC.p);
  connect(Light_Driver_446.hPin_N, GndAC.pin);
  connect(Light_Driver_446.pin_n, GndDC.p);
  connect(cable_light_446.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_446.y, Light_446.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_446.u);
/* Light Connections 445 */
  connect(Light_Driver_445.hPin_L, cable_light_445.pin_p);
  connect(Light_445.p, Light_Driver_445.pin_p);
  connect(Light_445.n, GndDC.p);
  connect(Light_Driver_445.hPin_N, GndAC.pin);
  connect(Light_Driver_445.pin_n, GndDC.p);
  connect(cable_light_445.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_445.y, Light_445.u);
  connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_445.u);
/* Light Connections 444 */
  connect(Light_Driver_444.hPin_L, cable_light_444.pin_p);
  connect(Light_444.p, Light_Driver_444.pin_p);
  connect(Light_444.n, GndDC.p);
  connect(Light_Driver_444.hPin_N, GndAC.pin);
  connect(Light_Driver_444.pin_n, GndDC.p);
  connect(cable_light_444.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_444.y, Light_444.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_444.u);
/* Light Connections 443 */
  connect(Light_Driver_443.hPin_L, cable_light_443.pin_p);
  connect(Light_443.p, Light_Driver_443.pin_p);
  connect(Light_443.n, GndDC.p);
  connect(Light_Driver_443.hPin_N, GndAC.pin);
  connect(Light_Driver_443.pin_n, GndDC.p);
  connect(cable_light_443.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_443.y, Light_443.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_443.u);
/* Light Connections 352 */
  connect(Light_Driver_352.hPin_L, cable_light_352.pin_p);
  connect(Light_352.p, Light_Driver_352.pin_p);
  connect(Light_352.n, GndDC.p);
  connect(Light_Driver_352.hPin_N, GndAC.pin);
  connect(Light_Driver_352.pin_n, GndDC.p);
  connect(cable_light_352.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_352.y, Light_352.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_352.u);
/* Light Connections 346 */
  connect(Light_Driver_346.hPin_L, cable_light_346.pin_p);
  connect(Light_346.p, Light_Driver_346.pin_p);
  connect(Light_346.n, GndDC.p);
  connect(Light_Driver_346.hPin_N, GndAC.pin);
  connect(Light_Driver_346.pin_n, GndDC.p);
  connect(cable_light_346.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_346.y, Light_346.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_346.u);
/* Light Connections 343 */
  connect(Light_Driver_343.hPin_L, cable_light_343.pin_p);
  connect(Light_343.p, Light_Driver_343.pin_p);
  connect(Light_343.n, GndDC.p);
  connect(Light_Driver_343.hPin_N, GndAC.pin);
  connect(Light_Driver_343.pin_n, GndDC.p);
  connect(cable_light_343.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_343.y, Light_343.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_343.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_1B;
