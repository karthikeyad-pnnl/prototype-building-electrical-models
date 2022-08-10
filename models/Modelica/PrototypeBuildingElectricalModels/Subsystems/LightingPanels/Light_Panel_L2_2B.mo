within ;
model Light_Panel_L2_2B
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

  
/* Light Model 546 */
  HPF.DC.Variable_DC_Load Light_546;
  HPF.Cables.NEC_CableModel cable_light_546(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_546(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_546(k=42);
  
/* Light Model 544 */
  HPF.DC.Variable_DC_Load Light_544;
  HPF.Cables.NEC_CableModel cable_light_544(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_544(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_544(k=22);
  
/* Light Model 543 */
  HPF.DC.Variable_DC_Load Light_543;
  HPF.Cables.NEC_CableModel cable_light_543(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_543(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_543(k=22);
  
/* Light Model 390 */
  HPF.DC.Variable_DC_Load Light_390;
  HPF.Cables.NEC_CableModel cable_light_390(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_390(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_390(k=31);
  
/* Light Model 389 */
  HPF.DC.Variable_DC_Load Light_389;
  HPF.Cables.NEC_CableModel cable_light_389(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.57);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_389(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_389(k=31);
  
/* Light Model 388 */
  HPF.DC.Variable_DC_Load Light_388;
  HPF.Cables.NEC_CableModel cable_light_388(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_388(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_388(k=31);
  
/* Light Model 387 */
  HPF.DC.Variable_DC_Load Light_387;
  HPF.Cables.NEC_CableModel cable_light_387(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_387(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_387(k=31);
  
/* Light Model 386 */
  HPF.DC.Variable_DC_Load Light_386;
  HPF.Cables.NEC_CableModel cable_light_386(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.25);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_386(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_386(k=31);
  
/* Light Model 385 */
  HPF.DC.Variable_DC_Load Light_385;
  HPF.Cables.NEC_CableModel cable_light_385(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_385(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_385(k=31);
  
/* Light Model 384 */
  HPF.DC.Variable_DC_Load Light_384;
  HPF.Cables.NEC_CableModel cable_light_384(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_384(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_384(k=31);
  
/* Light Model 383 */
  HPF.DC.Variable_DC_Load Light_383;
  HPF.Cables.NEC_CableModel cable_light_383(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_383(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_383(k=31);
  
/* Light Model 382 */
  HPF.DC.Variable_DC_Load Light_382;
  HPF.Cables.NEC_CableModel cable_light_382(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_382(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_382(k=31);
  
/* Light Model 381 */
  HPF.DC.Variable_DC_Load Light_381;
  HPF.Cables.NEC_CableModel cable_light_381(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.57);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_381(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_381(k=31);
  
/* Light Model 380 */
  HPF.DC.Variable_DC_Load Light_380;
  HPF.Cables.NEC_CableModel cable_light_380(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_380(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_380(k=31);
  
/* Light Model 379 */
  HPF.DC.Variable_DC_Load Light_379;
  HPF.Cables.NEC_CableModel cable_light_379(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_379(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_379(k=31);
  
/* Light Model 378 */
  HPF.DC.Variable_DC_Load Light_378;
  HPF.Cables.NEC_CableModel cable_light_378(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_378(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_378(k=31);
  
/* Light Model 377 */
  HPF.DC.Variable_DC_Load Light_377;
  HPF.Cables.NEC_CableModel cable_light_377(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_377(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_377(k=31);
  
/* Light Model 376 */
  HPF.DC.Variable_DC_Load Light_376;
  HPF.Cables.NEC_CableModel cable_light_376(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_376(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_376(k=31);
  
/* Light Model 375 */
  HPF.DC.Variable_DC_Load Light_375;
  HPF.Cables.NEC_CableModel cable_light_375(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_375(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_375(k=31);
  
/* Light Model 374 */
  HPF.DC.Variable_DC_Load Light_374;
  HPF.Cables.NEC_CableModel cable_light_374(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_374(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_374(k=31);
  
/* Light Model 373 */
  HPF.DC.Variable_DC_Load Light_373;
  HPF.Cables.NEC_CableModel cable_light_373(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.53);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_373(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_373(k=31);
  
/* Light Model 372 */
  HPF.DC.Variable_DC_Load Light_372;
  HPF.Cables.NEC_CableModel cable_light_372(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_372(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_372(k=31);
  
/* Light Model 371 */
  HPF.DC.Variable_DC_Load Light_371;
  HPF.Cables.NEC_CableModel cable_light_371(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_371(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_371(k=31);
  
/* Light Model 370 */
  HPF.DC.Variable_DC_Load Light_370;
  HPF.Cables.NEC_CableModel cable_light_370(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_370(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_370(k=31);
  
/* Light Model 369 */
  HPF.DC.Variable_DC_Load Light_369;
  HPF.Cables.NEC_CableModel cable_light_369(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_369(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_369(k=31);
  
/* Light Model 368 */
  HPF.DC.Variable_DC_Load Light_368;
  HPF.Cables.NEC_CableModel cable_light_368(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.04);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_368(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_368(k=31);
  
/* Light Model 367 */
  HPF.DC.Variable_DC_Load Light_367;
  HPF.Cables.NEC_CableModel cable_light_367(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_367(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_367(k=31);
  
/* Light Model 354 */
  HPF.DC.Variable_DC_Load Light_354;
  HPF.Cables.NEC_CableModel cable_light_354(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_354(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_354(k=35);
  
/* Light Model 351 */
  HPF.DC.Variable_DC_Load Light_351;
  HPF.Cables.NEC_CableModel cable_light_351(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.57);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_351(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_351(k=35);
  
/* Light Model 350 */
  HPF.DC.Variable_DC_Load Light_350;
  HPF.Cables.NEC_CableModel cable_light_350(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_350(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_350(k=28);
  
/* Light Model 349 */
  HPF.DC.Variable_DC_Load Light_349;
  HPF.Cables.NEC_CableModel cable_light_349(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_349(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_349(k=28);
  
/* Light Model 348 */
  HPF.DC.Variable_DC_Load Light_348;
  HPF.Cables.NEC_CableModel cable_light_348(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_348(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_348(k=28);
  
/* Light Model 347 */
  HPF.DC.Variable_DC_Load Light_347;
  HPF.Cables.NEC_CableModel cable_light_347(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_347(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_347(k=28);
  
/* Light Model 332 */
  HPF.DC.Variable_DC_Load Light_332;
  HPF.Cables.NEC_CableModel cable_light_332(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_332(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_332(k=25);
  
/* Light Model 331 */
  HPF.DC.Variable_DC_Load Light_331;
  HPF.Cables.NEC_CableModel cable_light_331(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_331(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_331(k=25);
  
/* Light Model 330 */
  HPF.DC.Variable_DC_Load Light_330;
  HPF.Cables.NEC_CableModel cable_light_330(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_330(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_330(k=25);
  
/* Light Model 329 */
  HPF.DC.Variable_DC_Load Light_329;
  HPF.Cables.NEC_CableModel cable_light_329(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_329(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_329(k=25);
  
/* Light Model 328 */
  HPF.DC.Variable_DC_Load Light_328;
  HPF.Cables.NEC_CableModel cable_light_328(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_328(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_328(k=42);
  
/* Light Model 300 */
  HPF.DC.Variable_DC_Load Light_300;
  HPF.Cables.NEC_CableModel cable_light_300(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=1.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_300(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_300(k=35);
  
/* Light Model 298 */
  HPF.DC.Variable_DC_Load Light_298;
  HPF.Cables.NEC_CableModel cable_light_298(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=3.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_298(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_298(k=35);
  
/* Light Model 297 */
  HPF.DC.Variable_DC_Load Light_297;
  HPF.Cables.NEC_CableModel cable_light_297(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.25);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_297(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_297(k=35);
  
/* Light Model 296 */
  HPF.DC.Variable_DC_Load Light_296;
  HPF.Cables.NEC_CableModel cable_light_296(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_296(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_296(k=42);
  
/* Light Model 295 */
  HPF.DC.Variable_DC_Load Light_295;
  HPF.Cables.NEC_CableModel cable_light_295(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_295(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_295(k=42);
  
/* Light Model 294 */
  HPF.DC.Variable_DC_Load Light_294;
  HPF.Cables.NEC_CableModel cable_light_294(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_294(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_294(k=21);
  
/* Light Model 293 */
  HPF.DC.Variable_DC_Load Light_293;
  HPF.Cables.NEC_CableModel cable_light_293(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_293(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_293(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 546 */
  connect(Light_Driver_546.hPin_L, cable_light_546.pin_p);
  connect(Light_546.p, Light_Driver_546.pin_p);
  connect(Light_546.n, GndDC.p);
  connect(Light_Driver_546.hPin_N, GndAC.pin);
  connect(Light_Driver_546.pin_n, GndDC.p);
  connect(cable_light_546.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_546.y, Light_546.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_546.u);
/* Light Connections 544 */
  connect(Light_Driver_544.hPin_L, cable_light_544.pin_p);
  connect(Light_544.p, Light_Driver_544.pin_p);
  connect(Light_544.n, GndDC.p);
  connect(Light_Driver_544.hPin_N, GndAC.pin);
  connect(Light_Driver_544.pin_n, GndDC.p);
  connect(cable_light_544.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_544.y, Light_544.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_544.u);
/* Light Connections 543 */
  connect(Light_Driver_543.hPin_L, cable_light_543.pin_p);
  connect(Light_543.p, Light_Driver_543.pin_p);
  connect(Light_543.n, GndDC.p);
  connect(Light_Driver_543.hPin_N, GndAC.pin);
  connect(Light_Driver_543.pin_n, GndDC.p);
  connect(cable_light_543.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_543.y, Light_543.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_543.u);
/* Light Connections 390 */
  connect(Light_Driver_390.hPin_L, cable_light_390.pin_p);
  connect(Light_390.p, Light_Driver_390.pin_p);
  connect(Light_390.n, GndDC.p);
  connect(Light_Driver_390.hPin_N, GndAC.pin);
  connect(Light_Driver_390.pin_n, GndDC.p);
  connect(cable_light_390.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_390.y, Light_390.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_390.u);
/* Light Connections 389 */
  connect(Light_Driver_389.hPin_L, cable_light_389.pin_p);
  connect(Light_389.p, Light_Driver_389.pin_p);
  connect(Light_389.n, GndDC.p);
  connect(Light_Driver_389.hPin_N, GndAC.pin);
  connect(Light_Driver_389.pin_n, GndDC.p);
  connect(cable_light_389.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_389.y, Light_389.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_389.u);
/* Light Connections 388 */
  connect(Light_Driver_388.hPin_L, cable_light_388.pin_p);
  connect(Light_388.p, Light_Driver_388.pin_p);
  connect(Light_388.n, GndDC.p);
  connect(Light_Driver_388.hPin_N, GndAC.pin);
  connect(Light_Driver_388.pin_n, GndDC.p);
  connect(cable_light_388.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_388.y, Light_388.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_388.u);
/* Light Connections 387 */
  connect(Light_Driver_387.hPin_L, cable_light_387.pin_p);
  connect(Light_387.p, Light_Driver_387.pin_p);
  connect(Light_387.n, GndDC.p);
  connect(Light_Driver_387.hPin_N, GndAC.pin);
  connect(Light_Driver_387.pin_n, GndDC.p);
  connect(cable_light_387.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_387.y, Light_387.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_387.u);
/* Light Connections 386 */
  connect(Light_Driver_386.hPin_L, cable_light_386.pin_p);
  connect(Light_386.p, Light_Driver_386.pin_p);
  connect(Light_386.n, GndDC.p);
  connect(Light_Driver_386.hPin_N, GndAC.pin);
  connect(Light_Driver_386.pin_n, GndDC.p);
  connect(cable_light_386.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_386.y, Light_386.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_386.u);
/* Light Connections 385 */
  connect(Light_Driver_385.hPin_L, cable_light_385.pin_p);
  connect(Light_385.p, Light_Driver_385.pin_p);
  connect(Light_385.n, GndDC.p);
  connect(Light_Driver_385.hPin_N, GndAC.pin);
  connect(Light_Driver_385.pin_n, GndDC.p);
  connect(cable_light_385.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_385.y, Light_385.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_385.u);
/* Light Connections 384 */
  connect(Light_Driver_384.hPin_L, cable_light_384.pin_p);
  connect(Light_384.p, Light_Driver_384.pin_p);
  connect(Light_384.n, GndDC.p);
  connect(Light_Driver_384.hPin_N, GndAC.pin);
  connect(Light_Driver_384.pin_n, GndDC.p);
  connect(cable_light_384.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_384.y, Light_384.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_384.u);
/* Light Connections 383 */
  connect(Light_Driver_383.hPin_L, cable_light_383.pin_p);
  connect(Light_383.p, Light_Driver_383.pin_p);
  connect(Light_383.n, GndDC.p);
  connect(Light_Driver_383.hPin_N, GndAC.pin);
  connect(Light_Driver_383.pin_n, GndDC.p);
  connect(cable_light_383.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_383.y, Light_383.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_383.u);
/* Light Connections 382 */
  connect(Light_Driver_382.hPin_L, cable_light_382.pin_p);
  connect(Light_382.p, Light_Driver_382.pin_p);
  connect(Light_382.n, GndDC.p);
  connect(Light_Driver_382.hPin_N, GndAC.pin);
  connect(Light_Driver_382.pin_n, GndDC.p);
  connect(cable_light_382.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_382.y, Light_382.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_382.u);
/* Light Connections 381 */
  connect(Light_Driver_381.hPin_L, cable_light_381.pin_p);
  connect(Light_381.p, Light_Driver_381.pin_p);
  connect(Light_381.n, GndDC.p);
  connect(Light_Driver_381.hPin_N, GndAC.pin);
  connect(Light_Driver_381.pin_n, GndDC.p);
  connect(cable_light_381.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_381.y, Light_381.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_381.u);
/* Light Connections 380 */
  connect(Light_Driver_380.hPin_L, cable_light_380.pin_p);
  connect(Light_380.p, Light_Driver_380.pin_p);
  connect(Light_380.n, GndDC.p);
  connect(Light_Driver_380.hPin_N, GndAC.pin);
  connect(Light_Driver_380.pin_n, GndDC.p);
  connect(cable_light_380.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_380.y, Light_380.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_380.u);
/* Light Connections 379 */
  connect(Light_Driver_379.hPin_L, cable_light_379.pin_p);
  connect(Light_379.p, Light_Driver_379.pin_p);
  connect(Light_379.n, GndDC.p);
  connect(Light_Driver_379.hPin_N, GndAC.pin);
  connect(Light_Driver_379.pin_n, GndDC.p);
  connect(cable_light_379.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_379.y, Light_379.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_379.u);
/* Light Connections 378 */
  connect(Light_Driver_378.hPin_L, cable_light_378.pin_p);
  connect(Light_378.p, Light_Driver_378.pin_p);
  connect(Light_378.n, GndDC.p);
  connect(Light_Driver_378.hPin_N, GndAC.pin);
  connect(Light_Driver_378.pin_n, GndDC.p);
  connect(cable_light_378.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_378.y, Light_378.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_378.u);
/* Light Connections 377 */
  connect(Light_Driver_377.hPin_L, cable_light_377.pin_p);
  connect(Light_377.p, Light_Driver_377.pin_p);
  connect(Light_377.n, GndDC.p);
  connect(Light_Driver_377.hPin_N, GndAC.pin);
  connect(Light_Driver_377.pin_n, GndDC.p);
  connect(cable_light_377.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_377.y, Light_377.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_377.u);
/* Light Connections 376 */
  connect(Light_Driver_376.hPin_L, cable_light_376.pin_p);
  connect(Light_376.p, Light_Driver_376.pin_p);
  connect(Light_376.n, GndDC.p);
  connect(Light_Driver_376.hPin_N, GndAC.pin);
  connect(Light_Driver_376.pin_n, GndDC.p);
  connect(cable_light_376.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_376.y, Light_376.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_376.u);
/* Light Connections 375 */
  connect(Light_Driver_375.hPin_L, cable_light_375.pin_p);
  connect(Light_375.p, Light_Driver_375.pin_p);
  connect(Light_375.n, GndDC.p);
  connect(Light_Driver_375.hPin_N, GndAC.pin);
  connect(Light_Driver_375.pin_n, GndDC.p);
  connect(cable_light_375.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_375.y, Light_375.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_375.u);
/* Light Connections 374 */
  connect(Light_Driver_374.hPin_L, cable_light_374.pin_p);
  connect(Light_374.p, Light_Driver_374.pin_p);
  connect(Light_374.n, GndDC.p);
  connect(Light_Driver_374.hPin_N, GndAC.pin);
  connect(Light_Driver_374.pin_n, GndDC.p);
  connect(cable_light_374.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_374.y, Light_374.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_374.u);
/* Light Connections 373 */
  connect(Light_Driver_373.hPin_L, cable_light_373.pin_p);
  connect(Light_373.p, Light_Driver_373.pin_p);
  connect(Light_373.n, GndDC.p);
  connect(Light_Driver_373.hPin_N, GndAC.pin);
  connect(Light_Driver_373.pin_n, GndDC.p);
  connect(cable_light_373.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_373.y, Light_373.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_373.u);
/* Light Connections 372 */
  connect(Light_Driver_372.hPin_L, cable_light_372.pin_p);
  connect(Light_372.p, Light_Driver_372.pin_p);
  connect(Light_372.n, GndDC.p);
  connect(Light_Driver_372.hPin_N, GndAC.pin);
  connect(Light_Driver_372.pin_n, GndDC.p);
  connect(cable_light_372.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_372.y, Light_372.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_372.u);
/* Light Connections 371 */
  connect(Light_Driver_371.hPin_L, cable_light_371.pin_p);
  connect(Light_371.p, Light_Driver_371.pin_p);
  connect(Light_371.n, GndDC.p);
  connect(Light_Driver_371.hPin_N, GndAC.pin);
  connect(Light_Driver_371.pin_n, GndDC.p);
  connect(cable_light_371.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_371.y, Light_371.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_371.u);
/* Light Connections 370 */
  connect(Light_Driver_370.hPin_L, cable_light_370.pin_p);
  connect(Light_370.p, Light_Driver_370.pin_p);
  connect(Light_370.n, GndDC.p);
  connect(Light_Driver_370.hPin_N, GndAC.pin);
  connect(Light_Driver_370.pin_n, GndDC.p);
  connect(cable_light_370.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_370.y, Light_370.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_370.u);
/* Light Connections 369 */
  connect(Light_Driver_369.hPin_L, cable_light_369.pin_p);
  connect(Light_369.p, Light_Driver_369.pin_p);
  connect(Light_369.n, GndDC.p);
  connect(Light_Driver_369.hPin_N, GndAC.pin);
  connect(Light_Driver_369.pin_n, GndDC.p);
  connect(cable_light_369.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_369.y, Light_369.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_369.u);
/* Light Connections 368 */
  connect(Light_Driver_368.hPin_L, cable_light_368.pin_p);
  connect(Light_368.p, Light_Driver_368.pin_p);
  connect(Light_368.n, GndDC.p);
  connect(Light_Driver_368.hPin_N, GndAC.pin);
  connect(Light_Driver_368.pin_n, GndDC.p);
  connect(cable_light_368.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_368.y, Light_368.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_368.u);
/* Light Connections 367 */
  connect(Light_Driver_367.hPin_L, cable_light_367.pin_p);
  connect(Light_367.p, Light_Driver_367.pin_p);
  connect(Light_367.n, GndDC.p);
  connect(Light_Driver_367.hPin_N, GndAC.pin);
  connect(Light_Driver_367.pin_n, GndDC.p);
  connect(cable_light_367.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_367.y, Light_367.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_367.u);
/* Light Connections 354 */
  connect(Light_Driver_354.hPin_L, cable_light_354.pin_p);
  connect(Light_354.p, Light_Driver_354.pin_p);
  connect(Light_354.n, GndDC.p);
  connect(Light_Driver_354.hPin_N, GndAC.pin);
  connect(Light_Driver_354.pin_n, GndDC.p);
  connect(cable_light_354.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_354.y, Light_354.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_354.u);
/* Light Connections 351 */
  connect(Light_Driver_351.hPin_L, cable_light_351.pin_p);
  connect(Light_351.p, Light_Driver_351.pin_p);
  connect(Light_351.n, GndDC.p);
  connect(Light_Driver_351.hPin_N, GndAC.pin);
  connect(Light_Driver_351.pin_n, GndDC.p);
  connect(cable_light_351.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_351.y, Light_351.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_351.u);
/* Light Connections 350 */
  connect(Light_Driver_350.hPin_L, cable_light_350.pin_p);
  connect(Light_350.p, Light_Driver_350.pin_p);
  connect(Light_350.n, GndDC.p);
  connect(Light_Driver_350.hPin_N, GndAC.pin);
  connect(Light_Driver_350.pin_n, GndDC.p);
  connect(cable_light_350.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_350.y, Light_350.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_350.u);
/* Light Connections 349 */
  connect(Light_Driver_349.hPin_L, cable_light_349.pin_p);
  connect(Light_349.p, Light_Driver_349.pin_p);
  connect(Light_349.n, GndDC.p);
  connect(Light_Driver_349.hPin_N, GndAC.pin);
  connect(Light_Driver_349.pin_n, GndDC.p);
  connect(cable_light_349.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_349.y, Light_349.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_349.u);
/* Light Connections 348 */
  connect(Light_Driver_348.hPin_L, cable_light_348.pin_p);
  connect(Light_348.p, Light_Driver_348.pin_p);
  connect(Light_348.n, GndDC.p);
  connect(Light_Driver_348.hPin_N, GndAC.pin);
  connect(Light_Driver_348.pin_n, GndDC.p);
  connect(cable_light_348.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_348.y, Light_348.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_348.u);
/* Light Connections 347 */
  connect(Light_Driver_347.hPin_L, cable_light_347.pin_p);
  connect(Light_347.p, Light_Driver_347.pin_p);
  connect(Light_347.n, GndDC.p);
  connect(Light_Driver_347.hPin_N, GndAC.pin);
  connect(Light_Driver_347.pin_n, GndDC.p);
  connect(cable_light_347.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_347.y, Light_347.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_347.u);
/* Light Connections 332 */
  connect(Light_Driver_332.hPin_L, cable_light_332.pin_p);
  connect(Light_332.p, Light_Driver_332.pin_p);
  connect(Light_332.n, GndDC.p);
  connect(Light_Driver_332.hPin_N, GndAC.pin);
  connect(Light_Driver_332.pin_n, GndDC.p);
  connect(cable_light_332.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_332.y, Light_332.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_332.u);
/* Light Connections 331 */
  connect(Light_Driver_331.hPin_L, cable_light_331.pin_p);
  connect(Light_331.p, Light_Driver_331.pin_p);
  connect(Light_331.n, GndDC.p);
  connect(Light_Driver_331.hPin_N, GndAC.pin);
  connect(Light_Driver_331.pin_n, GndDC.p);
  connect(cable_light_331.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_331.y, Light_331.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_331.u);
/* Light Connections 330 */
  connect(Light_Driver_330.hPin_L, cable_light_330.pin_p);
  connect(Light_330.p, Light_Driver_330.pin_p);
  connect(Light_330.n, GndDC.p);
  connect(Light_Driver_330.hPin_N, GndAC.pin);
  connect(Light_Driver_330.pin_n, GndDC.p);
  connect(cable_light_330.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_330.y, Light_330.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_330.u);
/* Light Connections 329 */
  connect(Light_Driver_329.hPin_L, cable_light_329.pin_p);
  connect(Light_329.p, Light_Driver_329.pin_p);
  connect(Light_329.n, GndDC.p);
  connect(Light_Driver_329.hPin_N, GndAC.pin);
  connect(Light_Driver_329.pin_n, GndDC.p);
  connect(cable_light_329.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_329.y, Light_329.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_329.u);
/* Light Connections 328 */
  connect(Light_Driver_328.hPin_L, cable_light_328.pin_p);
  connect(Light_328.p, Light_Driver_328.pin_p);
  connect(Light_328.n, GndDC.p);
  connect(Light_Driver_328.hPin_N, GndAC.pin);
  connect(Light_Driver_328.pin_n, GndDC.p);
  connect(cable_light_328.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_328.y, Light_328.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_328.u);
/* Light Connections 300 */
  connect(Light_Driver_300.hPin_L, cable_light_300.pin_p);
  connect(Light_300.p, Light_Driver_300.pin_p);
  connect(Light_300.n, GndDC.p);
  connect(Light_Driver_300.hPin_N, GndAC.pin);
  connect(Light_Driver_300.pin_n, GndDC.p);
  connect(cable_light_300.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_300.y, Light_300.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_300.u);
/* Light Connections 298 */
  connect(Light_Driver_298.hPin_L, cable_light_298.pin_p);
  connect(Light_298.p, Light_Driver_298.pin_p);
  connect(Light_298.n, GndDC.p);
  connect(Light_Driver_298.hPin_N, GndAC.pin);
  connect(Light_Driver_298.pin_n, GndDC.p);
  connect(cable_light_298.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_298.y, Light_298.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_298.u);
/* Light Connections 297 */
  connect(Light_Driver_297.hPin_L, cable_light_297.pin_p);
  connect(Light_297.p, Light_Driver_297.pin_p);
  connect(Light_297.n, GndDC.p);
  connect(Light_Driver_297.hPin_N, GndAC.pin);
  connect(Light_Driver_297.pin_n, GndDC.p);
  connect(cable_light_297.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_297.y, Light_297.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_297.u);
/* Light Connections 296 */
  connect(Light_Driver_296.hPin_L, cable_light_296.pin_p);
  connect(Light_296.p, Light_Driver_296.pin_p);
  connect(Light_296.n, GndDC.p);
  connect(Light_Driver_296.hPin_N, GndAC.pin);
  connect(Light_Driver_296.pin_n, GndDC.p);
  connect(cable_light_296.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_296.y, Light_296.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_296.u);
/* Light Connections 295 */
  connect(Light_Driver_295.hPin_L, cable_light_295.pin_p);
  connect(Light_295.p, Light_Driver_295.pin_p);
  connect(Light_295.n, GndDC.p);
  connect(Light_Driver_295.hPin_N, GndAC.pin);
  connect(Light_Driver_295.pin_n, GndDC.p);
  connect(cable_light_295.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_295.y, Light_295.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_295.u);
/* Light Connections 294 */
  connect(Light_Driver_294.hPin_L, cable_light_294.pin_p);
  connect(Light_294.p, Light_Driver_294.pin_p);
  connect(Light_294.n, GndDC.p);
  connect(Light_Driver_294.hPin_N, GndAC.pin);
  connect(Light_Driver_294.pin_n, GndDC.p);
  connect(cable_light_294.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_294.y, Light_294.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_294.u);
/* Light Connections 293 */
  connect(Light_Driver_293.hPin_L, cable_light_293.pin_p);
  connect(Light_293.p, Light_Driver_293.pin_p);
  connect(Light_293.n, GndDC.p);
  connect(Light_Driver_293.hPin_N, GndAC.pin);
  connect(Light_Driver_293.pin_n, GndDC.p);
  connect(cable_light_293.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_293.y, Light_293.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_293.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_2B;
