within ;
model Light_Panel_L3_2B
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

  
/* Light Model 792 */
  HPF.DC.Variable_DC_Load Light_792;
  HPF.Cables.NEC_CableModel cable_light_792(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.76);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_792(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_792(k=35);
  
/* Light Model 791 */
  HPF.DC.Variable_DC_Load Light_791;
  HPF.Cables.NEC_CableModel cable_light_791(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_791(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_791(k=35);
  
/* Light Model 790 */
  HPF.DC.Variable_DC_Load Light_790;
  HPF.Cables.NEC_CableModel cable_light_790(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_790(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_790(k=35);
  
/* Light Model 789 */
  HPF.DC.Variable_DC_Load Light_789;
  HPF.Cables.NEC_CableModel cable_light_789(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_789(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_789(k=35);
  
/* Light Model 747 */
  HPF.DC.Variable_DC_Load Light_747;
  HPF.Cables.NEC_CableModel cable_light_747(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_747(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_747(k=21);
  
/* Light Model 746 */
  HPF.DC.Variable_DC_Load Light_746;
  HPF.Cables.NEC_CableModel cable_light_746(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_746(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_746(k=21);
  
/* Light Model 745 */
  HPF.DC.Variable_DC_Load Light_745;
  HPF.Cables.NEC_CableModel cable_light_745(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_745(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_745(k=21);
  
/* Light Model 744 */
  HPF.DC.Variable_DC_Load Light_744;
  HPF.Cables.NEC_CableModel cable_light_744(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_744(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_744(k=21);
  
/* Light Model 743 */
  HPF.DC.Variable_DC_Load Light_743;
  HPF.Cables.NEC_CableModel cable_light_743(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_743(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_743(k=21);
  
/* Light Model 724 */
  HPF.DC.Variable_DC_Load Light_724;
  HPF.Cables.NEC_CableModel cable_light_724(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_724(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_724(k=28);
  
/* Light Model 723 */
  HPF.DC.Variable_DC_Load Light_723;
  HPF.Cables.NEC_CableModel cable_light_723(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_723(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_723(k=28);
  
/* Light Model 722 */
  HPF.DC.Variable_DC_Load Light_722;
  HPF.Cables.NEC_CableModel cable_light_722(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_722(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_722(k=40);
  
/* Light Model 721 */
  HPF.DC.Variable_DC_Load Light_721;
  HPF.Cables.NEC_CableModel cable_light_721(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.03);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_721(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_721(k=40);
  
/* Light Model 720 */
  HPF.DC.Variable_DC_Load Light_720;
  HPF.Cables.NEC_CableModel cable_light_720(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.87);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_720(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_720(k=25);
  
/* Light Model 719 */
  HPF.DC.Variable_DC_Load Light_719;
  HPF.Cables.NEC_CableModel cable_light_719(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_719(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_719(k=25);
  
/* Light Model 718 */
  HPF.DC.Variable_DC_Load Light_718;
  HPF.Cables.NEC_CableModel cable_light_718(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_718(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_718(k=25);
  
/* Light Model 717 */
  HPF.DC.Variable_DC_Load Light_717;
  HPF.Cables.NEC_CableModel cable_light_717(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.46);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_717(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_717(k=42);
  
/* Light Model 716 */
  HPF.DC.Variable_DC_Load Light_716;
  HPF.Cables.NEC_CableModel cable_light_716(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_716(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_716(k=28);
  
/* Light Model 715 */
  HPF.DC.Variable_DC_Load Light_715;
  HPF.Cables.NEC_CableModel cable_light_715(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_715(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_715(k=28);
  
/* Light Model 714 */
  HPF.DC.Variable_DC_Load Light_714;
  HPF.Cables.NEC_CableModel cable_light_714(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_714(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_714(k=40);
  
/* Light Model 713 */
  HPF.DC.Variable_DC_Load Light_713;
  HPF.Cables.NEC_CableModel cable_light_713(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_713(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_713(k=40);
  
/* Light Model 712 */
  HPF.DC.Variable_DC_Load Light_712;
  HPF.Cables.NEC_CableModel cable_light_712(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_712(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_712(k=22);
  
/* Light Model 711 */
  HPF.DC.Variable_DC_Load Light_711;
  HPF.Cables.NEC_CableModel cable_light_711(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_711(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_711(k=22);
  
/* Light Model 710 */
  HPF.DC.Variable_DC_Load Light_710;
  HPF.Cables.NEC_CableModel cable_light_710(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_710(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_710(k=28);
  
/* Light Model 709 */
  HPF.DC.Variable_DC_Load Light_709;
  HPF.Cables.NEC_CableModel cable_light_709(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.04);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_709(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_709(k=28);
  
/* Light Model 708 */
  HPF.DC.Variable_DC_Load Light_708;
  HPF.Cables.NEC_CableModel cable_light_708(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.49);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_708(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_708(k=40);
  
/* Light Model 707 */
  HPF.DC.Variable_DC_Load Light_707;
  HPF.Cables.NEC_CableModel cable_light_707(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_707(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_707(k=40);
  
/* Light Model 706 */
  HPF.DC.Variable_DC_Load Light_706;
  HPF.Cables.NEC_CableModel cable_light_706(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_706(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_706(k=34);
  
/* Light Model 705 */
  HPF.DC.Variable_DC_Load Light_705;
  HPF.Cables.NEC_CableModel cable_light_705(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_705(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_705(k=28);
  
/* Light Model 704 */
  HPF.DC.Variable_DC_Load Light_704;
  HPF.Cables.NEC_CableModel cable_light_704(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_704(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_704(k=28);
  
/* Light Model 703 */
  HPF.DC.Variable_DC_Load Light_703;
  HPF.Cables.NEC_CableModel cable_light_703(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_703(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_703(k=40);
  
/* Light Model 702 */
  HPF.DC.Variable_DC_Load Light_702;
  HPF.Cables.NEC_CableModel cable_light_702(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_702(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_702(k=40);
  
/* Light Model 701 */
  HPF.DC.Variable_DC_Load Light_701;
  HPF.Cables.NEC_CableModel cable_light_701(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_701(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_701(k=40);
  
/* Light Model 700 */
  HPF.DC.Variable_DC_Load Light_700;
  HPF.Cables.NEC_CableModel cable_light_700(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_700(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_700(k=40);
  
/* Light Model 699 */
  HPF.DC.Variable_DC_Load Light_699;
  HPF.Cables.NEC_CableModel cable_light_699(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_699(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_699(k=40);
  
/* Light Model 696 */
  HPF.DC.Variable_DC_Load Light_696;
  HPF.Cables.NEC_CableModel cable_light_696(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_696(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_696(k=40);
  
/* Light Model 695 */
  HPF.DC.Variable_DC_Load Light_695;
  HPF.Cables.NEC_CableModel cable_light_695(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_695(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_695(k=40);
  
/* Light Model 644 */
  HPF.DC.Variable_DC_Load Light_644;
  HPF.Cables.NEC_CableModel cable_light_644(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=1.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_644(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_644(k=35);
  
/* Light Model 643 */
  HPF.DC.Variable_DC_Load Light_643;
  HPF.Cables.NEC_CableModel cable_light_643(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=2.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_643(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_643(k=35);
  
/* Light Model 568 */
  HPF.DC.Variable_DC_Load Light_568;
  HPF.Cables.NEC_CableModel cable_light_568(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_568(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_568(k=35);
  
/* Light Model 567 */
  HPF.DC.Variable_DC_Load Light_567;
  HPF.Cables.NEC_CableModel cable_light_567(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.51);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_567(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_567(k=42);
  
/* Light Model 566 */
  HPF.DC.Variable_DC_Load Light_566;
  HPF.Cables.NEC_CableModel cable_light_566(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_566(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_566(k=42);
  
/* Light Model 565 */
  HPF.DC.Variable_DC_Load Light_565;
  HPF.Cables.NEC_CableModel cable_light_565(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_565(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_565(k=21);
  
/* Light Model 564 */
  HPF.DC.Variable_DC_Load Light_564;
  HPF.Cables.NEC_CableModel cable_light_564(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_564(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_564(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 792 */
  connect(Light_Driver_792.hPin_L, cable_light_792.pin_p);
  connect(Light_792.p, Light_Driver_792.pin_p);
  connect(Light_792.n, GndDC.p);
  connect(Light_Driver_792.hPin_N, GndAC.pin);
  connect(Light_Driver_792.pin_n, GndDC.p);
  connect(cable_light_792.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_792.y, Light_792.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_792.u);
/* Light Connections 791 */
  connect(Light_Driver_791.hPin_L, cable_light_791.pin_p);
  connect(Light_791.p, Light_Driver_791.pin_p);
  connect(Light_791.n, GndDC.p);
  connect(Light_Driver_791.hPin_N, GndAC.pin);
  connect(Light_Driver_791.pin_n, GndDC.p);
  connect(cable_light_791.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_791.y, Light_791.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_791.u);
/* Light Connections 790 */
  connect(Light_Driver_790.hPin_L, cable_light_790.pin_p);
  connect(Light_790.p, Light_Driver_790.pin_p);
  connect(Light_790.n, GndDC.p);
  connect(Light_Driver_790.hPin_N, GndAC.pin);
  connect(Light_Driver_790.pin_n, GndDC.p);
  connect(cable_light_790.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_790.y, Light_790.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_790.u);
/* Light Connections 789 */
  connect(Light_Driver_789.hPin_L, cable_light_789.pin_p);
  connect(Light_789.p, Light_Driver_789.pin_p);
  connect(Light_789.n, GndDC.p);
  connect(Light_Driver_789.hPin_N, GndAC.pin);
  connect(Light_Driver_789.pin_n, GndDC.p);
  connect(cable_light_789.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_789.y, Light_789.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_789.u);
/* Light Connections 747 */
  connect(Light_Driver_747.hPin_L, cable_light_747.pin_p);
  connect(Light_747.p, Light_Driver_747.pin_p);
  connect(Light_747.n, GndDC.p);
  connect(Light_Driver_747.hPin_N, GndAC.pin);
  connect(Light_Driver_747.pin_n, GndDC.p);
  connect(cable_light_747.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_747.y, Light_747.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_747.u);
/* Light Connections 746 */
  connect(Light_Driver_746.hPin_L, cable_light_746.pin_p);
  connect(Light_746.p, Light_Driver_746.pin_p);
  connect(Light_746.n, GndDC.p);
  connect(Light_Driver_746.hPin_N, GndAC.pin);
  connect(Light_Driver_746.pin_n, GndDC.p);
  connect(cable_light_746.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_746.y, Light_746.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_746.u);
/* Light Connections 745 */
  connect(Light_Driver_745.hPin_L, cable_light_745.pin_p);
  connect(Light_745.p, Light_Driver_745.pin_p);
  connect(Light_745.n, GndDC.p);
  connect(Light_Driver_745.hPin_N, GndAC.pin);
  connect(Light_Driver_745.pin_n, GndDC.p);
  connect(cable_light_745.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_745.y, Light_745.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_745.u);
/* Light Connections 744 */
  connect(Light_Driver_744.hPin_L, cable_light_744.pin_p);
  connect(Light_744.p, Light_Driver_744.pin_p);
  connect(Light_744.n, GndDC.p);
  connect(Light_Driver_744.hPin_N, GndAC.pin);
  connect(Light_Driver_744.pin_n, GndDC.p);
  connect(cable_light_744.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_744.y, Light_744.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_744.u);
/* Light Connections 743 */
  connect(Light_Driver_743.hPin_L, cable_light_743.pin_p);
  connect(Light_743.p, Light_Driver_743.pin_p);
  connect(Light_743.n, GndDC.p);
  connect(Light_Driver_743.hPin_N, GndAC.pin);
  connect(Light_Driver_743.pin_n, GndDC.p);
  connect(cable_light_743.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_743.y, Light_743.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_743.u);
/* Light Connections 724 */
  connect(Light_Driver_724.hPin_L, cable_light_724.pin_p);
  connect(Light_724.p, Light_Driver_724.pin_p);
  connect(Light_724.n, GndDC.p);
  connect(Light_Driver_724.hPin_N, GndAC.pin);
  connect(Light_Driver_724.pin_n, GndDC.p);
  connect(cable_light_724.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_724.y, Light_724.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_724.u);
/* Light Connections 723 */
  connect(Light_Driver_723.hPin_L, cable_light_723.pin_p);
  connect(Light_723.p, Light_Driver_723.pin_p);
  connect(Light_723.n, GndDC.p);
  connect(Light_Driver_723.hPin_N, GndAC.pin);
  connect(Light_Driver_723.pin_n, GndDC.p);
  connect(cable_light_723.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_723.y, Light_723.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_723.u);
/* Light Connections 722 */
  connect(Light_Driver_722.hPin_L, cable_light_722.pin_p);
  connect(Light_722.p, Light_Driver_722.pin_p);
  connect(Light_722.n, GndDC.p);
  connect(Light_Driver_722.hPin_N, GndAC.pin);
  connect(Light_Driver_722.pin_n, GndDC.p);
  connect(cable_light_722.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_722.y, Light_722.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_722.u);
/* Light Connections 721 */
  connect(Light_Driver_721.hPin_L, cable_light_721.pin_p);
  connect(Light_721.p, Light_Driver_721.pin_p);
  connect(Light_721.n, GndDC.p);
  connect(Light_Driver_721.hPin_N, GndAC.pin);
  connect(Light_Driver_721.pin_n, GndDC.p);
  connect(cable_light_721.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_721.y, Light_721.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_721.u);
/* Light Connections 720 */
  connect(Light_Driver_720.hPin_L, cable_light_720.pin_p);
  connect(Light_720.p, Light_Driver_720.pin_p);
  connect(Light_720.n, GndDC.p);
  connect(Light_Driver_720.hPin_N, GndAC.pin);
  connect(Light_Driver_720.pin_n, GndDC.p);
  connect(cable_light_720.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_720.y, Light_720.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_720.u);
/* Light Connections 719 */
  connect(Light_Driver_719.hPin_L, cable_light_719.pin_p);
  connect(Light_719.p, Light_Driver_719.pin_p);
  connect(Light_719.n, GndDC.p);
  connect(Light_Driver_719.hPin_N, GndAC.pin);
  connect(Light_Driver_719.pin_n, GndDC.p);
  connect(cable_light_719.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_719.y, Light_719.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_719.u);
/* Light Connections 718 */
  connect(Light_Driver_718.hPin_L, cable_light_718.pin_p);
  connect(Light_718.p, Light_Driver_718.pin_p);
  connect(Light_718.n, GndDC.p);
  connect(Light_Driver_718.hPin_N, GndAC.pin);
  connect(Light_Driver_718.pin_n, GndDC.p);
  connect(cable_light_718.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_718.y, Light_718.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_718.u);
/* Light Connections 717 */
  connect(Light_Driver_717.hPin_L, cable_light_717.pin_p);
  connect(Light_717.p, Light_Driver_717.pin_p);
  connect(Light_717.n, GndDC.p);
  connect(Light_Driver_717.hPin_N, GndAC.pin);
  connect(Light_Driver_717.pin_n, GndDC.p);
  connect(cable_light_717.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_717.y, Light_717.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_717.u);
/* Light Connections 716 */
  connect(Light_Driver_716.hPin_L, cable_light_716.pin_p);
  connect(Light_716.p, Light_Driver_716.pin_p);
  connect(Light_716.n, GndDC.p);
  connect(Light_Driver_716.hPin_N, GndAC.pin);
  connect(Light_Driver_716.pin_n, GndDC.p);
  connect(cable_light_716.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_716.y, Light_716.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_716.u);
/* Light Connections 715 */
  connect(Light_Driver_715.hPin_L, cable_light_715.pin_p);
  connect(Light_715.p, Light_Driver_715.pin_p);
  connect(Light_715.n, GndDC.p);
  connect(Light_Driver_715.hPin_N, GndAC.pin);
  connect(Light_Driver_715.pin_n, GndDC.p);
  connect(cable_light_715.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_715.y, Light_715.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_715.u);
/* Light Connections 714 */
  connect(Light_Driver_714.hPin_L, cable_light_714.pin_p);
  connect(Light_714.p, Light_Driver_714.pin_p);
  connect(Light_714.n, GndDC.p);
  connect(Light_Driver_714.hPin_N, GndAC.pin);
  connect(Light_Driver_714.pin_n, GndDC.p);
  connect(cable_light_714.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_714.y, Light_714.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_714.u);
/* Light Connections 713 */
  connect(Light_Driver_713.hPin_L, cable_light_713.pin_p);
  connect(Light_713.p, Light_Driver_713.pin_p);
  connect(Light_713.n, GndDC.p);
  connect(Light_Driver_713.hPin_N, GndAC.pin);
  connect(Light_Driver_713.pin_n, GndDC.p);
  connect(cable_light_713.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_713.y, Light_713.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_713.u);
/* Light Connections 712 */
  connect(Light_Driver_712.hPin_L, cable_light_712.pin_p);
  connect(Light_712.p, Light_Driver_712.pin_p);
  connect(Light_712.n, GndDC.p);
  connect(Light_Driver_712.hPin_N, GndAC.pin);
  connect(Light_Driver_712.pin_n, GndDC.p);
  connect(cable_light_712.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_712.y, Light_712.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_712.u);
/* Light Connections 711 */
  connect(Light_Driver_711.hPin_L, cable_light_711.pin_p);
  connect(Light_711.p, Light_Driver_711.pin_p);
  connect(Light_711.n, GndDC.p);
  connect(Light_Driver_711.hPin_N, GndAC.pin);
  connect(Light_Driver_711.pin_n, GndDC.p);
  connect(cable_light_711.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_711.y, Light_711.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_711.u);
/* Light Connections 710 */
  connect(Light_Driver_710.hPin_L, cable_light_710.pin_p);
  connect(Light_710.p, Light_Driver_710.pin_p);
  connect(Light_710.n, GndDC.p);
  connect(Light_Driver_710.hPin_N, GndAC.pin);
  connect(Light_Driver_710.pin_n, GndDC.p);
  connect(cable_light_710.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_710.y, Light_710.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_710.u);
/* Light Connections 709 */
  connect(Light_Driver_709.hPin_L, cable_light_709.pin_p);
  connect(Light_709.p, Light_Driver_709.pin_p);
  connect(Light_709.n, GndDC.p);
  connect(Light_Driver_709.hPin_N, GndAC.pin);
  connect(Light_Driver_709.pin_n, GndDC.p);
  connect(cable_light_709.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_709.y, Light_709.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_709.u);
/* Light Connections 708 */
  connect(Light_Driver_708.hPin_L, cable_light_708.pin_p);
  connect(Light_708.p, Light_Driver_708.pin_p);
  connect(Light_708.n, GndDC.p);
  connect(Light_Driver_708.hPin_N, GndAC.pin);
  connect(Light_Driver_708.pin_n, GndDC.p);
  connect(cable_light_708.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_708.y, Light_708.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_708.u);
/* Light Connections 707 */
  connect(Light_Driver_707.hPin_L, cable_light_707.pin_p);
  connect(Light_707.p, Light_Driver_707.pin_p);
  connect(Light_707.n, GndDC.p);
  connect(Light_Driver_707.hPin_N, GndAC.pin);
  connect(Light_Driver_707.pin_n, GndDC.p);
  connect(cable_light_707.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_707.y, Light_707.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_707.u);
/* Light Connections 706 */
  connect(Light_Driver_706.hPin_L, cable_light_706.pin_p);
  connect(Light_706.p, Light_Driver_706.pin_p);
  connect(Light_706.n, GndDC.p);
  connect(Light_Driver_706.hPin_N, GndAC.pin);
  connect(Light_Driver_706.pin_n, GndDC.p);
  connect(cable_light_706.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_706.y, Light_706.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_706.u);
/* Light Connections 705 */
  connect(Light_Driver_705.hPin_L, cable_light_705.pin_p);
  connect(Light_705.p, Light_Driver_705.pin_p);
  connect(Light_705.n, GndDC.p);
  connect(Light_Driver_705.hPin_N, GndAC.pin);
  connect(Light_Driver_705.pin_n, GndDC.p);
  connect(cable_light_705.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_705.y, Light_705.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_705.u);
/* Light Connections 704 */
  connect(Light_Driver_704.hPin_L, cable_light_704.pin_p);
  connect(Light_704.p, Light_Driver_704.pin_p);
  connect(Light_704.n, GndDC.p);
  connect(Light_Driver_704.hPin_N, GndAC.pin);
  connect(Light_Driver_704.pin_n, GndDC.p);
  connect(cable_light_704.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_704.y, Light_704.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_704.u);
/* Light Connections 703 */
  connect(Light_Driver_703.hPin_L, cable_light_703.pin_p);
  connect(Light_703.p, Light_Driver_703.pin_p);
  connect(Light_703.n, GndDC.p);
  connect(Light_Driver_703.hPin_N, GndAC.pin);
  connect(Light_Driver_703.pin_n, GndDC.p);
  connect(cable_light_703.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_703.y, Light_703.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_703.u);
/* Light Connections 702 */
  connect(Light_Driver_702.hPin_L, cable_light_702.pin_p);
  connect(Light_702.p, Light_Driver_702.pin_p);
  connect(Light_702.n, GndDC.p);
  connect(Light_Driver_702.hPin_N, GndAC.pin);
  connect(Light_Driver_702.pin_n, GndDC.p);
  connect(cable_light_702.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_702.y, Light_702.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_702.u);
/* Light Connections 701 */
  connect(Light_Driver_701.hPin_L, cable_light_701.pin_p);
  connect(Light_701.p, Light_Driver_701.pin_p);
  connect(Light_701.n, GndDC.p);
  connect(Light_Driver_701.hPin_N, GndAC.pin);
  connect(Light_Driver_701.pin_n, GndDC.p);
  connect(cable_light_701.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_701.y, Light_701.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_701.u);
/* Light Connections 700 */
  connect(Light_Driver_700.hPin_L, cable_light_700.pin_p);
  connect(Light_700.p, Light_Driver_700.pin_p);
  connect(Light_700.n, GndDC.p);
  connect(Light_Driver_700.hPin_N, GndAC.pin);
  connect(Light_Driver_700.pin_n, GndDC.p);
  connect(cable_light_700.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_700.y, Light_700.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_700.u);
/* Light Connections 699 */
  connect(Light_Driver_699.hPin_L, cable_light_699.pin_p);
  connect(Light_699.p, Light_Driver_699.pin_p);
  connect(Light_699.n, GndDC.p);
  connect(Light_Driver_699.hPin_N, GndAC.pin);
  connect(Light_Driver_699.pin_n, GndDC.p);
  connect(cable_light_699.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_699.y, Light_699.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_699.u);
/* Light Connections 696 */
  connect(Light_Driver_696.hPin_L, cable_light_696.pin_p);
  connect(Light_696.p, Light_Driver_696.pin_p);
  connect(Light_696.n, GndDC.p);
  connect(Light_Driver_696.hPin_N, GndAC.pin);
  connect(Light_Driver_696.pin_n, GndDC.p);
  connect(cable_light_696.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_696.y, Light_696.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_696.u);
/* Light Connections 695 */
  connect(Light_Driver_695.hPin_L, cable_light_695.pin_p);
  connect(Light_695.p, Light_Driver_695.pin_p);
  connect(Light_695.n, GndDC.p);
  connect(Light_Driver_695.hPin_N, GndAC.pin);
  connect(Light_Driver_695.pin_n, GndDC.p);
  connect(cable_light_695.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_695.y, Light_695.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_695.u);
/* Light Connections 644 */
  connect(Light_Driver_644.hPin_L, cable_light_644.pin_p);
  connect(Light_644.p, Light_Driver_644.pin_p);
  connect(Light_644.n, GndDC.p);
  connect(Light_Driver_644.hPin_N, GndAC.pin);
  connect(Light_Driver_644.pin_n, GndDC.p);
  connect(cable_light_644.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_644.y, Light_644.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_644.u);
/* Light Connections 643 */
  connect(Light_Driver_643.hPin_L, cable_light_643.pin_p);
  connect(Light_643.p, Light_Driver_643.pin_p);
  connect(Light_643.n, GndDC.p);
  connect(Light_Driver_643.hPin_N, GndAC.pin);
  connect(Light_Driver_643.pin_n, GndDC.p);
  connect(cable_light_643.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_643.y, Light_643.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_643.u);
/* Light Connections 568 */
  connect(Light_Driver_568.hPin_L, cable_light_568.pin_p);
  connect(Light_568.p, Light_Driver_568.pin_p);
  connect(Light_568.n, GndDC.p);
  connect(Light_Driver_568.hPin_N, GndAC.pin);
  connect(Light_Driver_568.pin_n, GndDC.p);
  connect(cable_light_568.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_568.y, Light_568.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_568.u);
/* Light Connections 567 */
  connect(Light_Driver_567.hPin_L, cable_light_567.pin_p);
  connect(Light_567.p, Light_Driver_567.pin_p);
  connect(Light_567.n, GndDC.p);
  connect(Light_Driver_567.hPin_N, GndAC.pin);
  connect(Light_Driver_567.pin_n, GndDC.p);
  connect(cable_light_567.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_567.y, Light_567.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_567.u);
/* Light Connections 566 */
  connect(Light_Driver_566.hPin_L, cable_light_566.pin_p);
  connect(Light_566.p, Light_Driver_566.pin_p);
  connect(Light_566.n, GndDC.p);
  connect(Light_Driver_566.hPin_N, GndAC.pin);
  connect(Light_Driver_566.pin_n, GndDC.p);
  connect(cable_light_566.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_566.y, Light_566.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_566.u);
/* Light Connections 565 */
  connect(Light_Driver_565.hPin_L, cable_light_565.pin_p);
  connect(Light_565.p, Light_Driver_565.pin_p);
  connect(Light_565.n, GndDC.p);
  connect(Light_Driver_565.hPin_N, GndAC.pin);
  connect(Light_Driver_565.pin_n, GndDC.p);
  connect(cable_light_565.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_565.y, Light_565.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_565.u);
/* Light Connections 564 */
  connect(Light_Driver_564.hPin_L, cable_light_564.pin_p);
  connect(Light_564.p, Light_Driver_564.pin_p);
  connect(Light_564.n, GndDC.p);
  connect(Light_Driver_564.hPin_N, GndAC.pin);
  connect(Light_Driver_564.pin_n, GndDC.p);
  connect(cable_light_564.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_564.y, Light_564.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_564.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_2B;
