within ;
model Light_Panel_L1_2C
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

  
/* Light Model 153 */
  HPF.DC.Variable_DC_Load Light_153;
  HPF.Cables.NEC_CableModel cable_light_153(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_153(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_153(k=31);
  
/* Light Model 152 */
  HPF.DC.Variable_DC_Load Light_152;
  HPF.Cables.NEC_CableModel cable_light_152(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_152(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_152(k=31);
  
/* Light Model 151 */
  HPF.DC.Variable_DC_Load Light_151;
  HPF.Cables.NEC_CableModel cable_light_151(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_151(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_151(k=31);
  
/* Light Model 150 */
  HPF.DC.Variable_DC_Load Light_150;
  HPF.Cables.NEC_CableModel cable_light_150(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_150(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_150(k=31);
  
/* Light Model 149 */
  HPF.DC.Variable_DC_Load Light_149;
  HPF.Cables.NEC_CableModel cable_light_149(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_149(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_149(k=31);
  
/* Light Model 148 */
  HPF.DC.Variable_DC_Load Light_148;
  HPF.Cables.NEC_CableModel cable_light_148(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_148(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_148(k=31);
  
/* Light Model 145 */
  HPF.DC.Variable_DC_Load Light_145;
  HPF.Cables.NEC_CableModel cable_light_145(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_145(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_145(k=28);
  
/* Light Model 144 */
  HPF.DC.Variable_DC_Load Light_144;
  HPF.Cables.NEC_CableModel cable_light_144(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_144(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_144(k=28);
  
/* Light Model 143 */
  HPF.DC.Variable_DC_Load Light_143;
  HPF.Cables.NEC_CableModel cable_light_143(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.58);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_143(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_143(k=40);
  
/* Light Model 142 */
  HPF.DC.Variable_DC_Load Light_142;
  HPF.Cables.NEC_CableModel cable_light_142(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.01);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_142(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_142(k=40);
  
/* Light Model 141 */
  HPF.DC.Variable_DC_Load Light_141;
  HPF.Cables.NEC_CableModel cable_light_141(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.35);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_141(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_141(k=28);
  
/* Light Model 140 */
  HPF.DC.Variable_DC_Load Light_140;
  HPF.Cables.NEC_CableModel cable_light_140(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_140(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_140(k=28);
  
/* Light Model 139 */
  HPF.DC.Variable_DC_Load Light_139;
  HPF.Cables.NEC_CableModel cable_light_139(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.51);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_139(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_139(k=40);
  
/* Light Model 138 */
  HPF.DC.Variable_DC_Load Light_138;
  HPF.Cables.NEC_CableModel cable_light_138(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_138(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_138(k=40);
  
/* Light Model 137 */
  HPF.DC.Variable_DC_Load Light_137;
  HPF.Cables.NEC_CableModel cable_light_137(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_137(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_137(k=28);
  
/* Light Model 136 */
  HPF.DC.Variable_DC_Load Light_136;
  HPF.Cables.NEC_CableModel cable_light_136(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_136(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_136(k=28);
  
/* Light Model 135 */
  HPF.DC.Variable_DC_Load Light_135;
  HPF.Cables.NEC_CableModel cable_light_135(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_135(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_135(k=40);
  
/* Light Model 134 */
  HPF.DC.Variable_DC_Load Light_134;
  HPF.Cables.NEC_CableModel cable_light_134(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_134(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_134(k=40);
  
/* Light Model 133 */
  HPF.DC.Variable_DC_Load Light_133;
  HPF.Cables.NEC_CableModel cable_light_133(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_133(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_133(k=28);
  
/* Light Model 132 */
  HPF.DC.Variable_DC_Load Light_132;
  HPF.Cables.NEC_CableModel cable_light_132(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_132(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_132(k=28);
  
/* Light Model 131 */
  HPF.DC.Variable_DC_Load Light_131;
  HPF.Cables.NEC_CableModel cable_light_131(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_131(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_131(k=40);
  
/* Light Model 107 */
  HPF.DC.Variable_DC_Load Light_107;
  HPF.Cables.NEC_CableModel cable_light_107(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.92);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_107(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_107(k=21);
  
/* Light Model 106 */
  HPF.DC.Variable_DC_Load Light_106;
  HPF.Cables.NEC_CableModel cable_light_106(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_106(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_106(k=21);
  
/* Light Model 104 */
  HPF.DC.Variable_DC_Load Light_104;
  HPF.Cables.NEC_CableModel cable_light_104(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_104(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_104(k=21);
  
/* Light Model 101 */
  HPF.DC.Variable_DC_Load Light_101;
  HPF.Cables.NEC_CableModel cable_light_101(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_101(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_101(k=21);
  
/* Light Model 80 */
  HPF.DC.Variable_DC_Load Light_80;
  HPF.Cables.NEC_CableModel cable_light_80(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.49);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_80(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_80(k=31);
  
/* Light Model 79 */
  HPF.DC.Variable_DC_Load Light_79;
  HPF.Cables.NEC_CableModel cable_light_79(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_79(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_79(k=31);
  
/* Light Model 78 */
  HPF.DC.Variable_DC_Load Light_78;
  HPF.Cables.NEC_CableModel cable_light_78(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_78(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_78(k=31);
  
/* Light Model 77 */
  HPF.DC.Variable_DC_Load Light_77;
  HPF.Cables.NEC_CableModel cable_light_77(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_77(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_77(k=31);
  
/* Light Model 76 */
  HPF.DC.Variable_DC_Load Light_76;
  HPF.Cables.NEC_CableModel cable_light_76(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_76(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_76(k=31);
  
/* Light Model 75 */
  HPF.DC.Variable_DC_Load Light_75;
  HPF.Cables.NEC_CableModel cable_light_75(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_75(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_75(k=31);
  
/* Light Model 74 */
  HPF.DC.Variable_DC_Load Light_74;
  HPF.Cables.NEC_CableModel cable_light_74(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_74(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_74(k=31);
  
/* Light Model 71 */
  HPF.DC.Variable_DC_Load Light_71;
  HPF.Cables.NEC_CableModel cable_light_71(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_71(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_71(k=31);
  
/* Light Model 70 */
  HPF.DC.Variable_DC_Load Light_70;
  HPF.Cables.NEC_CableModel cable_light_70(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_70(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_70(k=31);
  
/* Light Model 69 */
  HPF.DC.Variable_DC_Load Light_69;
  HPF.Cables.NEC_CableModel cable_light_69(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_69(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_69(k=31);
  
/* Light Model 68 */
  HPF.DC.Variable_DC_Load Light_68;
  HPF.Cables.NEC_CableModel cable_light_68(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_68(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_68(k=31);
  
/* Light Model 67 */
  HPF.DC.Variable_DC_Load Light_67;
  HPF.Cables.NEC_CableModel cable_light_67(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_67(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_67(k=31);
  
/* Light Model 66 */
  HPF.DC.Variable_DC_Load Light_66;
  HPF.Cables.NEC_CableModel cable_light_66(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_66(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_66(k=31);
  
/* Light Model 65 */
  HPF.DC.Variable_DC_Load Light_65;
  HPF.Cables.NEC_CableModel cable_light_65(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_65(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_65(k=31);
  
/* Light Model 54 */
  HPF.DC.Variable_DC_Load Light_54;
  HPF.Cables.NEC_CableModel cable_light_54(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_54(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_54(k=21);
  
/* Light Model 53 */
  HPF.DC.Variable_DC_Load Light_53;
  HPF.Cables.NEC_CableModel cable_light_53(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.58);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_53(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_53(k=21);
  
/* Light Model 42 */
  HPF.DC.Variable_DC_Load Light_42;
  HPF.Cables.NEC_CableModel cable_light_42(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=2.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_42(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_42(k=28);
  
/* Light Model 41 */
  HPF.DC.Variable_DC_Load Light_41;
  HPF.Cables.NEC_CableModel cable_light_41(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_41(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_41(k=28);
  
/* Light Model 40 */
  HPF.DC.Variable_DC_Load Light_40;
  HPF.Cables.NEC_CableModel cable_light_40(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_40(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_40(k=28);
  
/* Light Model 39 */
  HPF.DC.Variable_DC_Load Light_39;
  HPF.Cables.NEC_CableModel cable_light_39(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_39(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_39(k=28);
  
/* Light Model 38 */
  HPF.DC.Variable_DC_Load Light_38;
  HPF.Cables.NEC_CableModel cable_light_38(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_38(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_38(k=22);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 153 */
  connect(Light_Driver_153.hPin_L, cable_light_153.pin_p);
  connect(Light_153.p, Light_Driver_153.pin_p);
  connect(Light_153.n, GndDC.p);
  connect(Light_Driver_153.hPin_N, GndAC.pin);
  connect(Light_Driver_153.pin_n, GndDC.p);
  connect(cable_light_153.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_153.y, Light_153.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_153.u);
/* Light Connections 152 */
  connect(Light_Driver_152.hPin_L, cable_light_152.pin_p);
  connect(Light_152.p, Light_Driver_152.pin_p);
  connect(Light_152.n, GndDC.p);
  connect(Light_Driver_152.hPin_N, GndAC.pin);
  connect(Light_Driver_152.pin_n, GndDC.p);
  connect(cable_light_152.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_152.y, Light_152.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_152.u);
/* Light Connections 151 */
  connect(Light_Driver_151.hPin_L, cable_light_151.pin_p);
  connect(Light_151.p, Light_Driver_151.pin_p);
  connect(Light_151.n, GndDC.p);
  connect(Light_Driver_151.hPin_N, GndAC.pin);
  connect(Light_Driver_151.pin_n, GndDC.p);
  connect(cable_light_151.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_151.y, Light_151.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_151.u);
/* Light Connections 150 */
  connect(Light_Driver_150.hPin_L, cable_light_150.pin_p);
  connect(Light_150.p, Light_Driver_150.pin_p);
  connect(Light_150.n, GndDC.p);
  connect(Light_Driver_150.hPin_N, GndAC.pin);
  connect(Light_Driver_150.pin_n, GndDC.p);
  connect(cable_light_150.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_150.y, Light_150.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_150.u);
/* Light Connections 149 */
  connect(Light_Driver_149.hPin_L, cable_light_149.pin_p);
  connect(Light_149.p, Light_Driver_149.pin_p);
  connect(Light_149.n, GndDC.p);
  connect(Light_Driver_149.hPin_N, GndAC.pin);
  connect(Light_Driver_149.pin_n, GndDC.p);
  connect(cable_light_149.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_149.y, Light_149.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_149.u);
/* Light Connections 148 */
  connect(Light_Driver_148.hPin_L, cable_light_148.pin_p);
  connect(Light_148.p, Light_Driver_148.pin_p);
  connect(Light_148.n, GndDC.p);
  connect(Light_Driver_148.hPin_N, GndAC.pin);
  connect(Light_Driver_148.pin_n, GndDC.p);
  connect(cable_light_148.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_148.y, Light_148.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_148.u);
/* Light Connections 145 */
  connect(Light_Driver_145.hPin_L, cable_light_145.pin_p);
  connect(Light_145.p, Light_Driver_145.pin_p);
  connect(Light_145.n, GndDC.p);
  connect(Light_Driver_145.hPin_N, GndAC.pin);
  connect(Light_Driver_145.pin_n, GndDC.p);
  connect(cable_light_145.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_145.y, Light_145.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_145.u);
/* Light Connections 144 */
  connect(Light_Driver_144.hPin_L, cable_light_144.pin_p);
  connect(Light_144.p, Light_Driver_144.pin_p);
  connect(Light_144.n, GndDC.p);
  connect(Light_Driver_144.hPin_N, GndAC.pin);
  connect(Light_Driver_144.pin_n, GndDC.p);
  connect(cable_light_144.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_144.y, Light_144.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_144.u);
/* Light Connections 143 */
  connect(Light_Driver_143.hPin_L, cable_light_143.pin_p);
  connect(Light_143.p, Light_Driver_143.pin_p);
  connect(Light_143.n, GndDC.p);
  connect(Light_Driver_143.hPin_N, GndAC.pin);
  connect(Light_Driver_143.pin_n, GndDC.p);
  connect(cable_light_143.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_143.y, Light_143.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_143.u);
/* Light Connections 142 */
  connect(Light_Driver_142.hPin_L, cable_light_142.pin_p);
  connect(Light_142.p, Light_Driver_142.pin_p);
  connect(Light_142.n, GndDC.p);
  connect(Light_Driver_142.hPin_N, GndAC.pin);
  connect(Light_Driver_142.pin_n, GndDC.p);
  connect(cable_light_142.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_142.y, Light_142.u);
  connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_142.u);
/* Light Connections 141 */
  connect(Light_Driver_141.hPin_L, cable_light_141.pin_p);
  connect(Light_141.p, Light_Driver_141.pin_p);
  connect(Light_141.n, GndDC.p);
  connect(Light_Driver_141.hPin_N, GndAC.pin);
  connect(Light_Driver_141.pin_n, GndDC.p);
  connect(cable_light_141.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_141.y, Light_141.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_141.u);
/* Light Connections 140 */
  connect(Light_Driver_140.hPin_L, cable_light_140.pin_p);
  connect(Light_140.p, Light_Driver_140.pin_p);
  connect(Light_140.n, GndDC.p);
  connect(Light_Driver_140.hPin_N, GndAC.pin);
  connect(Light_Driver_140.pin_n, GndDC.p);
  connect(cable_light_140.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_140.y, Light_140.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_140.u);
/* Light Connections 139 */
  connect(Light_Driver_139.hPin_L, cable_light_139.pin_p);
  connect(Light_139.p, Light_Driver_139.pin_p);
  connect(Light_139.n, GndDC.p);
  connect(Light_Driver_139.hPin_N, GndAC.pin);
  connect(Light_Driver_139.pin_n, GndDC.p);
  connect(cable_light_139.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_139.y, Light_139.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_139.u);
/* Light Connections 138 */
  connect(Light_Driver_138.hPin_L, cable_light_138.pin_p);
  connect(Light_138.p, Light_Driver_138.pin_p);
  connect(Light_138.n, GndDC.p);
  connect(Light_Driver_138.hPin_N, GndAC.pin);
  connect(Light_Driver_138.pin_n, GndDC.p);
  connect(cable_light_138.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_138.y, Light_138.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_138.u);
/* Light Connections 137 */
  connect(Light_Driver_137.hPin_L, cable_light_137.pin_p);
  connect(Light_137.p, Light_Driver_137.pin_p);
  connect(Light_137.n, GndDC.p);
  connect(Light_Driver_137.hPin_N, GndAC.pin);
  connect(Light_Driver_137.pin_n, GndDC.p);
  connect(cable_light_137.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_137.y, Light_137.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_137.u);
/* Light Connections 136 */
  connect(Light_Driver_136.hPin_L, cable_light_136.pin_p);
  connect(Light_136.p, Light_Driver_136.pin_p);
  connect(Light_136.n, GndDC.p);
  connect(Light_Driver_136.hPin_N, GndAC.pin);
  connect(Light_Driver_136.pin_n, GndDC.p);
  connect(cable_light_136.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_136.y, Light_136.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_136.u);
/* Light Connections 135 */
  connect(Light_Driver_135.hPin_L, cable_light_135.pin_p);
  connect(Light_135.p, Light_Driver_135.pin_p);
  connect(Light_135.n, GndDC.p);
  connect(Light_Driver_135.hPin_N, GndAC.pin);
  connect(Light_Driver_135.pin_n, GndDC.p);
  connect(cable_light_135.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_135.y, Light_135.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_135.u);
/* Light Connections 134 */
  connect(Light_Driver_134.hPin_L, cable_light_134.pin_p);
  connect(Light_134.p, Light_Driver_134.pin_p);
  connect(Light_134.n, GndDC.p);
  connect(Light_Driver_134.hPin_N, GndAC.pin);
  connect(Light_Driver_134.pin_n, GndDC.p);
  connect(cable_light_134.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_134.y, Light_134.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_134.u);
/* Light Connections 133 */
  connect(Light_Driver_133.hPin_L, cable_light_133.pin_p);
  connect(Light_133.p, Light_Driver_133.pin_p);
  connect(Light_133.n, GndDC.p);
  connect(Light_Driver_133.hPin_N, GndAC.pin);
  connect(Light_Driver_133.pin_n, GndDC.p);
  connect(cable_light_133.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_133.y, Light_133.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_133.u);
/* Light Connections 132 */
  connect(Light_Driver_132.hPin_L, cable_light_132.pin_p);
  connect(Light_132.p, Light_Driver_132.pin_p);
  connect(Light_132.n, GndDC.p);
  connect(Light_Driver_132.hPin_N, GndAC.pin);
  connect(Light_Driver_132.pin_n, GndDC.p);
  connect(cable_light_132.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_132.y, Light_132.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_132.u);
/* Light Connections 131 */
  connect(Light_Driver_131.hPin_L, cable_light_131.pin_p);
  connect(Light_131.p, Light_Driver_131.pin_p);
  connect(Light_131.n, GndDC.p);
  connect(Light_Driver_131.hPin_N, GndAC.pin);
  connect(Light_Driver_131.pin_n, GndDC.p);
  connect(cable_light_131.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_131.y, Light_131.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_131.u);
/* Light Connections 107 */
  connect(Light_Driver_107.hPin_L, cable_light_107.pin_p);
  connect(Light_107.p, Light_Driver_107.pin_p);
  connect(Light_107.n, GndDC.p);
  connect(Light_Driver_107.hPin_N, GndAC.pin);
  connect(Light_Driver_107.pin_n, GndDC.p);
  connect(cable_light_107.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_107.y, Light_107.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_107.u);
/* Light Connections 106 */
  connect(Light_Driver_106.hPin_L, cable_light_106.pin_p);
  connect(Light_106.p, Light_Driver_106.pin_p);
  connect(Light_106.n, GndDC.p);
  connect(Light_Driver_106.hPin_N, GndAC.pin);
  connect(Light_Driver_106.pin_n, GndDC.p);
  connect(cable_light_106.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_106.y, Light_106.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_106.u);
/* Light Connections 104 */
  connect(Light_Driver_104.hPin_L, cable_light_104.pin_p);
  connect(Light_104.p, Light_Driver_104.pin_p);
  connect(Light_104.n, GndDC.p);
  connect(Light_Driver_104.hPin_N, GndAC.pin);
  connect(Light_Driver_104.pin_n, GndDC.p);
  connect(cable_light_104.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_104.y, Light_104.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_104.u);
/* Light Connections 101 */
  connect(Light_Driver_101.hPin_L, cable_light_101.pin_p);
  connect(Light_101.p, Light_Driver_101.pin_p);
  connect(Light_101.n, GndDC.p);
  connect(Light_Driver_101.hPin_N, GndAC.pin);
  connect(Light_Driver_101.pin_n, GndDC.p);
  connect(cable_light_101.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_101.y, Light_101.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_101.u);
/* Light Connections 80 */
  connect(Light_Driver_80.hPin_L, cable_light_80.pin_p);
  connect(Light_80.p, Light_Driver_80.pin_p);
  connect(Light_80.n, GndDC.p);
  connect(Light_Driver_80.hPin_N, GndAC.pin);
  connect(Light_Driver_80.pin_n, GndDC.p);
  connect(cable_light_80.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_80.y, Light_80.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_80.u);
/* Light Connections 79 */
  connect(Light_Driver_79.hPin_L, cable_light_79.pin_p);
  connect(Light_79.p, Light_Driver_79.pin_p);
  connect(Light_79.n, GndDC.p);
  connect(Light_Driver_79.hPin_N, GndAC.pin);
  connect(Light_Driver_79.pin_n, GndDC.p);
  connect(cable_light_79.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_79.y, Light_79.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_79.u);
/* Light Connections 78 */
  connect(Light_Driver_78.hPin_L, cable_light_78.pin_p);
  connect(Light_78.p, Light_Driver_78.pin_p);
  connect(Light_78.n, GndDC.p);
  connect(Light_Driver_78.hPin_N, GndAC.pin);
  connect(Light_Driver_78.pin_n, GndDC.p);
  connect(cable_light_78.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_78.y, Light_78.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_78.u);
/* Light Connections 77 */
  connect(Light_Driver_77.hPin_L, cable_light_77.pin_p);
  connect(Light_77.p, Light_Driver_77.pin_p);
  connect(Light_77.n, GndDC.p);
  connect(Light_Driver_77.hPin_N, GndAC.pin);
  connect(Light_Driver_77.pin_n, GndDC.p);
  connect(cable_light_77.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_77.y, Light_77.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_77.u);
/* Light Connections 76 */
  connect(Light_Driver_76.hPin_L, cable_light_76.pin_p);
  connect(Light_76.p, Light_Driver_76.pin_p);
  connect(Light_76.n, GndDC.p);
  connect(Light_Driver_76.hPin_N, GndAC.pin);
  connect(Light_Driver_76.pin_n, GndDC.p);
  connect(cable_light_76.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_76.y, Light_76.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_76.u);
/* Light Connections 75 */
  connect(Light_Driver_75.hPin_L, cable_light_75.pin_p);
  connect(Light_75.p, Light_Driver_75.pin_p);
  connect(Light_75.n, GndDC.p);
  connect(Light_Driver_75.hPin_N, GndAC.pin);
  connect(Light_Driver_75.pin_n, GndDC.p);
  connect(cable_light_75.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_75.y, Light_75.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_75.u);
/* Light Connections 74 */
  connect(Light_Driver_74.hPin_L, cable_light_74.pin_p);
  connect(Light_74.p, Light_Driver_74.pin_p);
  connect(Light_74.n, GndDC.p);
  connect(Light_Driver_74.hPin_N, GndAC.pin);
  connect(Light_Driver_74.pin_n, GndDC.p);
  connect(cable_light_74.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_74.y, Light_74.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_74.u);
/* Light Connections 71 */
  connect(Light_Driver_71.hPin_L, cable_light_71.pin_p);
  connect(Light_71.p, Light_Driver_71.pin_p);
  connect(Light_71.n, GndDC.p);
  connect(Light_Driver_71.hPin_N, GndAC.pin);
  connect(Light_Driver_71.pin_n, GndDC.p);
  connect(cable_light_71.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_71.y, Light_71.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_71.u);
/* Light Connections 70 */
  connect(Light_Driver_70.hPin_L, cable_light_70.pin_p);
  connect(Light_70.p, Light_Driver_70.pin_p);
  connect(Light_70.n, GndDC.p);
  connect(Light_Driver_70.hPin_N, GndAC.pin);
  connect(Light_Driver_70.pin_n, GndDC.p);
  connect(cable_light_70.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_70.y, Light_70.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_70.u);
/* Light Connections 69 */
  connect(Light_Driver_69.hPin_L, cable_light_69.pin_p);
  connect(Light_69.p, Light_Driver_69.pin_p);
  connect(Light_69.n, GndDC.p);
  connect(Light_Driver_69.hPin_N, GndAC.pin);
  connect(Light_Driver_69.pin_n, GndDC.p);
  connect(cable_light_69.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_69.y, Light_69.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_69.u);
/* Light Connections 68 */
  connect(Light_Driver_68.hPin_L, cable_light_68.pin_p);
  connect(Light_68.p, Light_Driver_68.pin_p);
  connect(Light_68.n, GndDC.p);
  connect(Light_Driver_68.hPin_N, GndAC.pin);
  connect(Light_Driver_68.pin_n, GndDC.p);
  connect(cable_light_68.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_68.y, Light_68.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_68.u);
/* Light Connections 67 */
  connect(Light_Driver_67.hPin_L, cable_light_67.pin_p);
  connect(Light_67.p, Light_Driver_67.pin_p);
  connect(Light_67.n, GndDC.p);
  connect(Light_Driver_67.hPin_N, GndAC.pin);
  connect(Light_Driver_67.pin_n, GndDC.p);
  connect(cable_light_67.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_67.y, Light_67.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_67.u);
/* Light Connections 66 */
  connect(Light_Driver_66.hPin_L, cable_light_66.pin_p);
  connect(Light_66.p, Light_Driver_66.pin_p);
  connect(Light_66.n, GndDC.p);
  connect(Light_Driver_66.hPin_N, GndAC.pin);
  connect(Light_Driver_66.pin_n, GndDC.p);
  connect(cable_light_66.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_66.y, Light_66.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_66.u);
/* Light Connections 65 */
  connect(Light_Driver_65.hPin_L, cable_light_65.pin_p);
  connect(Light_65.p, Light_Driver_65.pin_p);
  connect(Light_65.n, GndDC.p);
  connect(Light_Driver_65.hPin_N, GndAC.pin);
  connect(Light_Driver_65.pin_n, GndDC.p);
  connect(cable_light_65.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_65.y, Light_65.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_65.u);
/* Light Connections 54 */
  connect(Light_Driver_54.hPin_L, cable_light_54.pin_p);
  connect(Light_54.p, Light_Driver_54.pin_p);
  connect(Light_54.n, GndDC.p);
  connect(Light_Driver_54.hPin_N, GndAC.pin);
  connect(Light_Driver_54.pin_n, GndDC.p);
  connect(cable_light_54.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_54.y, Light_54.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_54.u);
/* Light Connections 53 */
  connect(Light_Driver_53.hPin_L, cable_light_53.pin_p);
  connect(Light_53.p, Light_Driver_53.pin_p);
  connect(Light_53.n, GndDC.p);
  connect(Light_Driver_53.hPin_N, GndAC.pin);
  connect(Light_Driver_53.pin_n, GndDC.p);
  connect(cable_light_53.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_53.y, Light_53.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_53.u);
/* Light Connections 42 */
  connect(Light_Driver_42.hPin_L, cable_light_42.pin_p);
  connect(Light_42.p, Light_Driver_42.pin_p);
  connect(Light_42.n, GndDC.p);
  connect(Light_Driver_42.hPin_N, GndAC.pin);
  connect(Light_Driver_42.pin_n, GndDC.p);
  connect(cable_light_42.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_42.y, Light_42.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_42.u);
/* Light Connections 41 */
  connect(Light_Driver_41.hPin_L, cable_light_41.pin_p);
  connect(Light_41.p, Light_Driver_41.pin_p);
  connect(Light_41.n, GndDC.p);
  connect(Light_Driver_41.hPin_N, GndAC.pin);
  connect(Light_Driver_41.pin_n, GndDC.p);
  connect(cable_light_41.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_41.y, Light_41.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_41.u);
/* Light Connections 40 */
  connect(Light_Driver_40.hPin_L, cable_light_40.pin_p);
  connect(Light_40.p, Light_Driver_40.pin_p);
  connect(Light_40.n, GndDC.p);
  connect(Light_Driver_40.hPin_N, GndAC.pin);
  connect(Light_Driver_40.pin_n, GndDC.p);
  connect(cable_light_40.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_40.y, Light_40.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_40.u);
/* Light Connections 39 */
  connect(Light_Driver_39.hPin_L, cable_light_39.pin_p);
  connect(Light_39.p, Light_Driver_39.pin_p);
  connect(Light_39.n, GndDC.p);
  connect(Light_Driver_39.hPin_N, GndAC.pin);
  connect(Light_Driver_39.pin_n, GndDC.p);
  connect(cable_light_39.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_39.y, Light_39.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_39.u);
/* Light Connections 38 */
  connect(Light_Driver_38.hPin_L, cable_light_38.pin_p);
  connect(Light_38.p, Light_Driver_38.pin_p);
  connect(Light_38.n, GndDC.p);
  connect(Light_Driver_38.hPin_N, GndAC.pin);
  connect(Light_Driver_38.pin_n, GndDC.p);
  connect(cable_light_38.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_38.y, Light_38.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_38.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_2C;
