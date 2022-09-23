within PrototypeBuildingElectricalModels.Subsystems.LightingPanels;
model Light_Panel_L1_1A
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
    
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    tableName="L1-Core-Lights",tableOnFile=true,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
    tableOnFile=true,
    tableName="L1-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
    tableOnFile=true,
    tableName="L1-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
    tableOnFile=true,
    tableName="L1-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
    tableOnFile=true,
    tableName="L1-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 130 */
  HPF.DC.Variable_DC_Load Light_130;
  HPF.Cables.NEC_CableModel cable_light_130(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.48);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_130(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_130(k=40);
  
/* Light Model 129 */
  HPF.DC.Variable_DC_Load Light_129;
  HPF.Cables.NEC_CableModel cable_light_129(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_129(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_129(k=28);
  
/* Light Model 128 */
  HPF.DC.Variable_DC_Load Light_128;
  HPF.Cables.NEC_CableModel cable_light_128(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_128(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_128(k=28);
  
/* Light Model 127 */
  HPF.DC.Variable_DC_Load Light_127;
  HPF.Cables.NEC_CableModel cable_light_127(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_127(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_127(k=40);
  
/* Light Model 126 */
  HPF.DC.Variable_DC_Load Light_126;
  HPF.Cables.NEC_CableModel cable_light_126(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_126(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_126(k=40);
  
/* Light Model 125 */
  HPF.DC.Variable_DC_Load Light_125;
  HPF.Cables.NEC_CableModel cable_light_125(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_125(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_125(k=28);
  
/* Light Model 124 */
  HPF.DC.Variable_DC_Load Light_124;
  HPF.Cables.NEC_CableModel cable_light_124(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_124(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_124(k=28);
  
/* Light Model 123 */
  HPF.DC.Variable_DC_Load Light_123;
  HPF.Cables.NEC_CableModel cable_light_123(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_123(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_123(k=40);
  
/* Light Model 122 */
  HPF.DC.Variable_DC_Load Light_122;
  HPF.Cables.NEC_CableModel cable_light_122(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.49);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_122(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_122(k=40);
  
/* Light Model 121 */
  HPF.DC.Variable_DC_Load Light_121;
  HPF.Cables.NEC_CableModel cable_light_121(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.51);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_121(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_121(k=40);
  
/* Light Model 120 */
  HPF.DC.Variable_DC_Load Light_120;
  HPF.Cables.NEC_CableModel cable_light_120(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_120(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_120(k=40);
  
/* Light Model 119 */
  HPF.DC.Variable_DC_Load Light_119;
  HPF.Cables.NEC_CableModel cable_light_119(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_119(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_119(k=40);
  
/* Light Model 118 */
  HPF.DC.Variable_DC_Load Light_118;
  HPF.Cables.NEC_CableModel cable_light_118(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_118(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_118(k=40);
  
/* Light Model 117 */
  HPF.DC.Variable_DC_Load Light_117;
  HPF.Cables.NEC_CableModel cable_light_117(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_117(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_117(k=28);
  
/* Light Model 116 */
  HPF.DC.Variable_DC_Load Light_116;
  HPF.Cables.NEC_CableModel cable_light_116(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_116(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_116(k=28);
  
/* Light Model 115 */
  HPF.DC.Variable_DC_Load Light_115;
  HPF.Cables.NEC_CableModel cable_light_115(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.62);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_115(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_115(k=40);
  
/* Light Model 114 */
  HPF.DC.Variable_DC_Load Light_114;
  HPF.Cables.NEC_CableModel cable_light_114(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_114(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_114(k=40);
  
/* Light Model 113 */
  HPF.DC.Variable_DC_Load Light_113;
  HPF.Cables.NEC_CableModel cable_light_113(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.7);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_113(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_113(k=25);
  
/* Light Model 112 */
  HPF.DC.Variable_DC_Load Light_112;
  HPF.Cables.NEC_CableModel cable_light_112(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_112(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_112(k=25);
  
/* Light Model 111 */
  HPF.DC.Variable_DC_Load Light_111;
  HPF.Cables.NEC_CableModel cable_light_111(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_111(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_111(k=40);
  
/* Light Model 110 */
  HPF.DC.Variable_DC_Load Light_110;
  HPF.Cables.NEC_CableModel cable_light_110(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_110(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_110(k=40);
  
/* Light Model 109 */
  HPF.DC.Variable_DC_Load Light_109;
  HPF.Cables.NEC_CableModel cable_light_109(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_109(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_109(k=40);
  
/* Light Model 108 */
  HPF.DC.Variable_DC_Load Light_108;
  HPF.Cables.NEC_CableModel cable_light_108(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_108(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_108(k=40);
  
/* Light Model 105 */
  HPF.DC.Variable_DC_Load Light_105;
  HPF.Cables.NEC_CableModel cable_light_105(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_105(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_105(k=21);
  
/* Light Model 103 */
  HPF.DC.Variable_DC_Load Light_103;
  HPF.Cables.NEC_CableModel cable_light_103(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_103(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_103(k=21);
  
/* Light Model 102 */
  HPF.DC.Variable_DC_Load Light_102;
  HPF.Cables.NEC_CableModel cable_light_102(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.57);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_102(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_102(k=21);
  
/* Light Model 100 */
  HPF.DC.Variable_DC_Load Light_100;
  HPF.Cables.NEC_CableModel cable_light_100(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_100(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_100(k=21);
  
/* Light Model 92 */
  HPF.DC.Variable_DC_Load Light_92;
  HPF.Cables.NEC_CableModel cable_light_92(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_92(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_92(k=31);
  
/* Light Model 91 */
  HPF.DC.Variable_DC_Load Light_91;
  HPF.Cables.NEC_CableModel cable_light_91(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_91(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_91(k=31);
  
/* Light Model 90 */
  HPF.DC.Variable_DC_Load Light_90;
  HPF.Cables.NEC_CableModel cable_light_90(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_90(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_90(k=31);
  
/* Light Model 89 */
  HPF.DC.Variable_DC_Load Light_89;
  HPF.Cables.NEC_CableModel cable_light_89(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.91);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_89(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_89(k=31);
  
/* Light Model 88 */
  HPF.DC.Variable_DC_Load Light_88;
  HPF.Cables.NEC_CableModel cable_light_88(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_88(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_88(k=31);
  
/* Light Model 87 */
  HPF.DC.Variable_DC_Load Light_87;
  HPF.Cables.NEC_CableModel cable_light_87(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_87(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_87(k=31);
  
/* Light Model 86 */
  HPF.DC.Variable_DC_Load Light_86;
  HPF.Cables.NEC_CableModel cable_light_86(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_86(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_86(k=31);
  
/* Light Model 85 */
  HPF.DC.Variable_DC_Load Light_85;
  HPF.Cables.NEC_CableModel cable_light_85(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_85(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_85(k=31);
  
/* Light Model 84 */
  HPF.DC.Variable_DC_Load Light_84;
  HPF.Cables.NEC_CableModel cable_light_84(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_84(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_84(k=31);
  
/* Light Model 83 */
  HPF.DC.Variable_DC_Load Light_83;
  HPF.Cables.NEC_CableModel cable_light_83(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_83(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_83(k=31);
  
/* Light Model 82 */
  HPF.DC.Variable_DC_Load Light_82;
  HPF.Cables.NEC_CableModel cable_light_82(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_82(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_82(k=31);
  
/* Light Model 81 */
  HPF.DC.Variable_DC_Load Light_81;
  HPF.Cables.NEC_CableModel cable_light_81(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_81(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_81(k=31);
  
/* Light Model 73 */
  HPF.DC.Variable_DC_Load Light_73;
  HPF.Cables.NEC_CableModel cable_light_73(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_73(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_73(k=31);
  
/* Light Model 72 */
  HPF.DC.Variable_DC_Load Light_72;
  HPF.Cables.NEC_CableModel cable_light_72(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_72(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_72(k=31);
  
/* Light Model 64 */
  HPF.DC.Variable_DC_Load Light_64;
  HPF.Cables.NEC_CableModel cable_light_64(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.84);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_64(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_64(k=31);
  
/* Light Model 63 */
  HPF.DC.Variable_DC_Load Light_63;
  HPF.Cables.NEC_CableModel cable_light_63(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_63(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_63(k=31);
  
/* Light Model 62 */
  HPF.DC.Variable_DC_Load Light_62;
  HPF.Cables.NEC_CableModel cable_light_62(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_62(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_62(k=22);
  
/* Light Model 61 */
  HPF.DC.Variable_DC_Load Light_61;
  HPF.Cables.NEC_CableModel cable_light_61(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_61(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_61(k=22);
  
/* Light Model 44 */
  HPF.DC.Variable_DC_Load Light_44;
  HPF.Cables.NEC_CableModel cable_light_44(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_44(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_44(k=28);
  
/* Light Model 43 */
  HPF.DC.Variable_DC_Load Light_43;
  HPF.Cables.NEC_CableModel cable_light_43(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_43(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_43(k=28);
  
/* Light Model 37 */
  HPF.DC.Variable_DC_Load Light_37;
  HPF.Cables.NEC_CableModel cable_light_37(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_37(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_37(k=22);
  
/* Light Model 32 */
  HPF.DC.Variable_DC_Load Light_32;
  HPF.Cables.NEC_CableModel cable_light_32(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=1.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_32(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_32(k=35);
  
/* Light Model 31 */
  HPF.DC.Variable_DC_Load Light_31;
  HPF.Cables.NEC_CableModel cable_light_31(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=3.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_31(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_31(k=35);
  
/* Light Model 30 */
  HPF.DC.Variable_DC_Load Light_30;
  HPF.Cables.NEC_CableModel cable_light_30(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.61);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_30(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_30(k=35);
  
/* Light Model 29 */
  HPF.DC.Variable_DC_Load Light_29;
  HPF.Cables.NEC_CableModel cable_light_29(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_29(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_29(k=35);
  
/* Light Model 28 */
  HPF.DC.Variable_DC_Load Light_28;
  HPF.Cables.NEC_CableModel cable_light_28(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_28(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_28(k=42);
  
/* Light Model 27 */
  HPF.DC.Variable_DC_Load Light_27;
  HPF.Cables.NEC_CableModel cable_light_27(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_27(k=42);
  
/* Light Model 26 */
  HPF.DC.Variable_DC_Load Light_26;
  HPF.Cables.NEC_CableModel cable_light_26(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_26(k=21);
  
/* Light Model 25 */
  HPF.DC.Variable_DC_Load Light_25;
  HPF.Cables.NEC_CableModel cable_light_25(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_25(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 130 */
  connect(Light_Driver_130.hPin_L, cable_light_130.pin_p);
  connect(Light_130.p, Light_Driver_130.pin_p);
  connect(Light_130.n, GndDC.p);
  connect(Light_Driver_130.hPin_N, GndAC.pin);
  connect(Light_Driver_130.pin_n, GndDC.p);
  connect(cable_light_130.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_130.y, Light_130.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_130.u);
/* Light Connections 129 */
  connect(Light_Driver_129.hPin_L, cable_light_129.pin_p);
  connect(Light_129.p, Light_Driver_129.pin_p);
  connect(Light_129.n, GndDC.p);
  connect(Light_Driver_129.hPin_N, GndAC.pin);
  connect(Light_Driver_129.pin_n, GndDC.p);
  connect(cable_light_129.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_129.y, Light_129.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_129.u);
/* Light Connections 128 */
  connect(Light_Driver_128.hPin_L, cable_light_128.pin_p);
  connect(Light_128.p, Light_Driver_128.pin_p);
  connect(Light_128.n, GndDC.p);
  connect(Light_Driver_128.hPin_N, GndAC.pin);
  connect(Light_Driver_128.pin_n, GndDC.p);
  connect(cable_light_128.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_128.y, Light_128.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_128.u);
/* Light Connections 127 */
  connect(Light_Driver_127.hPin_L, cable_light_127.pin_p);
  connect(Light_127.p, Light_Driver_127.pin_p);
  connect(Light_127.n, GndDC.p);
  connect(Light_Driver_127.hPin_N, GndAC.pin);
  connect(Light_Driver_127.pin_n, GndDC.p);
  connect(cable_light_127.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_127.y, Light_127.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_127.u);
/* Light Connections 126 */
  connect(Light_Driver_126.hPin_L, cable_light_126.pin_p);
  connect(Light_126.p, Light_Driver_126.pin_p);
  connect(Light_126.n, GndDC.p);
  connect(Light_Driver_126.hPin_N, GndAC.pin);
  connect(Light_Driver_126.pin_n, GndDC.p);
  connect(cable_light_126.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_126.y, Light_126.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_126.u);
/* Light Connections 125 */
  connect(Light_Driver_125.hPin_L, cable_light_125.pin_p);
  connect(Light_125.p, Light_Driver_125.pin_p);
  connect(Light_125.n, GndDC.p);
  connect(Light_Driver_125.hPin_N, GndAC.pin);
  connect(Light_Driver_125.pin_n, GndDC.p);
  connect(cable_light_125.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_125.y, Light_125.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_125.u);
/* Light Connections 124 */
  connect(Light_Driver_124.hPin_L, cable_light_124.pin_p);
  connect(Light_124.p, Light_Driver_124.pin_p);
  connect(Light_124.n, GndDC.p);
  connect(Light_Driver_124.hPin_N, GndAC.pin);
  connect(Light_Driver_124.pin_n, GndDC.p);
  connect(cable_light_124.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_124.y, Light_124.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_124.u);
/* Light Connections 123 */
  connect(Light_Driver_123.hPin_L, cable_light_123.pin_p);
  connect(Light_123.p, Light_Driver_123.pin_p);
  connect(Light_123.n, GndDC.p);
  connect(Light_Driver_123.hPin_N, GndAC.pin);
  connect(Light_Driver_123.pin_n, GndDC.p);
  connect(cable_light_123.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_123.y, Light_123.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_123.u);
/* Light Connections 122 */
  connect(Light_Driver_122.hPin_L, cable_light_122.pin_p);
  connect(Light_122.p, Light_Driver_122.pin_p);
  connect(Light_122.n, GndDC.p);
  connect(Light_Driver_122.hPin_N, GndAC.pin);
  connect(Light_Driver_122.pin_n, GndDC.p);
  connect(cable_light_122.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_122.y, Light_122.u);
  connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_122.u);
/* Light Connections 121 */
  connect(Light_Driver_121.hPin_L, cable_light_121.pin_p);
  connect(Light_121.p, Light_Driver_121.pin_p);
  connect(Light_121.n, GndDC.p);
  connect(Light_Driver_121.hPin_N, GndAC.pin);
  connect(Light_Driver_121.pin_n, GndDC.p);
  connect(cable_light_121.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_121.y, Light_121.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_121.u);
/* Light Connections 120 */
  connect(Light_Driver_120.hPin_L, cable_light_120.pin_p);
  connect(Light_120.p, Light_Driver_120.pin_p);
  connect(Light_120.n, GndDC.p);
  connect(Light_Driver_120.hPin_N, GndAC.pin);
  connect(Light_Driver_120.pin_n, GndDC.p);
  connect(cable_light_120.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_120.y, Light_120.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_120.u);
/* Light Connections 119 */
  connect(Light_Driver_119.hPin_L, cable_light_119.pin_p);
  connect(Light_119.p, Light_Driver_119.pin_p);
  connect(Light_119.n, GndDC.p);
  connect(Light_Driver_119.hPin_N, GndAC.pin);
  connect(Light_Driver_119.pin_n, GndDC.p);
  connect(cable_light_119.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_119.y, Light_119.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_119.u);
/* Light Connections 118 */
  connect(Light_Driver_118.hPin_L, cable_light_118.pin_p);
  connect(Light_118.p, Light_Driver_118.pin_p);
  connect(Light_118.n, GndDC.p);
  connect(Light_Driver_118.hPin_N, GndAC.pin);
  connect(Light_Driver_118.pin_n, GndDC.p);
  connect(cable_light_118.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_118.y, Light_118.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_118.u);
/* Light Connections 117 */
  connect(Light_Driver_117.hPin_L, cable_light_117.pin_p);
  connect(Light_117.p, Light_Driver_117.pin_p);
  connect(Light_117.n, GndDC.p);
  connect(Light_Driver_117.hPin_N, GndAC.pin);
  connect(Light_Driver_117.pin_n, GndDC.p);
  connect(cable_light_117.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_117.y, Light_117.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_117.u);
/* Light Connections 116 */
  connect(Light_Driver_116.hPin_L, cable_light_116.pin_p);
  connect(Light_116.p, Light_Driver_116.pin_p);
  connect(Light_116.n, GndDC.p);
  connect(Light_Driver_116.hPin_N, GndAC.pin);
  connect(Light_Driver_116.pin_n, GndDC.p);
  connect(cable_light_116.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_116.y, Light_116.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_116.u);
/* Light Connections 115 */
  connect(Light_Driver_115.hPin_L, cable_light_115.pin_p);
  connect(Light_115.p, Light_Driver_115.pin_p);
  connect(Light_115.n, GndDC.p);
  connect(Light_Driver_115.hPin_N, GndAC.pin);
  connect(Light_Driver_115.pin_n, GndDC.p);
  connect(cable_light_115.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_115.y, Light_115.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_115.u);
/* Light Connections 114 */
  connect(Light_Driver_114.hPin_L, cable_light_114.pin_p);
  connect(Light_114.p, Light_Driver_114.pin_p);
  connect(Light_114.n, GndDC.p);
  connect(Light_Driver_114.hPin_N, GndAC.pin);
  connect(Light_Driver_114.pin_n, GndDC.p);
  connect(cable_light_114.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_114.y, Light_114.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_114.u);
/* Light Connections 113 */
  connect(Light_Driver_113.hPin_L, cable_light_113.pin_p);
  connect(Light_113.p, Light_Driver_113.pin_p);
  connect(Light_113.n, GndDC.p);
  connect(Light_Driver_113.hPin_N, GndAC.pin);
  connect(Light_Driver_113.pin_n, GndDC.p);
  connect(cable_light_113.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_113.y, Light_113.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_113.u);
/* Light Connections 112 */
  connect(Light_Driver_112.hPin_L, cable_light_112.pin_p);
  connect(Light_112.p, Light_Driver_112.pin_p);
  connect(Light_112.n, GndDC.p);
  connect(Light_Driver_112.hPin_N, GndAC.pin);
  connect(Light_Driver_112.pin_n, GndDC.p);
  connect(cable_light_112.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_112.y, Light_112.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_112.u);
/* Light Connections 111 */
  connect(Light_Driver_111.hPin_L, cable_light_111.pin_p);
  connect(Light_111.p, Light_Driver_111.pin_p);
  connect(Light_111.n, GndDC.p);
  connect(Light_Driver_111.hPin_N, GndAC.pin);
  connect(Light_Driver_111.pin_n, GndDC.p);
  connect(cable_light_111.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_111.y, Light_111.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_111.u);
/* Light Connections 110 */
  connect(Light_Driver_110.hPin_L, cable_light_110.pin_p);
  connect(Light_110.p, Light_Driver_110.pin_p);
  connect(Light_110.n, GndDC.p);
  connect(Light_Driver_110.hPin_N, GndAC.pin);
  connect(Light_Driver_110.pin_n, GndDC.p);
  connect(cable_light_110.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_110.y, Light_110.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_110.u);
/* Light Connections 109 */
  connect(Light_Driver_109.hPin_L, cable_light_109.pin_p);
  connect(Light_109.p, Light_Driver_109.pin_p);
  connect(Light_109.n, GndDC.p);
  connect(Light_Driver_109.hPin_N, GndAC.pin);
  connect(Light_Driver_109.pin_n, GndDC.p);
  connect(cable_light_109.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_109.y, Light_109.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_109.u);
/* Light Connections 108 */
  connect(Light_Driver_108.hPin_L, cable_light_108.pin_p);
  connect(Light_108.p, Light_Driver_108.pin_p);
  connect(Light_108.n, GndDC.p);
  connect(Light_Driver_108.hPin_N, GndAC.pin);
  connect(Light_Driver_108.pin_n, GndDC.p);
  connect(cable_light_108.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_108.y, Light_108.u);
  connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_108.u);
/* Light Connections 105 */
  connect(Light_Driver_105.hPin_L, cable_light_105.pin_p);
  connect(Light_105.p, Light_Driver_105.pin_p);
  connect(Light_105.n, GndDC.p);
  connect(Light_Driver_105.hPin_N, GndAC.pin);
  connect(Light_Driver_105.pin_n, GndDC.p);
  connect(cable_light_105.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_105.y, Light_105.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_105.u);
/* Light Connections 103 */
  connect(Light_Driver_103.hPin_L, cable_light_103.pin_p);
  connect(Light_103.p, Light_Driver_103.pin_p);
  connect(Light_103.n, GndDC.p);
  connect(Light_Driver_103.hPin_N, GndAC.pin);
  connect(Light_Driver_103.pin_n, GndDC.p);
  connect(cable_light_103.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_103.y, Light_103.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_103.u);
/* Light Connections 102 */
  connect(Light_Driver_102.hPin_L, cable_light_102.pin_p);
  connect(Light_102.p, Light_Driver_102.pin_p);
  connect(Light_102.n, GndDC.p);
  connect(Light_Driver_102.hPin_N, GndAC.pin);
  connect(Light_Driver_102.pin_n, GndDC.p);
  connect(cable_light_102.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_102.y, Light_102.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_102.u);
/* Light Connections 100 */
  connect(Light_Driver_100.hPin_L, cable_light_100.pin_p);
  connect(Light_100.p, Light_Driver_100.pin_p);
  connect(Light_100.n, GndDC.p);
  connect(Light_Driver_100.hPin_N, GndAC.pin);
  connect(Light_Driver_100.pin_n, GndDC.p);
  connect(cable_light_100.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_100.y, Light_100.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_100.u);
/* Light Connections 92 */
  connect(Light_Driver_92.hPin_L, cable_light_92.pin_p);
  connect(Light_92.p, Light_Driver_92.pin_p);
  connect(Light_92.n, GndDC.p);
  connect(Light_Driver_92.hPin_N, GndAC.pin);
  connect(Light_Driver_92.pin_n, GndDC.p);
  connect(cable_light_92.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_92.y, Light_92.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_92.u);
/* Light Connections 91 */
  connect(Light_Driver_91.hPin_L, cable_light_91.pin_p);
  connect(Light_91.p, Light_Driver_91.pin_p);
  connect(Light_91.n, GndDC.p);
  connect(Light_Driver_91.hPin_N, GndAC.pin);
  connect(Light_Driver_91.pin_n, GndDC.p);
  connect(cable_light_91.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_91.y, Light_91.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_91.u);
/* Light Connections 90 */
  connect(Light_Driver_90.hPin_L, cable_light_90.pin_p);
  connect(Light_90.p, Light_Driver_90.pin_p);
  connect(Light_90.n, GndDC.p);
  connect(Light_Driver_90.hPin_N, GndAC.pin);
  connect(Light_Driver_90.pin_n, GndDC.p);
  connect(cable_light_90.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_90.y, Light_90.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_90.u);
/* Light Connections 89 */
  connect(Light_Driver_89.hPin_L, cable_light_89.pin_p);
  connect(Light_89.p, Light_Driver_89.pin_p);
  connect(Light_89.n, GndDC.p);
  connect(Light_Driver_89.hPin_N, GndAC.pin);
  connect(Light_Driver_89.pin_n, GndDC.p);
  connect(cable_light_89.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_89.y, Light_89.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_89.u);
/* Light Connections 88 */
  connect(Light_Driver_88.hPin_L, cable_light_88.pin_p);
  connect(Light_88.p, Light_Driver_88.pin_p);
  connect(Light_88.n, GndDC.p);
  connect(Light_Driver_88.hPin_N, GndAC.pin);
  connect(Light_Driver_88.pin_n, GndDC.p);
  connect(cable_light_88.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_88.y, Light_88.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_88.u);
/* Light Connections 87 */
  connect(Light_Driver_87.hPin_L, cable_light_87.pin_p);
  connect(Light_87.p, Light_Driver_87.pin_p);
  connect(Light_87.n, GndDC.p);
  connect(Light_Driver_87.hPin_N, GndAC.pin);
  connect(Light_Driver_87.pin_n, GndDC.p);
  connect(cable_light_87.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_87.y, Light_87.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_87.u);
/* Light Connections 86 */
  connect(Light_Driver_86.hPin_L, cable_light_86.pin_p);
  connect(Light_86.p, Light_Driver_86.pin_p);
  connect(Light_86.n, GndDC.p);
  connect(Light_Driver_86.hPin_N, GndAC.pin);
  connect(Light_Driver_86.pin_n, GndDC.p);
  connect(cable_light_86.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_86.y, Light_86.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_86.u);
/* Light Connections 85 */
  connect(Light_Driver_85.hPin_L, cable_light_85.pin_p);
  connect(Light_85.p, Light_Driver_85.pin_p);
  connect(Light_85.n, GndDC.p);
  connect(Light_Driver_85.hPin_N, GndAC.pin);
  connect(Light_Driver_85.pin_n, GndDC.p);
  connect(cable_light_85.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_85.y, Light_85.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_85.u);
/* Light Connections 84 */
  connect(Light_Driver_84.hPin_L, cable_light_84.pin_p);
  connect(Light_84.p, Light_Driver_84.pin_p);
  connect(Light_84.n, GndDC.p);
  connect(Light_Driver_84.hPin_N, GndAC.pin);
  connect(Light_Driver_84.pin_n, GndDC.p);
  connect(cable_light_84.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_84.y, Light_84.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_84.u);
/* Light Connections 83 */
  connect(Light_Driver_83.hPin_L, cable_light_83.pin_p);
  connect(Light_83.p, Light_Driver_83.pin_p);
  connect(Light_83.n, GndDC.p);
  connect(Light_Driver_83.hPin_N, GndAC.pin);
  connect(Light_Driver_83.pin_n, GndDC.p);
  connect(cable_light_83.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_83.y, Light_83.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_83.u);
/* Light Connections 82 */
  connect(Light_Driver_82.hPin_L, cable_light_82.pin_p);
  connect(Light_82.p, Light_Driver_82.pin_p);
  connect(Light_82.n, GndDC.p);
  connect(Light_Driver_82.hPin_N, GndAC.pin);
  connect(Light_Driver_82.pin_n, GndDC.p);
  connect(cable_light_82.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_82.y, Light_82.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_82.u);
/* Light Connections 81 */
  connect(Light_Driver_81.hPin_L, cable_light_81.pin_p);
  connect(Light_81.p, Light_Driver_81.pin_p);
  connect(Light_81.n, GndDC.p);
  connect(Light_Driver_81.hPin_N, GndAC.pin);
  connect(Light_Driver_81.pin_n, GndDC.p);
  connect(cable_light_81.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_81.y, Light_81.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_81.u);
/* Light Connections 73 */
  connect(Light_Driver_73.hPin_L, cable_light_73.pin_p);
  connect(Light_73.p, Light_Driver_73.pin_p);
  connect(Light_73.n, GndDC.p);
  connect(Light_Driver_73.hPin_N, GndAC.pin);
  connect(Light_Driver_73.pin_n, GndDC.p);
  connect(cable_light_73.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_73.y, Light_73.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_73.u);
/* Light Connections 72 */
  connect(Light_Driver_72.hPin_L, cable_light_72.pin_p);
  connect(Light_72.p, Light_Driver_72.pin_p);
  connect(Light_72.n, GndDC.p);
  connect(Light_Driver_72.hPin_N, GndAC.pin);
  connect(Light_Driver_72.pin_n, GndDC.p);
  connect(cable_light_72.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_72.y, Light_72.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_72.u);
/* Light Connections 64 */
  connect(Light_Driver_64.hPin_L, cable_light_64.pin_p);
  connect(Light_64.p, Light_Driver_64.pin_p);
  connect(Light_64.n, GndDC.p);
  connect(Light_Driver_64.hPin_N, GndAC.pin);
  connect(Light_Driver_64.pin_n, GndDC.p);
  connect(cable_light_64.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_64.y, Light_64.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_64.u);
/* Light Connections 63 */
  connect(Light_Driver_63.hPin_L, cable_light_63.pin_p);
  connect(Light_63.p, Light_Driver_63.pin_p);
  connect(Light_63.n, GndDC.p);
  connect(Light_Driver_63.hPin_N, GndAC.pin);
  connect(Light_Driver_63.pin_n, GndDC.p);
  connect(cable_light_63.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_63.y, Light_63.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_63.u);
/* Light Connections 62 */
  connect(Light_Driver_62.hPin_L, cable_light_62.pin_p);
  connect(Light_62.p, Light_Driver_62.pin_p);
  connect(Light_62.n, GndDC.p);
  connect(Light_Driver_62.hPin_N, GndAC.pin);
  connect(Light_Driver_62.pin_n, GndDC.p);
  connect(cable_light_62.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_62.y, Light_62.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_62.u);
/* Light Connections 61 */
  connect(Light_Driver_61.hPin_L, cable_light_61.pin_p);
  connect(Light_61.p, Light_Driver_61.pin_p);
  connect(Light_61.n, GndDC.p);
  connect(Light_Driver_61.hPin_N, GndAC.pin);
  connect(Light_Driver_61.pin_n, GndDC.p);
  connect(cable_light_61.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_61.y, Light_61.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_61.u);
/* Light Connections 44 */
  connect(Light_Driver_44.hPin_L, cable_light_44.pin_p);
  connect(Light_44.p, Light_Driver_44.pin_p);
  connect(Light_44.n, GndDC.p);
  connect(Light_Driver_44.hPin_N, GndAC.pin);
  connect(Light_Driver_44.pin_n, GndDC.p);
  connect(cable_light_44.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_44.y, Light_44.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_44.u);
/* Light Connections 43 */
  connect(Light_Driver_43.hPin_L, cable_light_43.pin_p);
  connect(Light_43.p, Light_Driver_43.pin_p);
  connect(Light_43.n, GndDC.p);
  connect(Light_Driver_43.hPin_N, GndAC.pin);
  connect(Light_Driver_43.pin_n, GndDC.p);
  connect(cable_light_43.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_43.y, Light_43.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_43.u);
/* Light Connections 37 */
  connect(Light_Driver_37.hPin_L, cable_light_37.pin_p);
  connect(Light_37.p, Light_Driver_37.pin_p);
  connect(Light_37.n, GndDC.p);
  connect(Light_Driver_37.hPin_N, GndAC.pin);
  connect(Light_Driver_37.pin_n, GndDC.p);
  connect(cable_light_37.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_37.y, Light_37.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_37.u);
/* Light Connections 32 */
  connect(Light_Driver_32.hPin_L, cable_light_32.pin_p);
  connect(Light_32.p, Light_Driver_32.pin_p);
  connect(Light_32.n, GndDC.p);
  connect(Light_Driver_32.hPin_N, GndAC.pin);
  connect(Light_Driver_32.pin_n, GndDC.p);
  connect(cable_light_32.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_32.y, Light_32.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_32.u);
/* Light Connections 31 */
  connect(Light_Driver_31.hPin_L, cable_light_31.pin_p);
  connect(Light_31.p, Light_Driver_31.pin_p);
  connect(Light_31.n, GndDC.p);
  connect(Light_Driver_31.hPin_N, GndAC.pin);
  connect(Light_Driver_31.pin_n, GndDC.p);
  connect(cable_light_31.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_31.y, Light_31.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_31.u);
/* Light Connections 30 */
  connect(Light_Driver_30.hPin_L, cable_light_30.pin_p);
  connect(Light_30.p, Light_Driver_30.pin_p);
  connect(Light_30.n, GndDC.p);
  connect(Light_Driver_30.hPin_N, GndAC.pin);
  connect(Light_Driver_30.pin_n, GndDC.p);
  connect(cable_light_30.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_30.y, Light_30.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_30.u);
/* Light Connections 29 */
  connect(Light_Driver_29.hPin_L, cable_light_29.pin_p);
  connect(Light_29.p, Light_Driver_29.pin_p);
  connect(Light_29.n, GndDC.p);
  connect(Light_Driver_29.hPin_N, GndAC.pin);
  connect(Light_Driver_29.pin_n, GndDC.p);
  connect(cable_light_29.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_29.y, Light_29.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_29.u);
/* Light Connections 28 */
  connect(Light_Driver_28.hPin_L, cable_light_28.pin_p);
  connect(Light_28.p, Light_Driver_28.pin_p);
  connect(Light_28.n, GndDC.p);
  connect(Light_Driver_28.hPin_N, GndAC.pin);
  connect(Light_Driver_28.pin_n, GndDC.p);
  connect(cable_light_28.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_28.y, Light_28.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_28.u);
/* Light Connections 27 */
  connect(Light_Driver_27.hPin_L, cable_light_27.pin_p);
  connect(Light_27.p, Light_Driver_27.pin_p);
  connect(Light_27.n, GndDC.p);
  connect(Light_Driver_27.hPin_N, GndAC.pin);
  connect(Light_Driver_27.pin_n, GndDC.p);
  connect(cable_light_27.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_27.y, Light_27.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_27.u);
/* Light Connections 26 */
  connect(Light_Driver_26.hPin_L, cable_light_26.pin_p);
  connect(Light_26.p, Light_Driver_26.pin_p);
  connect(Light_26.n, GndDC.p);
  connect(Light_Driver_26.hPin_N, GndAC.pin);
  connect(Light_Driver_26.pin_n, GndDC.p);
  connect(cable_light_26.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_26.y, Light_26.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_26.u);
/* Light Connections 25 */
  connect(Light_Driver_25.hPin_L, cable_light_25.pin_p);
  connect(Light_25.p, Light_Driver_25.pin_p);
  connect(Light_25.n, GndDC.p);
  connect(Light_Driver_25.hPin_N, GndAC.pin);
  connect(Light_Driver_25.pin_n, GndDC.p);
  connect(cable_light_25.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_25.y, Light_25.u);
  connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_25.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L1_1A;
