within ;
model Light_Panel_L2_2A
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

  
/* Light Model 563 */
  HPF.DC.Variable_DC_Load Light_563;
  HPF.Cables.NEC_CableModel cable_light_563(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_563(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_563(k=25);
  
/* Light Model 562 */
  HPF.DC.Variable_DC_Load Light_562;
  HPF.Cables.NEC_CableModel cable_light_562(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_562(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_562(k=25);
  
/* Light Model 561 */
  HPF.DC.Variable_DC_Load Light_561;
  HPF.Cables.NEC_CableModel cable_light_561(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_561(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_561(k=25);
  
/* Light Model 560 */
  HPF.DC.Variable_DC_Load Light_560;
  HPF.Cables.NEC_CableModel cable_light_560(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_560(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_560(k=25);
  
/* Light Model 559 */
  HPF.DC.Variable_DC_Load Light_559;
  HPF.Cables.NEC_CableModel cable_light_559(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.04);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_559(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_559(k=25);
  
/* Light Model 558 */
  HPF.DC.Variable_DC_Load Light_558;
  HPF.Cables.NEC_CableModel cable_light_558(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_558(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_558(k=25);
  
/* Light Model 557 */
  HPF.DC.Variable_DC_Load Light_557;
  HPF.Cables.NEC_CableModel cable_light_557(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_557(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_557(k=25);
  
/* Light Model 422 */
  HPF.DC.Variable_DC_Load Light_422;
  HPF.Cables.NEC_CableModel cable_light_422(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_422(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_422(k=31);
  
/* Light Model 417 */
  HPF.DC.Variable_DC_Load Light_417;
  HPF.Cables.NEC_CableModel cable_light_417(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_417(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_417(k=31);
  
/* Light Model 412 */
  HPF.DC.Variable_DC_Load Light_412;
  HPF.Cables.NEC_CableModel cable_light_412(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_412(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_412(k=31);
  
/* Light Model 411 */
  HPF.DC.Variable_DC_Load Light_411;
  HPF.Cables.NEC_CableModel cable_light_411(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_411(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_411(k=31);
  
/* Light Model 410 */
  HPF.DC.Variable_DC_Load Light_410;
  HPF.Cables.NEC_CableModel cable_light_410(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_410(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_410(k=31);
  
/* Light Model 409 */
  HPF.DC.Variable_DC_Load Light_409;
  HPF.Cables.NEC_CableModel cable_light_409(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_409(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_409(k=31);
  
/* Light Model 408 */
  HPF.DC.Variable_DC_Load Light_408;
  HPF.Cables.NEC_CableModel cable_light_408(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_408(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_408(k=31);
  
/* Light Model 407 */
  HPF.DC.Variable_DC_Load Light_407;
  HPF.Cables.NEC_CableModel cable_light_407(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_407(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_407(k=31);
  
/* Light Model 406 */
  HPF.DC.Variable_DC_Load Light_406;
  HPF.Cables.NEC_CableModel cable_light_406(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_406(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_406(k=31);
  
/* Light Model 405 */
  HPF.DC.Variable_DC_Load Light_405;
  HPF.Cables.NEC_CableModel cable_light_405(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_405(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_405(k=31);
  
/* Light Model 404 */
  HPF.DC.Variable_DC_Load Light_404;
  HPF.Cables.NEC_CableModel cable_light_404(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_404(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_404(k=31);
  
/* Light Model 403 */
  HPF.DC.Variable_DC_Load Light_403;
  HPF.Cables.NEC_CableModel cable_light_403(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_403(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_403(k=31);
  
/* Light Model 402 */
  HPF.DC.Variable_DC_Load Light_402;
  HPF.Cables.NEC_CableModel cable_light_402(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.57);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_402(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_402(k=31);
  
/* Light Model 401 */
  HPF.DC.Variable_DC_Load Light_401;
  HPF.Cables.NEC_CableModel cable_light_401(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_401(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_401(k=31);
  
/* Light Model 400 */
  HPF.DC.Variable_DC_Load Light_400;
  HPF.Cables.NEC_CableModel cable_light_400(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_400(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_400(k=31);
  
/* Light Model 399 */
  HPF.DC.Variable_DC_Load Light_399;
  HPF.Cables.NEC_CableModel cable_light_399(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_399(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_399(k=31);
  
/* Light Model 398 */
  HPF.DC.Variable_DC_Load Light_398;
  HPF.Cables.NEC_CableModel cable_light_398(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.53);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_398(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_398(k=31);
  
/* Light Model 397 */
  HPF.DC.Variable_DC_Load Light_397;
  HPF.Cables.NEC_CableModel cable_light_397(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_397(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_397(k=31);
  
/* Light Model 396 */
  HPF.DC.Variable_DC_Load Light_396;
  HPF.Cables.NEC_CableModel cable_light_396(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_396(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_396(k=31);
  
/* Light Model 395 */
  HPF.DC.Variable_DC_Load Light_395;
  HPF.Cables.NEC_CableModel cable_light_395(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_395(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_395(k=31);
  
/* Light Model 394 */
  HPF.DC.Variable_DC_Load Light_394;
  HPF.Cables.NEC_CableModel cable_light_394(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_394(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_394(k=31);
  
/* Light Model 393 */
  HPF.DC.Variable_DC_Load Light_393;
  HPF.Cables.NEC_CableModel cable_light_393(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_393(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_393(k=31);
  
/* Light Model 392 */
  HPF.DC.Variable_DC_Load Light_392;
  HPF.Cables.NEC_CableModel cable_light_392(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.91);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_392(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_392(k=31);
  
/* Light Model 391 */
  HPF.DC.Variable_DC_Load Light_391;
  HPF.Cables.NEC_CableModel cable_light_391(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.22);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_391(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_391(k=31);
  
/* Light Model 353 */
  HPF.DC.Variable_DC_Load Light_353;
  HPF.Cables.NEC_CableModel cable_light_353(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_353(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_353(k=35);
  
/* Light Model 345 */
  HPF.DC.Variable_DC_Load Light_345;
  HPF.Cables.NEC_CableModel cable_light_345(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_345(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_345(k=28);
  
/* Light Model 344 */
  HPF.DC.Variable_DC_Load Light_344;
  HPF.Cables.NEC_CableModel cable_light_344(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_344(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_344(k=28);
  
/* Light Model 342 */
  HPF.DC.Variable_DC_Load Light_342;
  HPF.Cables.NEC_CableModel cable_light_342(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_342(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_342(k=22);
  
/* Light Model 341 */
  HPF.DC.Variable_DC_Load Light_341;
  HPF.Cables.NEC_CableModel cable_light_341(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_341(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_341(k=42);
  
/* Light Model 340 */
  HPF.DC.Variable_DC_Load Light_340;
  HPF.Cables.NEC_CableModel cable_light_340(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_340(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_340(k=42);
  
/* Light Model 339 */
  HPF.DC.Variable_DC_Load Light_339;
  HPF.Cables.NEC_CableModel cable_light_339(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_339(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_339(k=34);
  
/* Light Model 338 */
  HPF.DC.Variable_DC_Load Light_338;
  HPF.Cables.NEC_CableModel cable_light_338(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_338(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_338(k=34);
  
/* Light Model 337 */
  HPF.DC.Variable_DC_Load Light_337;
  HPF.Cables.NEC_CableModel cable_light_337(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_337(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_337(k=34);
  
/* Light Model 336 */
  HPF.DC.Variable_DC_Load Light_336;
  HPF.Cables.NEC_CableModel cable_light_336(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_336(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_336(k=40);
  
/* Light Model 335 */
  HPF.DC.Variable_DC_Load Light_335;
  HPF.Cables.NEC_CableModel cable_light_335(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_335(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_335(k=40);
  
/* Light Model 334 */
  HPF.DC.Variable_DC_Load Light_334;
  HPF.Cables.NEC_CableModel cable_light_334(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_334(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_334(k=40);
  
/* Light Model 333 */
  HPF.DC.Variable_DC_Load Light_333;
  HPF.Cables.NEC_CableModel cable_light_333(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_333(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_333(k=40);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 563 */
  connect(Light_Driver_563.hPin_L, cable_light_563.pin_p);
  connect(Light_563.p, Light_Driver_563.pin_p);
  connect(Light_563.n, GndDC.p);
  connect(Light_Driver_563.hPin_N, GndAC.pin);
  connect(Light_Driver_563.pin_n, GndDC.p);
  connect(cable_light_563.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_563.y, Light_563.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_563.u);
/* Light Connections 562 */
  connect(Light_Driver_562.hPin_L, cable_light_562.pin_p);
  connect(Light_562.p, Light_Driver_562.pin_p);
  connect(Light_562.n, GndDC.p);
  connect(Light_Driver_562.hPin_N, GndAC.pin);
  connect(Light_Driver_562.pin_n, GndDC.p);
  connect(cable_light_562.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_562.y, Light_562.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_562.u);
/* Light Connections 561 */
  connect(Light_Driver_561.hPin_L, cable_light_561.pin_p);
  connect(Light_561.p, Light_Driver_561.pin_p);
  connect(Light_561.n, GndDC.p);
  connect(Light_Driver_561.hPin_N, GndAC.pin);
  connect(Light_Driver_561.pin_n, GndDC.p);
  connect(cable_light_561.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_561.y, Light_561.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_561.u);
/* Light Connections 560 */
  connect(Light_Driver_560.hPin_L, cable_light_560.pin_p);
  connect(Light_560.p, Light_Driver_560.pin_p);
  connect(Light_560.n, GndDC.p);
  connect(Light_Driver_560.hPin_N, GndAC.pin);
  connect(Light_Driver_560.pin_n, GndDC.p);
  connect(cable_light_560.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_560.y, Light_560.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_560.u);
/* Light Connections 559 */
  connect(Light_Driver_559.hPin_L, cable_light_559.pin_p);
  connect(Light_559.p, Light_Driver_559.pin_p);
  connect(Light_559.n, GndDC.p);
  connect(Light_Driver_559.hPin_N, GndAC.pin);
  connect(Light_Driver_559.pin_n, GndDC.p);
  connect(cable_light_559.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_559.y, Light_559.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_559.u);
/* Light Connections 558 */
  connect(Light_Driver_558.hPin_L, cable_light_558.pin_p);
  connect(Light_558.p, Light_Driver_558.pin_p);
  connect(Light_558.n, GndDC.p);
  connect(Light_Driver_558.hPin_N, GndAC.pin);
  connect(Light_Driver_558.pin_n, GndDC.p);
  connect(cable_light_558.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_558.y, Light_558.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_558.u);
/* Light Connections 557 */
  connect(Light_Driver_557.hPin_L, cable_light_557.pin_p);
  connect(Light_557.p, Light_Driver_557.pin_p);
  connect(Light_557.n, GndDC.p);
  connect(Light_Driver_557.hPin_N, GndAC.pin);
  connect(Light_Driver_557.pin_n, GndDC.p);
  connect(cable_light_557.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_557.y, Light_557.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_557.u);
/* Light Connections 422 */
  connect(Light_Driver_422.hPin_L, cable_light_422.pin_p);
  connect(Light_422.p, Light_Driver_422.pin_p);
  connect(Light_422.n, GndDC.p);
  connect(Light_Driver_422.hPin_N, GndAC.pin);
  connect(Light_Driver_422.pin_n, GndDC.p);
  connect(cable_light_422.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_422.y, Light_422.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_422.u);
/* Light Connections 417 */
  connect(Light_Driver_417.hPin_L, cable_light_417.pin_p);
  connect(Light_417.p, Light_Driver_417.pin_p);
  connect(Light_417.n, GndDC.p);
  connect(Light_Driver_417.hPin_N, GndAC.pin);
  connect(Light_Driver_417.pin_n, GndDC.p);
  connect(cable_light_417.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_417.y, Light_417.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_417.u);
/* Light Connections 412 */
  connect(Light_Driver_412.hPin_L, cable_light_412.pin_p);
  connect(Light_412.p, Light_Driver_412.pin_p);
  connect(Light_412.n, GndDC.p);
  connect(Light_Driver_412.hPin_N, GndAC.pin);
  connect(Light_Driver_412.pin_n, GndDC.p);
  connect(cable_light_412.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_412.y, Light_412.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_412.u);
/* Light Connections 411 */
  connect(Light_Driver_411.hPin_L, cable_light_411.pin_p);
  connect(Light_411.p, Light_Driver_411.pin_p);
  connect(Light_411.n, GndDC.p);
  connect(Light_Driver_411.hPin_N, GndAC.pin);
  connect(Light_Driver_411.pin_n, GndDC.p);
  connect(cable_light_411.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_411.y, Light_411.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_411.u);
/* Light Connections 410 */
  connect(Light_Driver_410.hPin_L, cable_light_410.pin_p);
  connect(Light_410.p, Light_Driver_410.pin_p);
  connect(Light_410.n, GndDC.p);
  connect(Light_Driver_410.hPin_N, GndAC.pin);
  connect(Light_Driver_410.pin_n, GndDC.p);
  connect(cable_light_410.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_410.y, Light_410.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_410.u);
/* Light Connections 409 */
  connect(Light_Driver_409.hPin_L, cable_light_409.pin_p);
  connect(Light_409.p, Light_Driver_409.pin_p);
  connect(Light_409.n, GndDC.p);
  connect(Light_Driver_409.hPin_N, GndAC.pin);
  connect(Light_Driver_409.pin_n, GndDC.p);
  connect(cable_light_409.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_409.y, Light_409.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_409.u);
/* Light Connections 408 */
  connect(Light_Driver_408.hPin_L, cable_light_408.pin_p);
  connect(Light_408.p, Light_Driver_408.pin_p);
  connect(Light_408.n, GndDC.p);
  connect(Light_Driver_408.hPin_N, GndAC.pin);
  connect(Light_Driver_408.pin_n, GndDC.p);
  connect(cable_light_408.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_408.y, Light_408.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_408.u);
/* Light Connections 407 */
  connect(Light_Driver_407.hPin_L, cable_light_407.pin_p);
  connect(Light_407.p, Light_Driver_407.pin_p);
  connect(Light_407.n, GndDC.p);
  connect(Light_Driver_407.hPin_N, GndAC.pin);
  connect(Light_Driver_407.pin_n, GndDC.p);
  connect(cable_light_407.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_407.y, Light_407.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_407.u);
/* Light Connections 406 */
  connect(Light_Driver_406.hPin_L, cable_light_406.pin_p);
  connect(Light_406.p, Light_Driver_406.pin_p);
  connect(Light_406.n, GndDC.p);
  connect(Light_Driver_406.hPin_N, GndAC.pin);
  connect(Light_Driver_406.pin_n, GndDC.p);
  connect(cable_light_406.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_406.y, Light_406.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_406.u);
/* Light Connections 405 */
  connect(Light_Driver_405.hPin_L, cable_light_405.pin_p);
  connect(Light_405.p, Light_Driver_405.pin_p);
  connect(Light_405.n, GndDC.p);
  connect(Light_Driver_405.hPin_N, GndAC.pin);
  connect(Light_Driver_405.pin_n, GndDC.p);
  connect(cable_light_405.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_405.y, Light_405.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_405.u);
/* Light Connections 404 */
  connect(Light_Driver_404.hPin_L, cable_light_404.pin_p);
  connect(Light_404.p, Light_Driver_404.pin_p);
  connect(Light_404.n, GndDC.p);
  connect(Light_Driver_404.hPin_N, GndAC.pin);
  connect(Light_Driver_404.pin_n, GndDC.p);
  connect(cable_light_404.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_404.y, Light_404.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_404.u);
/* Light Connections 403 */
  connect(Light_Driver_403.hPin_L, cable_light_403.pin_p);
  connect(Light_403.p, Light_Driver_403.pin_p);
  connect(Light_403.n, GndDC.p);
  connect(Light_Driver_403.hPin_N, GndAC.pin);
  connect(Light_Driver_403.pin_n, GndDC.p);
  connect(cable_light_403.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_403.y, Light_403.u);
  connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_403.u);
/* Light Connections 402 */
  connect(Light_Driver_402.hPin_L, cable_light_402.pin_p);
  connect(Light_402.p, Light_Driver_402.pin_p);
  connect(Light_402.n, GndDC.p);
  connect(Light_Driver_402.hPin_N, GndAC.pin);
  connect(Light_Driver_402.pin_n, GndDC.p);
  connect(cable_light_402.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_402.y, Light_402.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_402.u);
/* Light Connections 401 */
  connect(Light_Driver_401.hPin_L, cable_light_401.pin_p);
  connect(Light_401.p, Light_Driver_401.pin_p);
  connect(Light_401.n, GndDC.p);
  connect(Light_Driver_401.hPin_N, GndAC.pin);
  connect(Light_Driver_401.pin_n, GndDC.p);
  connect(cable_light_401.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_401.y, Light_401.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_401.u);
/* Light Connections 400 */
  connect(Light_Driver_400.hPin_L, cable_light_400.pin_p);
  connect(Light_400.p, Light_Driver_400.pin_p);
  connect(Light_400.n, GndDC.p);
  connect(Light_Driver_400.hPin_N, GndAC.pin);
  connect(Light_Driver_400.pin_n, GndDC.p);
  connect(cable_light_400.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_400.y, Light_400.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_400.u);
/* Light Connections 399 */
  connect(Light_Driver_399.hPin_L, cable_light_399.pin_p);
  connect(Light_399.p, Light_Driver_399.pin_p);
  connect(Light_399.n, GndDC.p);
  connect(Light_Driver_399.hPin_N, GndAC.pin);
  connect(Light_Driver_399.pin_n, GndDC.p);
  connect(cable_light_399.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_399.y, Light_399.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_399.u);
/* Light Connections 398 */
  connect(Light_Driver_398.hPin_L, cable_light_398.pin_p);
  connect(Light_398.p, Light_Driver_398.pin_p);
  connect(Light_398.n, GndDC.p);
  connect(Light_Driver_398.hPin_N, GndAC.pin);
  connect(Light_Driver_398.pin_n, GndDC.p);
  connect(cable_light_398.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_398.y, Light_398.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_398.u);
/* Light Connections 397 */
  connect(Light_Driver_397.hPin_L, cable_light_397.pin_p);
  connect(Light_397.p, Light_Driver_397.pin_p);
  connect(Light_397.n, GndDC.p);
  connect(Light_Driver_397.hPin_N, GndAC.pin);
  connect(Light_Driver_397.pin_n, GndDC.p);
  connect(cable_light_397.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_397.y, Light_397.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_397.u);
/* Light Connections 396 */
  connect(Light_Driver_396.hPin_L, cable_light_396.pin_p);
  connect(Light_396.p, Light_Driver_396.pin_p);
  connect(Light_396.n, GndDC.p);
  connect(Light_Driver_396.hPin_N, GndAC.pin);
  connect(Light_Driver_396.pin_n, GndDC.p);
  connect(cable_light_396.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_396.y, Light_396.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_396.u);
/* Light Connections 395 */
  connect(Light_Driver_395.hPin_L, cable_light_395.pin_p);
  connect(Light_395.p, Light_Driver_395.pin_p);
  connect(Light_395.n, GndDC.p);
  connect(Light_Driver_395.hPin_N, GndAC.pin);
  connect(Light_Driver_395.pin_n, GndDC.p);
  connect(cable_light_395.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_395.y, Light_395.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_395.u);
/* Light Connections 394 */
  connect(Light_Driver_394.hPin_L, cable_light_394.pin_p);
  connect(Light_394.p, Light_Driver_394.pin_p);
  connect(Light_394.n, GndDC.p);
  connect(Light_Driver_394.hPin_N, GndAC.pin);
  connect(Light_Driver_394.pin_n, GndDC.p);
  connect(cable_light_394.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_394.y, Light_394.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_394.u);
/* Light Connections 393 */
  connect(Light_Driver_393.hPin_L, cable_light_393.pin_p);
  connect(Light_393.p, Light_Driver_393.pin_p);
  connect(Light_393.n, GndDC.p);
  connect(Light_Driver_393.hPin_N, GndAC.pin);
  connect(Light_Driver_393.pin_n, GndDC.p);
  connect(cable_light_393.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_393.y, Light_393.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_393.u);
/* Light Connections 392 */
  connect(Light_Driver_392.hPin_L, cable_light_392.pin_p);
  connect(Light_392.p, Light_Driver_392.pin_p);
  connect(Light_392.n, GndDC.p);
  connect(Light_Driver_392.hPin_N, GndAC.pin);
  connect(Light_Driver_392.pin_n, GndDC.p);
  connect(cable_light_392.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_392.y, Light_392.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_392.u);
/* Light Connections 391 */
  connect(Light_Driver_391.hPin_L, cable_light_391.pin_p);
  connect(Light_391.p, Light_Driver_391.pin_p);
  connect(Light_391.n, GndDC.p);
  connect(Light_Driver_391.hPin_N, GndAC.pin);
  connect(Light_Driver_391.pin_n, GndDC.p);
  connect(cable_light_391.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_391.y, Light_391.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_391.u);
/* Light Connections 353 */
  connect(Light_Driver_353.hPin_L, cable_light_353.pin_p);
  connect(Light_353.p, Light_Driver_353.pin_p);
  connect(Light_353.n, GndDC.p);
  connect(Light_Driver_353.hPin_N, GndAC.pin);
  connect(Light_Driver_353.pin_n, GndDC.p);
  connect(cable_light_353.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_353.y, Light_353.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_353.u);
/* Light Connections 345 */
  connect(Light_Driver_345.hPin_L, cable_light_345.pin_p);
  connect(Light_345.p, Light_Driver_345.pin_p);
  connect(Light_345.n, GndDC.p);
  connect(Light_Driver_345.hPin_N, GndAC.pin);
  connect(Light_Driver_345.pin_n, GndDC.p);
  connect(cable_light_345.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_345.y, Light_345.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_345.u);
/* Light Connections 344 */
  connect(Light_Driver_344.hPin_L, cable_light_344.pin_p);
  connect(Light_344.p, Light_Driver_344.pin_p);
  connect(Light_344.n, GndDC.p);
  connect(Light_Driver_344.hPin_N, GndAC.pin);
  connect(Light_Driver_344.pin_n, GndDC.p);
  connect(cable_light_344.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_344.y, Light_344.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_344.u);
/* Light Connections 342 */
  connect(Light_Driver_342.hPin_L, cable_light_342.pin_p);
  connect(Light_342.p, Light_Driver_342.pin_p);
  connect(Light_342.n, GndDC.p);
  connect(Light_Driver_342.hPin_N, GndAC.pin);
  connect(Light_Driver_342.pin_n, GndDC.p);
  connect(cable_light_342.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_342.y, Light_342.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_342.u);
/* Light Connections 341 */
  connect(Light_Driver_341.hPin_L, cable_light_341.pin_p);
  connect(Light_341.p, Light_Driver_341.pin_p);
  connect(Light_341.n, GndDC.p);
  connect(Light_Driver_341.hPin_N, GndAC.pin);
  connect(Light_Driver_341.pin_n, GndDC.p);
  connect(cable_light_341.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_341.y, Light_341.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_341.u);
/* Light Connections 340 */
  connect(Light_Driver_340.hPin_L, cable_light_340.pin_p);
  connect(Light_340.p, Light_Driver_340.pin_p);
  connect(Light_340.n, GndDC.p);
  connect(Light_Driver_340.hPin_N, GndAC.pin);
  connect(Light_Driver_340.pin_n, GndDC.p);
  connect(cable_light_340.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_340.y, Light_340.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_340.u);
/* Light Connections 339 */
  connect(Light_Driver_339.hPin_L, cable_light_339.pin_p);
  connect(Light_339.p, Light_Driver_339.pin_p);
  connect(Light_339.n, GndDC.p);
  connect(Light_Driver_339.hPin_N, GndAC.pin);
  connect(Light_Driver_339.pin_n, GndDC.p);
  connect(cable_light_339.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_339.y, Light_339.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_339.u);
/* Light Connections 338 */
  connect(Light_Driver_338.hPin_L, cable_light_338.pin_p);
  connect(Light_338.p, Light_Driver_338.pin_p);
  connect(Light_338.n, GndDC.p);
  connect(Light_Driver_338.hPin_N, GndAC.pin);
  connect(Light_Driver_338.pin_n, GndDC.p);
  connect(cable_light_338.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_338.y, Light_338.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_338.u);
/* Light Connections 337 */
  connect(Light_Driver_337.hPin_L, cable_light_337.pin_p);
  connect(Light_337.p, Light_Driver_337.pin_p);
  connect(Light_337.n, GndDC.p);
  connect(Light_Driver_337.hPin_N, GndAC.pin);
  connect(Light_Driver_337.pin_n, GndDC.p);
  connect(cable_light_337.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_337.y, Light_337.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_337.u);
/* Light Connections 336 */
  connect(Light_Driver_336.hPin_L, cable_light_336.pin_p);
  connect(Light_336.p, Light_Driver_336.pin_p);
  connect(Light_336.n, GndDC.p);
  connect(Light_Driver_336.hPin_N, GndAC.pin);
  connect(Light_Driver_336.pin_n, GndDC.p);
  connect(cable_light_336.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_336.y, Light_336.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_336.u);
/* Light Connections 335 */
  connect(Light_Driver_335.hPin_L, cable_light_335.pin_p);
  connect(Light_335.p, Light_Driver_335.pin_p);
  connect(Light_335.n, GndDC.p);
  connect(Light_Driver_335.hPin_N, GndAC.pin);
  connect(Light_Driver_335.pin_n, GndDC.p);
  connect(cable_light_335.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_335.y, Light_335.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_335.u);
/* Light Connections 334 */
  connect(Light_Driver_334.hPin_L, cable_light_334.pin_p);
  connect(Light_334.p, Light_Driver_334.pin_p);
  connect(Light_334.n, GndDC.p);
  connect(Light_Driver_334.hPin_N, GndAC.pin);
  connect(Light_Driver_334.pin_n, GndDC.p);
  connect(cable_light_334.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_334.y, Light_334.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_334.u);
/* Light Connections 333 */
  connect(Light_Driver_333.hPin_L, cable_light_333.pin_p);
  connect(Light_333.p, Light_Driver_333.pin_p);
  connect(Light_333.n, GndDC.p);
  connect(Light_Driver_333.hPin_N, GndAC.pin);
  connect(Light_Driver_333.pin_n, GndDC.p);
  connect(cable_light_333.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_333.y, Light_333.u);
  connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_333.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L2_2A;
