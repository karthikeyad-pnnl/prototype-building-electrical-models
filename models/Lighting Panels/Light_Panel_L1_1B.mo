within ;
model Light_Panel_L1_1B
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

  
/* Light Model 286 */
  HPF.DC.Variable_DC_Load Light_286;
  HPF.Cables.NEC_CableModel cable_light_286(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.1);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_286(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_286(k=22);
  
/* Light Model 285 */
  HPF.DC.Variable_DC_Load Light_285;
  HPF.Cables.NEC_CableModel cable_light_285(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_285(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_285(k=34);
  
/* Light Model 284 */
  HPF.DC.Variable_DC_Load Light_284;
  HPF.Cables.NEC_CableModel cable_light_284(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_284(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_284(k=34);
  
/* Light Model 283 */
  HPF.DC.Variable_DC_Load Light_283;
  HPF.Cables.NEC_CableModel cable_light_283(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_283(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_283(k=34);
  
/* Light Model 282 */
  HPF.DC.Variable_DC_Load Light_282;
  HPF.Cables.NEC_CableModel cable_light_282(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_282(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_282(k=34);
  
/* Light Model 281 */
  HPF.DC.Variable_DC_Load Light_281;
  HPF.Cables.NEC_CableModel cable_light_281(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_281(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_281(k=34);
  
/* Light Model 280 */
  HPF.DC.Variable_DC_Load Light_280;
  HPF.Cables.NEC_CableModel cable_light_280(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_280(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_280(k=25);
  
/* Light Model 279 */
  HPF.DC.Variable_DC_Load Light_279;
  HPF.Cables.NEC_CableModel cable_light_279(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_279(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_279(k=25);
  
/* Light Model 198 */
  HPF.DC.Variable_DC_Load Light_198;
  HPF.Cables.NEC_CableModel cable_light_198(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_198(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_198(k=31);
  
/* Light Model 197 */
  HPF.DC.Variable_DC_Load Light_197;
  HPF.Cables.NEC_CableModel cable_light_197(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_197(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_197(k=31);
  
/* Light Model 196 */
  HPF.DC.Variable_DC_Load Light_196;
  HPF.Cables.NEC_CableModel cable_light_196(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_196(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_196(k=31);
  
/* Light Model 188 */
  HPF.DC.Variable_DC_Load Light_188;
  HPF.Cables.NEC_CableModel cable_light_188(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_188(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_188(k=40);
  
/* Light Model 99 */
  HPF.DC.Variable_DC_Load Light_99;
  HPF.Cables.NEC_CableModel cable_light_99(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_99(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_99(k=25);
  
/* Light Model 98 */
  HPF.DC.Variable_DC_Load Light_98;
  HPF.Cables.NEC_CableModel cable_light_98(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_98(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_98(k=25);
  
/* Light Model 97 */
  HPF.DC.Variable_DC_Load Light_97;
  HPF.Cables.NEC_CableModel cable_light_97(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_97(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_97(k=25);
  
/* Light Model 96 */
  HPF.DC.Variable_DC_Load Light_96;
  HPF.Cables.NEC_CableModel cable_light_96(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_96(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_96(k=25);
  
/* Light Model 52 */
  HPF.DC.Variable_DC_Load Light_52;
  HPF.Cables.NEC_CableModel cable_light_52(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_52(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_52(k=21);
  
/* Light Model 51 */
  HPF.DC.Variable_DC_Load Light_51;
  HPF.Cables.NEC_CableModel cable_light_51(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_51(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_51(k=21);
  
/* Light Model 50 */
  HPF.DC.Variable_DC_Load Light_50;
  HPF.Cables.NEC_CableModel cable_light_50(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_50(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_50(k=21);
  
/* Light Model 49 */
  HPF.DC.Variable_DC_Load Light_49;
  HPF.Cables.NEC_CableModel cable_light_49(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_49(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_49(k=34);
  
/* Light Model 48 */
  HPF.DC.Variable_DC_Load Light_48;
  HPF.Cables.NEC_CableModel cable_light_48(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_48(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_48(k=34);
  
/* Light Model 47 */
  HPF.DC.Variable_DC_Load Light_47;
  HPF.Cables.NEC_CableModel cable_light_47(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_47(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_47(k=34);
  
/* Light Model 46 */
  HPF.DC.Variable_DC_Load Light_46;
  HPF.Cables.NEC_CableModel cable_light_46(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_46(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_46(k=34);
  
/* Light Model 45 */
  HPF.DC.Variable_DC_Load Light_45;
  HPF.Cables.NEC_CableModel cable_light_45(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_45(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_45(k=34);
  
/* Light Model 35 */
  HPF.DC.Variable_DC_Load Light_35;
  HPF.Cables.NEC_CableModel cable_light_35(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_35(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_35(k=35);
  
/* Light Model 33 */
  HPF.DC.Variable_DC_Load Light_33;
  HPF.Cables.NEC_CableModel cable_light_33(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_33(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_33(k=35);
  
/* Light Model 24 */
  HPF.DC.Variable_DC_Load Light_24;
  HPF.Cables.NEC_CableModel cable_light_24(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_24(k=25);
  
/* Light Model 23 */
  HPF.DC.Variable_DC_Load Light_23;
  HPF.Cables.NEC_CableModel cable_light_23(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_23(k=25);
  
/* Light Model 22 */
  HPF.DC.Variable_DC_Load Light_22;
  HPF.Cables.NEC_CableModel cable_light_22(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_22(k=25);
  
/* Light Model 21 */
  HPF.DC.Variable_DC_Load Light_21;
  HPF.Cables.NEC_CableModel cable_light_21(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_21(k=25);
  
/* Light Model 20 */
  HPF.DC.Variable_DC_Load Light_20;
  HPF.Cables.NEC_CableModel cable_light_20(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_20(k=25);
  
/* Light Model 19 */
  HPF.DC.Variable_DC_Load Light_19;
  HPF.Cables.NEC_CableModel cable_light_19(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_19(k=25);
  
/* Light Model 18 */
  HPF.DC.Variable_DC_Load Light_18;
  HPF.Cables.NEC_CableModel cable_light_18(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_18(k=25);
  
/* Light Model 17 */
  HPF.DC.Variable_DC_Load Light_17;
  HPF.Cables.NEC_CableModel cable_light_17(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_17(k=25);
  
/* Light Model 16 */
  HPF.DC.Variable_DC_Load Light_16;
  HPF.Cables.NEC_CableModel cable_light_16(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_16(k=25);
  
/* Light Model 15 */
  HPF.DC.Variable_DC_Load Light_15;
  HPF.Cables.NEC_CableModel cable_light_15(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_15(k=25);
  
/* Light Model 14 */
  HPF.DC.Variable_DC_Load Light_14;
  HPF.Cables.NEC_CableModel cable_light_14(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_14(k=25);
  
/* Light Model 13 */
  HPF.DC.Variable_DC_Load Light_13;
  HPF.Cables.NEC_CableModel cable_light_13(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_13(k=25);
  
/* Light Model 12 */
  HPF.DC.Variable_DC_Load Light_12;
  HPF.Cables.NEC_CableModel cable_light_12(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_12(k=20);
  
/* Light Model 11 */
  HPF.DC.Variable_DC_Load Light_11;
  HPF.Cables.NEC_CableModel cable_light_11(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_11(k=20);
  
/* Light Model 10 */
  HPF.DC.Variable_DC_Load Light_10;
  HPF.Cables.NEC_CableModel cable_light_10(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_10(k=20);
  
/* Light Model 9 */
  HPF.DC.Variable_DC_Load Light_9;
  HPF.Cables.NEC_CableModel cable_light_9(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_9(k=20);
  
/* Light Model 8 */
  HPF.DC.Variable_DC_Load Light_8;
  HPF.Cables.NEC_CableModel cable_light_8(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_8(k=42);
  
/* Light Model 7 */
  HPF.DC.Variable_DC_Load Light_7;
  HPF.Cables.NEC_CableModel cable_light_7(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_7(k=42);
  
/* Light Model 6 */
  HPF.DC.Variable_DC_Load Light_6;
  HPF.Cables.NEC_CableModel cable_light_6(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.04);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_6(k=21);
  
/* Light Model 5 */
  HPF.DC.Variable_DC_Load Light_5;
  HPF.Cables.NEC_CableModel cable_light_5(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_5(k=21);
  
/* Light Model 4 */
  HPF.DC.Variable_DC_Load Light_4;
  HPF.Cables.NEC_CableModel cable_light_4(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_4(k=21);
  
/* Light Model 3 */
  HPF.DC.Variable_DC_Load Light_3;
  HPF.Cables.NEC_CableModel cable_light_3(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_3(k=21);
  
/* Light Model 2 */
  HPF.DC.Variable_DC_Load Light_2;
  HPF.Cables.NEC_CableModel cable_light_2(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_2(k=21);
  
/* Light Model 1 */
  HPF.DC.Variable_DC_Load Light_1;
  HPF.Cables.NEC_CableModel cable_light_1(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.92);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_1(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 286 */
  connect(Light_Driver_286.hPin_L, cable_light_286.pin_p);
  connect(Light_286.p, Light_Driver_286.pin_p);
  connect(Light_286.n, GndDC.p);
  connect(Light_Driver_286.hPin_N, GndAC.pin);
  connect(Light_Driver_286.pin_n, GndDC.p);
  connect(cable_light_286.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_286.y, Light_286.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_286.u);
/* Light Connections 285 */
  connect(Light_Driver_285.hPin_L, cable_light_285.pin_p);
  connect(Light_285.p, Light_Driver_285.pin_p);
  connect(Light_285.n, GndDC.p);
  connect(Light_Driver_285.hPin_N, GndAC.pin);
  connect(Light_Driver_285.pin_n, GndDC.p);
  connect(cable_light_285.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_285.y, Light_285.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_285.u);
/* Light Connections 284 */
  connect(Light_Driver_284.hPin_L, cable_light_284.pin_p);
  connect(Light_284.p, Light_Driver_284.pin_p);
  connect(Light_284.n, GndDC.p);
  connect(Light_Driver_284.hPin_N, GndAC.pin);
  connect(Light_Driver_284.pin_n, GndDC.p);
  connect(cable_light_284.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_284.y, Light_284.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_284.u);
/* Light Connections 283 */
  connect(Light_Driver_283.hPin_L, cable_light_283.pin_p);
  connect(Light_283.p, Light_Driver_283.pin_p);
  connect(Light_283.n, GndDC.p);
  connect(Light_Driver_283.hPin_N, GndAC.pin);
  connect(Light_Driver_283.pin_n, GndDC.p);
  connect(cable_light_283.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_283.y, Light_283.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_283.u);
/* Light Connections 282 */
  connect(Light_Driver_282.hPin_L, cable_light_282.pin_p);
  connect(Light_282.p, Light_Driver_282.pin_p);
  connect(Light_282.n, GndDC.p);
  connect(Light_Driver_282.hPin_N, GndAC.pin);
  connect(Light_Driver_282.pin_n, GndDC.p);
  connect(cable_light_282.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_282.y, Light_282.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_282.u);
/* Light Connections 281 */
  connect(Light_Driver_281.hPin_L, cable_light_281.pin_p);
  connect(Light_281.p, Light_Driver_281.pin_p);
  connect(Light_281.n, GndDC.p);
  connect(Light_Driver_281.hPin_N, GndAC.pin);
  connect(Light_Driver_281.pin_n, GndDC.p);
  connect(cable_light_281.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_281.y, Light_281.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_281.u);
/* Light Connections 280 */
  connect(Light_Driver_280.hPin_L, cable_light_280.pin_p);
  connect(Light_280.p, Light_Driver_280.pin_p);
  connect(Light_280.n, GndDC.p);
  connect(Light_Driver_280.hPin_N, GndAC.pin);
  connect(Light_Driver_280.pin_n, GndDC.p);
  connect(cable_light_280.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_280.y, Light_280.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_280.u);
/* Light Connections 279 */
  connect(Light_Driver_279.hPin_L, cable_light_279.pin_p);
  connect(Light_279.p, Light_Driver_279.pin_p);
  connect(Light_279.n, GndDC.p);
  connect(Light_Driver_279.hPin_N, GndAC.pin);
  connect(Light_Driver_279.pin_n, GndDC.p);
  connect(cable_light_279.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_279.y, Light_279.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_279.u);
/* Light Connections 198 */
  connect(Light_Driver_198.hPin_L, cable_light_198.pin_p);
  connect(Light_198.p, Light_Driver_198.pin_p);
  connect(Light_198.n, GndDC.p);
  connect(Light_Driver_198.hPin_N, GndAC.pin);
  connect(Light_Driver_198.pin_n, GndDC.p);
  connect(cable_light_198.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_198.y, Light_198.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_198.u);
/* Light Connections 197 */
  connect(Light_Driver_197.hPin_L, cable_light_197.pin_p);
  connect(Light_197.p, Light_Driver_197.pin_p);
  connect(Light_197.n, GndDC.p);
  connect(Light_Driver_197.hPin_N, GndAC.pin);
  connect(Light_Driver_197.pin_n, GndDC.p);
  connect(cable_light_197.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_197.y, Light_197.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_197.u);
/* Light Connections 196 */
  connect(Light_Driver_196.hPin_L, cable_light_196.pin_p);
  connect(Light_196.p, Light_Driver_196.pin_p);
  connect(Light_196.n, GndDC.p);
  connect(Light_Driver_196.hPin_N, GndAC.pin);
  connect(Light_Driver_196.pin_n, GndDC.p);
  connect(cable_light_196.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_196.y, Light_196.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_196.u);
/* Light Connections 188 */
  connect(Light_Driver_188.hPin_L, cable_light_188.pin_p);
  connect(Light_188.p, Light_Driver_188.pin_p);
  connect(Light_188.n, GndDC.p);
  connect(Light_Driver_188.hPin_N, GndAC.pin);
  connect(Light_Driver_188.pin_n, GndDC.p);
  connect(cable_light_188.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_188.y, Light_188.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_188.u);
/* Light Connections 99 */
  connect(Light_Driver_99.hPin_L, cable_light_99.pin_p);
  connect(Light_99.p, Light_Driver_99.pin_p);
  connect(Light_99.n, GndDC.p);
  connect(Light_Driver_99.hPin_N, GndAC.pin);
  connect(Light_Driver_99.pin_n, GndDC.p);
  connect(cable_light_99.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_99.y, Light_99.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_99.u);
/* Light Connections 98 */
  connect(Light_Driver_98.hPin_L, cable_light_98.pin_p);
  connect(Light_98.p, Light_Driver_98.pin_p);
  connect(Light_98.n, GndDC.p);
  connect(Light_Driver_98.hPin_N, GndAC.pin);
  connect(Light_Driver_98.pin_n, GndDC.p);
  connect(cable_light_98.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_98.y, Light_98.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_98.u);
/* Light Connections 97 */
  connect(Light_Driver_97.hPin_L, cable_light_97.pin_p);
  connect(Light_97.p, Light_Driver_97.pin_p);
  connect(Light_97.n, GndDC.p);
  connect(Light_Driver_97.hPin_N, GndAC.pin);
  connect(Light_Driver_97.pin_n, GndDC.p);
  connect(cable_light_97.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_97.y, Light_97.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_97.u);
/* Light Connections 96 */
  connect(Light_Driver_96.hPin_L, cable_light_96.pin_p);
  connect(Light_96.p, Light_Driver_96.pin_p);
  connect(Light_96.n, GndDC.p);
  connect(Light_Driver_96.hPin_N, GndAC.pin);
  connect(Light_Driver_96.pin_n, GndDC.p);
  connect(cable_light_96.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_96.y, Light_96.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_96.u);
/* Light Connections 52 */
  connect(Light_Driver_52.hPin_L, cable_light_52.pin_p);
  connect(Light_52.p, Light_Driver_52.pin_p);
  connect(Light_52.n, GndDC.p);
  connect(Light_Driver_52.hPin_N, GndAC.pin);
  connect(Light_Driver_52.pin_n, GndDC.p);
  connect(cable_light_52.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_52.y, Light_52.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_52.u);
/* Light Connections 51 */
  connect(Light_Driver_51.hPin_L, cable_light_51.pin_p);
  connect(Light_51.p, Light_Driver_51.pin_p);
  connect(Light_51.n, GndDC.p);
  connect(Light_Driver_51.hPin_N, GndAC.pin);
  connect(Light_Driver_51.pin_n, GndDC.p);
  connect(cable_light_51.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_51.y, Light_51.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_51.u);
/* Light Connections 50 */
  connect(Light_Driver_50.hPin_L, cable_light_50.pin_p);
  connect(Light_50.p, Light_Driver_50.pin_p);
  connect(Light_50.n, GndDC.p);
  connect(Light_Driver_50.hPin_N, GndAC.pin);
  connect(Light_Driver_50.pin_n, GndDC.p);
  connect(cable_light_50.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_50.y, Light_50.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_50.u);
/* Light Connections 49 */
  connect(Light_Driver_49.hPin_L, cable_light_49.pin_p);
  connect(Light_49.p, Light_Driver_49.pin_p);
  connect(Light_49.n, GndDC.p);
  connect(Light_Driver_49.hPin_N, GndAC.pin);
  connect(Light_Driver_49.pin_n, GndDC.p);
  connect(cable_light_49.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_49.y, Light_49.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_49.u);
/* Light Connections 48 */
  connect(Light_Driver_48.hPin_L, cable_light_48.pin_p);
  connect(Light_48.p, Light_Driver_48.pin_p);
  connect(Light_48.n, GndDC.p);
  connect(Light_Driver_48.hPin_N, GndAC.pin);
  connect(Light_Driver_48.pin_n, GndDC.p);
  connect(cable_light_48.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_48.y, Light_48.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_48.u);
/* Light Connections 47 */
  connect(Light_Driver_47.hPin_L, cable_light_47.pin_p);
  connect(Light_47.p, Light_Driver_47.pin_p);
  connect(Light_47.n, GndDC.p);
  connect(Light_Driver_47.hPin_N, GndAC.pin);
  connect(Light_Driver_47.pin_n, GndDC.p);
  connect(cable_light_47.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_47.y, Light_47.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_47.u);
/* Light Connections 46 */
  connect(Light_Driver_46.hPin_L, cable_light_46.pin_p);
  connect(Light_46.p, Light_Driver_46.pin_p);
  connect(Light_46.n, GndDC.p);
  connect(Light_Driver_46.hPin_N, GndAC.pin);
  connect(Light_Driver_46.pin_n, GndDC.p);
  connect(cable_light_46.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_46.y, Light_46.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_46.u);
/* Light Connections 45 */
  connect(Light_Driver_45.hPin_L, cable_light_45.pin_p);
  connect(Light_45.p, Light_Driver_45.pin_p);
  connect(Light_45.n, GndDC.p);
  connect(Light_Driver_45.hPin_N, GndAC.pin);
  connect(Light_Driver_45.pin_n, GndDC.p);
  connect(cable_light_45.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_45.y, Light_45.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_45.u);
/* Light Connections 35 */
  connect(Light_Driver_35.hPin_L, cable_light_35.pin_p);
  connect(Light_35.p, Light_Driver_35.pin_p);
  connect(Light_35.n, GndDC.p);
  connect(Light_Driver_35.hPin_N, GndAC.pin);
  connect(Light_Driver_35.pin_n, GndDC.p);
  connect(cable_light_35.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_35.y, Light_35.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_35.u);
/* Light Connections 33 */
  connect(Light_Driver_33.hPin_L, cable_light_33.pin_p);
  connect(Light_33.p, Light_Driver_33.pin_p);
  connect(Light_33.n, GndDC.p);
  connect(Light_Driver_33.hPin_N, GndAC.pin);
  connect(Light_Driver_33.pin_n, GndDC.p);
  connect(cable_light_33.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_33.y, Light_33.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_33.u);
/* Light Connections 24 */
  connect(Light_Driver_24.hPin_L, cable_light_24.pin_p);
  connect(Light_24.p, Light_Driver_24.pin_p);
  connect(Light_24.n, GndDC.p);
  connect(Light_Driver_24.hPin_N, GndAC.pin);
  connect(Light_Driver_24.pin_n, GndDC.p);
  connect(cable_light_24.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_24.y, Light_24.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_24.u);
/* Light Connections 23 */
  connect(Light_Driver_23.hPin_L, cable_light_23.pin_p);
  connect(Light_23.p, Light_Driver_23.pin_p);
  connect(Light_23.n, GndDC.p);
  connect(Light_Driver_23.hPin_N, GndAC.pin);
  connect(Light_Driver_23.pin_n, GndDC.p);
  connect(cable_light_23.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_23.y, Light_23.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_23.u);
/* Light Connections 22 */
  connect(Light_Driver_22.hPin_L, cable_light_22.pin_p);
  connect(Light_22.p, Light_Driver_22.pin_p);
  connect(Light_22.n, GndDC.p);
  connect(Light_Driver_22.hPin_N, GndAC.pin);
  connect(Light_Driver_22.pin_n, GndDC.p);
  connect(cable_light_22.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_22.y, Light_22.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_22.u);
/* Light Connections 21 */
  connect(Light_Driver_21.hPin_L, cable_light_21.pin_p);
  connect(Light_21.p, Light_Driver_21.pin_p);
  connect(Light_21.n, GndDC.p);
  connect(Light_Driver_21.hPin_N, GndAC.pin);
  connect(Light_Driver_21.pin_n, GndDC.p);
  connect(cable_light_21.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_21.y, Light_21.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_21.u);
/* Light Connections 20 */
  connect(Light_Driver_20.hPin_L, cable_light_20.pin_p);
  connect(Light_20.p, Light_Driver_20.pin_p);
  connect(Light_20.n, GndDC.p);
  connect(Light_Driver_20.hPin_N, GndAC.pin);
  connect(Light_Driver_20.pin_n, GndDC.p);
  connect(cable_light_20.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_20.y, Light_20.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_20.u);
/* Light Connections 19 */
  connect(Light_Driver_19.hPin_L, cable_light_19.pin_p);
  connect(Light_19.p, Light_Driver_19.pin_p);
  connect(Light_19.n, GndDC.p);
  connect(Light_Driver_19.hPin_N, GndAC.pin);
  connect(Light_Driver_19.pin_n, GndDC.p);
  connect(cable_light_19.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_19.y, Light_19.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_19.u);
/* Light Connections 18 */
  connect(Light_Driver_18.hPin_L, cable_light_18.pin_p);
  connect(Light_18.p, Light_Driver_18.pin_p);
  connect(Light_18.n, GndDC.p);
  connect(Light_Driver_18.hPin_N, GndAC.pin);
  connect(Light_Driver_18.pin_n, GndDC.p);
  connect(cable_light_18.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_18.y, Light_18.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_18.u);
/* Light Connections 17 */
  connect(Light_Driver_17.hPin_L, cable_light_17.pin_p);
  connect(Light_17.p, Light_Driver_17.pin_p);
  connect(Light_17.n, GndDC.p);
  connect(Light_Driver_17.hPin_N, GndAC.pin);
  connect(Light_Driver_17.pin_n, GndDC.p);
  connect(cable_light_17.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_17.y, Light_17.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_17.u);
/* Light Connections 16 */
  connect(Light_Driver_16.hPin_L, cable_light_16.pin_p);
  connect(Light_16.p, Light_Driver_16.pin_p);
  connect(Light_16.n, GndDC.p);
  connect(Light_Driver_16.hPin_N, GndAC.pin);
  connect(Light_Driver_16.pin_n, GndDC.p);
  connect(cable_light_16.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_16.y, Light_16.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_16.u);
/* Light Connections 15 */
  connect(Light_Driver_15.hPin_L, cable_light_15.pin_p);
  connect(Light_15.p, Light_Driver_15.pin_p);
  connect(Light_15.n, GndDC.p);
  connect(Light_Driver_15.hPin_N, GndAC.pin);
  connect(Light_Driver_15.pin_n, GndDC.p);
  connect(cable_light_15.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_15.y, Light_15.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_15.u);
/* Light Connections 14 */
  connect(Light_Driver_14.hPin_L, cable_light_14.pin_p);
  connect(Light_14.p, Light_Driver_14.pin_p);
  connect(Light_14.n, GndDC.p);
  connect(Light_Driver_14.hPin_N, GndAC.pin);
  connect(Light_Driver_14.pin_n, GndDC.p);
  connect(cable_light_14.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_14.y, Light_14.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_14.u);
/* Light Connections 13 */
  connect(Light_Driver_13.hPin_L, cable_light_13.pin_p);
  connect(Light_13.p, Light_Driver_13.pin_p);
  connect(Light_13.n, GndDC.p);
  connect(Light_Driver_13.hPin_N, GndAC.pin);
  connect(Light_Driver_13.pin_n, GndDC.p);
  connect(cable_light_13.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_13.y, Light_13.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_13.u);
/* Light Connections 12 */
  connect(Light_Driver_12.hPin_L, cable_light_12.pin_p);
  connect(Light_12.p, Light_Driver_12.pin_p);
  connect(Light_12.n, GndDC.p);
  connect(Light_Driver_12.hPin_N, GndAC.pin);
  connect(Light_Driver_12.pin_n, GndDC.p);
  connect(cable_light_12.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_12.y, Light_12.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_12.u);
/* Light Connections 11 */
  connect(Light_Driver_11.hPin_L, cable_light_11.pin_p);
  connect(Light_11.p, Light_Driver_11.pin_p);
  connect(Light_11.n, GndDC.p);
  connect(Light_Driver_11.hPin_N, GndAC.pin);
  connect(Light_Driver_11.pin_n, GndDC.p);
  connect(cable_light_11.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_11.y, Light_11.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_11.u);
/* Light Connections 10 */
  connect(Light_Driver_10.hPin_L, cable_light_10.pin_p);
  connect(Light_10.p, Light_Driver_10.pin_p);
  connect(Light_10.n, GndDC.p);
  connect(Light_Driver_10.hPin_N, GndAC.pin);
  connect(Light_Driver_10.pin_n, GndDC.p);
  connect(cable_light_10.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_10.y, Light_10.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_10.u);
/* Light Connections 9 */
  connect(Light_Driver_9.hPin_L, cable_light_9.pin_p);
  connect(Light_9.p, Light_Driver_9.pin_p);
  connect(Light_9.n, GndDC.p);
  connect(Light_Driver_9.hPin_N, GndAC.pin);
  connect(Light_Driver_9.pin_n, GndDC.p);
  connect(cable_light_9.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_9.y, Light_9.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_9.u);
/* Light Connections 8 */
  connect(Light_Driver_8.hPin_L, cable_light_8.pin_p);
  connect(Light_8.p, Light_Driver_8.pin_p);
  connect(Light_8.n, GndDC.p);
  connect(Light_Driver_8.hPin_N, GndAC.pin);
  connect(Light_Driver_8.pin_n, GndDC.p);
  connect(cable_light_8.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_8.y, Light_8.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_8.u);
/* Light Connections 7 */
  connect(Light_Driver_7.hPin_L, cable_light_7.pin_p);
  connect(Light_7.p, Light_Driver_7.pin_p);
  connect(Light_7.n, GndDC.p);
  connect(Light_Driver_7.hPin_N, GndAC.pin);
  connect(Light_Driver_7.pin_n, GndDC.p);
  connect(cable_light_7.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_7.y, Light_7.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_7.u);
/* Light Connections 6 */
  connect(Light_Driver_6.hPin_L, cable_light_6.pin_p);
  connect(Light_6.p, Light_Driver_6.pin_p);
  connect(Light_6.n, GndDC.p);
  connect(Light_Driver_6.hPin_N, GndAC.pin);
  connect(Light_Driver_6.pin_n, GndDC.p);
  connect(cable_light_6.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_6.y, Light_6.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_6.u);
/* Light Connections 5 */
  connect(Light_Driver_5.hPin_L, cable_light_5.pin_p);
  connect(Light_5.p, Light_Driver_5.pin_p);
  connect(Light_5.n, GndDC.p);
  connect(Light_Driver_5.hPin_N, GndAC.pin);
  connect(Light_Driver_5.pin_n, GndDC.p);
  connect(cable_light_5.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_5.y, Light_5.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_5.u);
/* Light Connections 4 */
  connect(Light_Driver_4.hPin_L, cable_light_4.pin_p);
  connect(Light_4.p, Light_Driver_4.pin_p);
  connect(Light_4.n, GndDC.p);
  connect(Light_Driver_4.hPin_N, GndAC.pin);
  connect(Light_Driver_4.pin_n, GndDC.p);
  connect(cable_light_4.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_4.y, Light_4.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_4.u);
/* Light Connections 3 */
  connect(Light_Driver_3.hPin_L, cable_light_3.pin_p);
  connect(Light_3.p, Light_Driver_3.pin_p);
  connect(Light_3.n, GndDC.p);
  connect(Light_Driver_3.hPin_N, GndAC.pin);
  connect(Light_Driver_3.pin_n, GndDC.p);
  connect(cable_light_3.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_3.y, Light_3.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_3.u);
/* Light Connections 2 */
  connect(Light_Driver_2.hPin_L, cable_light_2.pin_p);
  connect(Light_2.p, Light_Driver_2.pin_p);
  connect(Light_2.n, GndDC.p);
  connect(Light_Driver_2.hPin_N, GndAC.pin);
  connect(Light_Driver_2.pin_n, GndDC.p);
  connect(cable_light_2.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_2.y, Light_2.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_2.u);
/* Light Connections 1 */
  connect(Light_Driver_1.hPin_L, cable_light_1.pin_p);
  connect(Light_1.p, Light_Driver_1.pin_p);
  connect(Light_1.n, GndDC.p);
  connect(Light_Driver_1.hPin_N, GndAC.pin);
  connect(Light_Driver_1.pin_n, GndDC.p);
  connect(cable_light_1.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_1.y, Light_1.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_1.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_1B;
