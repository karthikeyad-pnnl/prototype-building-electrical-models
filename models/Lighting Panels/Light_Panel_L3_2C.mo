within ;
model Light_Panel_L3_2C
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
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
    tableOnFile=true,
    tableName="L3-Core-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
    tableOnFile=true,
    tableName="L3-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
    tableOnFile=true,
    tableName="L3-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
    tableOnFile=true,
    tableName="L3-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
    tableOnFile=true,
    tableName="L3-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 844 */
  HPF.DC.Variable_DC_Load Light_844;
  HPF.Cables.NEC_CableModel cable_light_844(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_844(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_844(k=25);
  
/* Light Model 843 */
  HPF.DC.Variable_DC_Load Light_843;
  HPF.Cables.NEC_CableModel cable_light_843(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_843(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_843(k=25);
  
/* Light Model 842 */
  HPF.DC.Variable_DC_Load Light_842;
  HPF.Cables.NEC_CableModel cable_light_842(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.22);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_842(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_842(k=25);
  
/* Light Model 788 */
  HPF.DC.Variable_DC_Load Light_788;
  HPF.Cables.NEC_CableModel cable_light_788(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_788(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_788(k=28);
  
/* Light Model 787 */
  HPF.DC.Variable_DC_Load Light_787;
  HPF.Cables.NEC_CableModel cable_light_787(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_787(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_787(k=28);
  
/* Light Model 786 */
  HPF.DC.Variable_DC_Load Light_786;
  HPF.Cables.NEC_CableModel cable_light_786(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_786(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_786(k=28);
  
/* Light Model 785 */
  HPF.DC.Variable_DC_Load Light_785;
  HPF.Cables.NEC_CableModel cable_light_785(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_785(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_785(k=28);
  
/* Light Model 784 */
  HPF.DC.Variable_DC_Load Light_784;
  HPF.Cables.NEC_CableModel cable_light_784(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_784(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_784(k=28);
  
/* Light Model 783 */
  HPF.DC.Variable_DC_Load Light_783;
  HPF.Cables.NEC_CableModel cable_light_783(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_783(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_783(k=28);
  
/* Light Model 782 */
  HPF.DC.Variable_DC_Load Light_782;
  HPF.Cables.NEC_CableModel cable_light_782(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_782(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_782(k=22);
  
/* Light Model 781 */
  HPF.DC.Variable_DC_Load Light_781;
  HPF.Cables.NEC_CableModel cable_light_781(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_781(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_781(k=22);
  
/* Light Model 776 */
  HPF.DC.Variable_DC_Load Light_776;
  HPF.Cables.NEC_CableModel cable_light_776(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.22);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_776(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_776(k=40);
  
/* Light Model 775 */
  HPF.DC.Variable_DC_Load Light_775;
  HPF.Cables.NEC_CableModel cable_light_775(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_775(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_775(k=40);
  
/* Light Model 774 */
  HPF.DC.Variable_DC_Load Light_774;
  HPF.Cables.NEC_CableModel cable_light_774(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_774(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_774(k=28);
  
/* Light Model 773 */
  HPF.DC.Variable_DC_Load Light_773;
  HPF.Cables.NEC_CableModel cable_light_773(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.92);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_773(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_773(k=28);
  
/* Light Model 772 */
  HPF.DC.Variable_DC_Load Light_772;
  HPF.Cables.NEC_CableModel cable_light_772(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_772(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_772(k=40);
  
/* Light Model 771 */
  HPF.DC.Variable_DC_Load Light_771;
  HPF.Cables.NEC_CableModel cable_light_771(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_771(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_771(k=40);
  
/* Light Model 770 */
  HPF.DC.Variable_DC_Load Light_770;
  HPF.Cables.NEC_CableModel cable_light_770(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_770(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_770(k=40);
  
/* Light Model 769 */
  HPF.DC.Variable_DC_Load Light_769;
  HPF.Cables.NEC_CableModel cable_light_769(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_769(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_769(k=40);
  
/* Light Model 768 */
  HPF.DC.Variable_DC_Load Light_768;
  HPF.Cables.NEC_CableModel cable_light_768(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_768(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_768(k=28);
  
/* Light Model 767 */
  HPF.DC.Variable_DC_Load Light_767;
  HPF.Cables.NEC_CableModel cable_light_767(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_767(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_767(k=28);
  
/* Light Model 766 */
  HPF.DC.Variable_DC_Load Light_766;
  HPF.Cables.NEC_CableModel cable_light_766(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_766(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_766(k=40);
  
/* Light Model 765 */
  HPF.DC.Variable_DC_Load Light_765;
  HPF.Cables.NEC_CableModel cable_light_765(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_765(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_765(k=40);
  
/* Light Model 764 */
  HPF.DC.Variable_DC_Load Light_764;
  HPF.Cables.NEC_CableModel cable_light_764(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_764(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_764(k=40);
  
/* Light Model 763 */
  HPF.DC.Variable_DC_Load Light_763;
  HPF.Cables.NEC_CableModel cable_light_763(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_763(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_763(k=40);
  
/* Light Model 762 */
  HPF.DC.Variable_DC_Load Light_762;
  HPF.Cables.NEC_CableModel cable_light_762(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_762(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_762(k=40);
  
/* Light Model 761 */
  HPF.DC.Variable_DC_Load Light_761;
  HPF.Cables.NEC_CableModel cable_light_761(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_761(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_761(k=25);
  
/* Light Model 760 */
  HPF.DC.Variable_DC_Load Light_760;
  HPF.Cables.NEC_CableModel cable_light_760(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_760(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_760(k=25);
  
/* Light Model 759 */
  HPF.DC.Variable_DC_Load Light_759;
  HPF.Cables.NEC_CableModel cable_light_759(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_759(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_759(k=25);
  
/* Light Model 758 */
  HPF.DC.Variable_DC_Load Light_758;
  HPF.Cables.NEC_CableModel cable_light_758(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_758(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_758(k=25);
  
/* Light Model 757 */
  HPF.DC.Variable_DC_Load Light_757;
  HPF.Cables.NEC_CableModel cable_light_757(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_757(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_757(k=40);
  
/* Light Model 756 */
  HPF.DC.Variable_DC_Load Light_756;
  HPF.Cables.NEC_CableModel cable_light_756(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_756(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_756(k=40);
  
/* Light Model 755 */
  HPF.DC.Variable_DC_Load Light_755;
  HPF.Cables.NEC_CableModel cable_light_755(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.42);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_755(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_755(k=40);
  
/* Light Model 754 */
  HPF.DC.Variable_DC_Load Light_754;
  HPF.Cables.NEC_CableModel cable_light_754(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_754(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_754(k=40);
  
/* Light Model 753 */
  HPF.DC.Variable_DC_Load Light_753;
  HPF.Cables.NEC_CableModel cable_light_753(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_753(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_753(k=42);
  
/* Light Model 752 */
  HPF.DC.Variable_DC_Load Light_752;
  HPF.Cables.NEC_CableModel cable_light_752(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_752(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_752(k=42);
  
/* Light Model 749 */
  HPF.DC.Variable_DC_Load Light_749;
  HPF.Cables.NEC_CableModel cable_light_749(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_749(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_749(k=21);
  
/* Light Model 748 */
  HPF.DC.Variable_DC_Load Light_748;
  HPF.Cables.NEC_CableModel cable_light_748(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.09);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_748(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_748(k=21);
  
/* Light Model 733 */
  HPF.DC.Variable_DC_Load Light_733;
  HPF.Cables.NEC_CableModel cable_light_733(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_733(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_733(k=21);
  
/* Light Model 732 */
  HPF.DC.Variable_DC_Load Light_732;
  HPF.Cables.NEC_CableModel cable_light_732(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_732(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_732(k=21);
  
/* Light Model 731 */
  HPF.DC.Variable_DC_Load Light_731;
  HPF.Cables.NEC_CableModel cable_light_731(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_731(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_731(k=21);
  
/* Light Model 730 */
  HPF.DC.Variable_DC_Load Light_730;
  HPF.Cables.NEC_CableModel cable_light_730(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_730(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_730(k=21);
  
/* Light Model 727 */
  HPF.DC.Variable_DC_Load Light_727;
  HPF.Cables.NEC_CableModel cable_light_727(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_727(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_727(k=34);
  
/* Light Model 726 */
  HPF.DC.Variable_DC_Load Light_726;
  HPF.Cables.NEC_CableModel cable_light_726(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.42);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_726(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_726(k=34);
  
/* Light Model 725 */
  HPF.DC.Variable_DC_Load Light_725;
  HPF.Cables.NEC_CableModel cable_light_725(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_725(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_725(k=34);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 844 */
  connect(Light_Driver_844.hPin_L, cable_light_844.pin_p);
  connect(Light_844.p, Light_Driver_844.pin_p);
  connect(Light_844.n, GndDC.p);
  connect(Light_Driver_844.hPin_N, GndAC.pin);
  connect(Light_Driver_844.pin_n, GndDC.p);
  connect(cable_light_844.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_844.y, Light_844.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_844.u);
/* Light Connections 843 */
  connect(Light_Driver_843.hPin_L, cable_light_843.pin_p);
  connect(Light_843.p, Light_Driver_843.pin_p);
  connect(Light_843.n, GndDC.p);
  connect(Light_Driver_843.hPin_N, GndAC.pin);
  connect(Light_Driver_843.pin_n, GndDC.p);
  connect(cable_light_843.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_843.y, Light_843.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_843.u);
/* Light Connections 842 */
  connect(Light_Driver_842.hPin_L, cable_light_842.pin_p);
  connect(Light_842.p, Light_Driver_842.pin_p);
  connect(Light_842.n, GndDC.p);
  connect(Light_Driver_842.hPin_N, GndAC.pin);
  connect(Light_Driver_842.pin_n, GndDC.p);
  connect(cable_light_842.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_842.y, Light_842.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_842.u);
/* Light Connections 788 */
  connect(Light_Driver_788.hPin_L, cable_light_788.pin_p);
  connect(Light_788.p, Light_Driver_788.pin_p);
  connect(Light_788.n, GndDC.p);
  connect(Light_Driver_788.hPin_N, GndAC.pin);
  connect(Light_Driver_788.pin_n, GndDC.p);
  connect(cable_light_788.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_788.y, Light_788.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_788.u);
/* Light Connections 787 */
  connect(Light_Driver_787.hPin_L, cable_light_787.pin_p);
  connect(Light_787.p, Light_Driver_787.pin_p);
  connect(Light_787.n, GndDC.p);
  connect(Light_Driver_787.hPin_N, GndAC.pin);
  connect(Light_Driver_787.pin_n, GndDC.p);
  connect(cable_light_787.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_787.y, Light_787.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_787.u);
/* Light Connections 786 */
  connect(Light_Driver_786.hPin_L, cable_light_786.pin_p);
  connect(Light_786.p, Light_Driver_786.pin_p);
  connect(Light_786.n, GndDC.p);
  connect(Light_Driver_786.hPin_N, GndAC.pin);
  connect(Light_Driver_786.pin_n, GndDC.p);
  connect(cable_light_786.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_786.y, Light_786.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_786.u);
/* Light Connections 785 */
  connect(Light_Driver_785.hPin_L, cable_light_785.pin_p);
  connect(Light_785.p, Light_Driver_785.pin_p);
  connect(Light_785.n, GndDC.p);
  connect(Light_Driver_785.hPin_N, GndAC.pin);
  connect(Light_Driver_785.pin_n, GndDC.p);
  connect(cable_light_785.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_785.y, Light_785.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_785.u);
/* Light Connections 784 */
  connect(Light_Driver_784.hPin_L, cable_light_784.pin_p);
  connect(Light_784.p, Light_Driver_784.pin_p);
  connect(Light_784.n, GndDC.p);
  connect(Light_Driver_784.hPin_N, GndAC.pin);
  connect(Light_Driver_784.pin_n, GndDC.p);
  connect(cable_light_784.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_784.y, Light_784.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_784.u);
/* Light Connections 783 */
  connect(Light_Driver_783.hPin_L, cable_light_783.pin_p);
  connect(Light_783.p, Light_Driver_783.pin_p);
  connect(Light_783.n, GndDC.p);
  connect(Light_Driver_783.hPin_N, GndAC.pin);
  connect(Light_Driver_783.pin_n, GndDC.p);
  connect(cable_light_783.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_783.y, Light_783.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_783.u);
/* Light Connections 782 */
  connect(Light_Driver_782.hPin_L, cable_light_782.pin_p);
  connect(Light_782.p, Light_Driver_782.pin_p);
  connect(Light_782.n, GndDC.p);
  connect(Light_Driver_782.hPin_N, GndAC.pin);
  connect(Light_Driver_782.pin_n, GndDC.p);
  connect(cable_light_782.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_782.y, Light_782.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_782.u);
/* Light Connections 781 */
  connect(Light_Driver_781.hPin_L, cable_light_781.pin_p);
  connect(Light_781.p, Light_Driver_781.pin_p);
  connect(Light_781.n, GndDC.p);
  connect(Light_Driver_781.hPin_N, GndAC.pin);
  connect(Light_Driver_781.pin_n, GndDC.p);
  connect(cable_light_781.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_781.y, Light_781.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_781.u);
/* Light Connections 776 */
  connect(Light_Driver_776.hPin_L, cable_light_776.pin_p);
  connect(Light_776.p, Light_Driver_776.pin_p);
  connect(Light_776.n, GndDC.p);
  connect(Light_Driver_776.hPin_N, GndAC.pin);
  connect(Light_Driver_776.pin_n, GndDC.p);
  connect(cable_light_776.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_776.y, Light_776.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_776.u);
/* Light Connections 775 */
  connect(Light_Driver_775.hPin_L, cable_light_775.pin_p);
  connect(Light_775.p, Light_Driver_775.pin_p);
  connect(Light_775.n, GndDC.p);
  connect(Light_Driver_775.hPin_N, GndAC.pin);
  connect(Light_Driver_775.pin_n, GndDC.p);
  connect(cable_light_775.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_775.y, Light_775.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_775.u);
/* Light Connections 774 */
  connect(Light_Driver_774.hPin_L, cable_light_774.pin_p);
  connect(Light_774.p, Light_Driver_774.pin_p);
  connect(Light_774.n, GndDC.p);
  connect(Light_Driver_774.hPin_N, GndAC.pin);
  connect(Light_Driver_774.pin_n, GndDC.p);
  connect(cable_light_774.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_774.y, Light_774.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_774.u);
/* Light Connections 773 */
  connect(Light_Driver_773.hPin_L, cable_light_773.pin_p);
  connect(Light_773.p, Light_Driver_773.pin_p);
  connect(Light_773.n, GndDC.p);
  connect(Light_Driver_773.hPin_N, GndAC.pin);
  connect(Light_Driver_773.pin_n, GndDC.p);
  connect(cable_light_773.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_773.y, Light_773.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_773.u);
/* Light Connections 772 */
  connect(Light_Driver_772.hPin_L, cable_light_772.pin_p);
  connect(Light_772.p, Light_Driver_772.pin_p);
  connect(Light_772.n, GndDC.p);
  connect(Light_Driver_772.hPin_N, GndAC.pin);
  connect(Light_Driver_772.pin_n, GndDC.p);
  connect(cable_light_772.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_772.y, Light_772.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_772.u);
/* Light Connections 771 */
  connect(Light_Driver_771.hPin_L, cable_light_771.pin_p);
  connect(Light_771.p, Light_Driver_771.pin_p);
  connect(Light_771.n, GndDC.p);
  connect(Light_Driver_771.hPin_N, GndAC.pin);
  connect(Light_Driver_771.pin_n, GndDC.p);
  connect(cable_light_771.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_771.y, Light_771.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_771.u);
/* Light Connections 770 */
  connect(Light_Driver_770.hPin_L, cable_light_770.pin_p);
  connect(Light_770.p, Light_Driver_770.pin_p);
  connect(Light_770.n, GndDC.p);
  connect(Light_Driver_770.hPin_N, GndAC.pin);
  connect(Light_Driver_770.pin_n, GndDC.p);
  connect(cable_light_770.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_770.y, Light_770.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_770.u);
/* Light Connections 769 */
  connect(Light_Driver_769.hPin_L, cable_light_769.pin_p);
  connect(Light_769.p, Light_Driver_769.pin_p);
  connect(Light_769.n, GndDC.p);
  connect(Light_Driver_769.hPin_N, GndAC.pin);
  connect(Light_Driver_769.pin_n, GndDC.p);
  connect(cable_light_769.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_769.y, Light_769.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_769.u);
/* Light Connections 768 */
  connect(Light_Driver_768.hPin_L, cable_light_768.pin_p);
  connect(Light_768.p, Light_Driver_768.pin_p);
  connect(Light_768.n, GndDC.p);
  connect(Light_Driver_768.hPin_N, GndAC.pin);
  connect(Light_Driver_768.pin_n, GndDC.p);
  connect(cable_light_768.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_768.y, Light_768.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_768.u);
/* Light Connections 767 */
  connect(Light_Driver_767.hPin_L, cable_light_767.pin_p);
  connect(Light_767.p, Light_Driver_767.pin_p);
  connect(Light_767.n, GndDC.p);
  connect(Light_Driver_767.hPin_N, GndAC.pin);
  connect(Light_Driver_767.pin_n, GndDC.p);
  connect(cable_light_767.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_767.y, Light_767.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_767.u);
/* Light Connections 766 */
  connect(Light_Driver_766.hPin_L, cable_light_766.pin_p);
  connect(Light_766.p, Light_Driver_766.pin_p);
  connect(Light_766.n, GndDC.p);
  connect(Light_Driver_766.hPin_N, GndAC.pin);
  connect(Light_Driver_766.pin_n, GndDC.p);
  connect(cable_light_766.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_766.y, Light_766.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_766.u);
/* Light Connections 765 */
  connect(Light_Driver_765.hPin_L, cable_light_765.pin_p);
  connect(Light_765.p, Light_Driver_765.pin_p);
  connect(Light_765.n, GndDC.p);
  connect(Light_Driver_765.hPin_N, GndAC.pin);
  connect(Light_Driver_765.pin_n, GndDC.p);
  connect(cable_light_765.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_765.y, Light_765.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_765.u);
/* Light Connections 764 */
  connect(Light_Driver_764.hPin_L, cable_light_764.pin_p);
  connect(Light_764.p, Light_Driver_764.pin_p);
  connect(Light_764.n, GndDC.p);
  connect(Light_Driver_764.hPin_N, GndAC.pin);
  connect(Light_Driver_764.pin_n, GndDC.p);
  connect(cable_light_764.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_764.y, Light_764.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_764.u);
/* Light Connections 763 */
  connect(Light_Driver_763.hPin_L, cable_light_763.pin_p);
  connect(Light_763.p, Light_Driver_763.pin_p);
  connect(Light_763.n, GndDC.p);
  connect(Light_Driver_763.hPin_N, GndAC.pin);
  connect(Light_Driver_763.pin_n, GndDC.p);
  connect(cable_light_763.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_763.y, Light_763.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_763.u);
/* Light Connections 762 */
  connect(Light_Driver_762.hPin_L, cable_light_762.pin_p);
  connect(Light_762.p, Light_Driver_762.pin_p);
  connect(Light_762.n, GndDC.p);
  connect(Light_Driver_762.hPin_N, GndAC.pin);
  connect(Light_Driver_762.pin_n, GndDC.p);
  connect(cable_light_762.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_762.y, Light_762.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_762.u);
/* Light Connections 761 */
  connect(Light_Driver_761.hPin_L, cable_light_761.pin_p);
  connect(Light_761.p, Light_Driver_761.pin_p);
  connect(Light_761.n, GndDC.p);
  connect(Light_Driver_761.hPin_N, GndAC.pin);
  connect(Light_Driver_761.pin_n, GndDC.p);
  connect(cable_light_761.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_761.y, Light_761.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_761.u);
/* Light Connections 760 */
  connect(Light_Driver_760.hPin_L, cable_light_760.pin_p);
  connect(Light_760.p, Light_Driver_760.pin_p);
  connect(Light_760.n, GndDC.p);
  connect(Light_Driver_760.hPin_N, GndAC.pin);
  connect(Light_Driver_760.pin_n, GndDC.p);
  connect(cable_light_760.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_760.y, Light_760.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_760.u);
/* Light Connections 759 */
  connect(Light_Driver_759.hPin_L, cable_light_759.pin_p);
  connect(Light_759.p, Light_Driver_759.pin_p);
  connect(Light_759.n, GndDC.p);
  connect(Light_Driver_759.hPin_N, GndAC.pin);
  connect(Light_Driver_759.pin_n, GndDC.p);
  connect(cable_light_759.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_759.y, Light_759.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_759.u);
/* Light Connections 758 */
  connect(Light_Driver_758.hPin_L, cable_light_758.pin_p);
  connect(Light_758.p, Light_Driver_758.pin_p);
  connect(Light_758.n, GndDC.p);
  connect(Light_Driver_758.hPin_N, GndAC.pin);
  connect(Light_Driver_758.pin_n, GndDC.p);
  connect(cable_light_758.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_758.y, Light_758.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_758.u);
/* Light Connections 757 */
  connect(Light_Driver_757.hPin_L, cable_light_757.pin_p);
  connect(Light_757.p, Light_Driver_757.pin_p);
  connect(Light_757.n, GndDC.p);
  connect(Light_Driver_757.hPin_N, GndAC.pin);
  connect(Light_Driver_757.pin_n, GndDC.p);
  connect(cable_light_757.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_757.y, Light_757.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_757.u);
/* Light Connections 756 */
  connect(Light_Driver_756.hPin_L, cable_light_756.pin_p);
  connect(Light_756.p, Light_Driver_756.pin_p);
  connect(Light_756.n, GndDC.p);
  connect(Light_Driver_756.hPin_N, GndAC.pin);
  connect(Light_Driver_756.pin_n, GndDC.p);
  connect(cable_light_756.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_756.y, Light_756.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_756.u);
/* Light Connections 755 */
  connect(Light_Driver_755.hPin_L, cable_light_755.pin_p);
  connect(Light_755.p, Light_Driver_755.pin_p);
  connect(Light_755.n, GndDC.p);
  connect(Light_Driver_755.hPin_N, GndAC.pin);
  connect(Light_Driver_755.pin_n, GndDC.p);
  connect(cable_light_755.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_755.y, Light_755.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_755.u);
/* Light Connections 754 */
  connect(Light_Driver_754.hPin_L, cable_light_754.pin_p);
  connect(Light_754.p, Light_Driver_754.pin_p);
  connect(Light_754.n, GndDC.p);
  connect(Light_Driver_754.hPin_N, GndAC.pin);
  connect(Light_Driver_754.pin_n, GndDC.p);
  connect(cable_light_754.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_754.y, Light_754.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_754.u);
/* Light Connections 753 */
  connect(Light_Driver_753.hPin_L, cable_light_753.pin_p);
  connect(Light_753.p, Light_Driver_753.pin_p);
  connect(Light_753.n, GndDC.p);
  connect(Light_Driver_753.hPin_N, GndAC.pin);
  connect(Light_Driver_753.pin_n, GndDC.p);
  connect(cable_light_753.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_753.y, Light_753.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_753.u);
/* Light Connections 752 */
  connect(Light_Driver_752.hPin_L, cable_light_752.pin_p);
  connect(Light_752.p, Light_Driver_752.pin_p);
  connect(Light_752.n, GndDC.p);
  connect(Light_Driver_752.hPin_N, GndAC.pin);
  connect(Light_Driver_752.pin_n, GndDC.p);
  connect(cable_light_752.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_752.y, Light_752.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_752.u);
/* Light Connections 749 */
  connect(Light_Driver_749.hPin_L, cable_light_749.pin_p);
  connect(Light_749.p, Light_Driver_749.pin_p);
  connect(Light_749.n, GndDC.p);
  connect(Light_Driver_749.hPin_N, GndAC.pin);
  connect(Light_Driver_749.pin_n, GndDC.p);
  connect(cable_light_749.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_749.y, Light_749.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_749.u);
/* Light Connections 748 */
  connect(Light_Driver_748.hPin_L, cable_light_748.pin_p);
  connect(Light_748.p, Light_Driver_748.pin_p);
  connect(Light_748.n, GndDC.p);
  connect(Light_Driver_748.hPin_N, GndAC.pin);
  connect(Light_Driver_748.pin_n, GndDC.p);
  connect(cable_light_748.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_748.y, Light_748.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_748.u);
/* Light Connections 733 */
  connect(Light_Driver_733.hPin_L, cable_light_733.pin_p);
  connect(Light_733.p, Light_Driver_733.pin_p);
  connect(Light_733.n, GndDC.p);
  connect(Light_Driver_733.hPin_N, GndAC.pin);
  connect(Light_Driver_733.pin_n, GndDC.p);
  connect(cable_light_733.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_733.y, Light_733.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_733.u);
/* Light Connections 732 */
  connect(Light_Driver_732.hPin_L, cable_light_732.pin_p);
  connect(Light_732.p, Light_Driver_732.pin_p);
  connect(Light_732.n, GndDC.p);
  connect(Light_Driver_732.hPin_N, GndAC.pin);
  connect(Light_Driver_732.pin_n, GndDC.p);
  connect(cable_light_732.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_732.y, Light_732.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_732.u);
/* Light Connections 731 */
  connect(Light_Driver_731.hPin_L, cable_light_731.pin_p);
  connect(Light_731.p, Light_Driver_731.pin_p);
  connect(Light_731.n, GndDC.p);
  connect(Light_Driver_731.hPin_N, GndAC.pin);
  connect(Light_Driver_731.pin_n, GndDC.p);
  connect(cable_light_731.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_731.y, Light_731.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_731.u);
/* Light Connections 730 */
  connect(Light_Driver_730.hPin_L, cable_light_730.pin_p);
  connect(Light_730.p, Light_Driver_730.pin_p);
  connect(Light_730.n, GndDC.p);
  connect(Light_Driver_730.hPin_N, GndAC.pin);
  connect(Light_Driver_730.pin_n, GndDC.p);
  connect(cable_light_730.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_730.y, Light_730.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_730.u);
/* Light Connections 727 */
  connect(Light_Driver_727.hPin_L, cable_light_727.pin_p);
  connect(Light_727.p, Light_Driver_727.pin_p);
  connect(Light_727.n, GndDC.p);
  connect(Light_Driver_727.hPin_N, GndAC.pin);
  connect(Light_Driver_727.pin_n, GndDC.p);
  connect(cable_light_727.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_727.y, Light_727.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_727.u);
/* Light Connections 726 */
  connect(Light_Driver_726.hPin_L, cable_light_726.pin_p);
  connect(Light_726.p, Light_Driver_726.pin_p);
  connect(Light_726.n, GndDC.p);
  connect(Light_Driver_726.hPin_N, GndAC.pin);
  connect(Light_Driver_726.pin_n, GndDC.p);
  connect(cable_light_726.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_726.y, Light_726.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_726.u);
/* Light Connections 725 */
  connect(Light_Driver_725.hPin_L, cable_light_725.pin_p);
  connect(Light_725.p, Light_Driver_725.pin_p);
  connect(Light_725.n, GndDC.p);
  connect(Light_Driver_725.hPin_N, GndAC.pin);
  connect(Light_Driver_725.pin_n, GndDC.p);
  connect(cable_light_725.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_725.y, Light_725.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_725.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_2C;
