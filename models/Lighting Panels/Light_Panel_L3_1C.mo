within ;
model Light_Panel_L3_1C
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

  
/* Light Model 841 */
  HPF.DC.Variable_DC_Load Light_841;
  HPF.Cables.NEC_CableModel cable_light_841(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_841(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_841(k=31);
  
/* Light Model 840 */
  HPF.DC.Variable_DC_Load Light_840;
  HPF.Cables.NEC_CableModel cable_light_840(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.24);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_840(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_840(k=31);
  
/* Light Model 839 */
  HPF.DC.Variable_DC_Load Light_839;
  HPF.Cables.NEC_CableModel cable_light_839(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=37.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_839(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_839(k=31);
  
/* Light Model 838 */
  HPF.DC.Variable_DC_Load Light_838;
  HPF.Cables.NEC_CableModel cable_light_838(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.67);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_838(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_838(k=31);
  
/* Light Model 837 */
  HPF.DC.Variable_DC_Load Light_837;
  HPF.Cables.NEC_CableModel cable_light_837(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.25);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_837(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_837(k=31);
  
/* Light Model 836 */
  HPF.DC.Variable_DC_Load Light_836;
  HPF.Cables.NEC_CableModel cable_light_836(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_836(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_836(k=31);
  
/* Light Model 835 */
  HPF.DC.Variable_DC_Load Light_835;
  HPF.Cables.NEC_CableModel cable_light_835(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=41.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_835(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_835(k=31);
  
/* Light Model 834 */
  HPF.DC.Variable_DC_Load Light_834;
  HPF.Cables.NEC_CableModel cable_light_834(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=42.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_834(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_834(k=31);
  
/* Light Model 833 */
  HPF.DC.Variable_DC_Load Light_833;
  HPF.Cables.NEC_CableModel cable_light_833(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=42.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_833(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_833(k=31);
  
/* Light Model 832 */
  HPF.DC.Variable_DC_Load Light_832;
  HPF.Cables.NEC_CableModel cable_light_832(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=38.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_832(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_832(k=31);
  
/* Light Model 831 */
  HPF.DC.Variable_DC_Load Light_831;
  HPF.Cables.NEC_CableModel cable_light_831(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=39.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_831(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_831(k=31);
  
/* Light Model 830 */
  HPF.DC.Variable_DC_Load Light_830;
  HPF.Cables.NEC_CableModel cable_light_830(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=40.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_830(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_830(k=31);
  
/* Light Model 829 */
  HPF.DC.Variable_DC_Load Light_829;
  HPF.Cables.NEC_CableModel cable_light_829(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=34.84);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_829(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_829(k=31);
  
/* Light Model 828 */
  HPF.DC.Variable_DC_Load Light_828;
  HPF.Cables.NEC_CableModel cable_light_828(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_828(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_828(k=31);
  
/* Light Model 827 */
  HPF.DC.Variable_DC_Load Light_827;
  HPF.Cables.NEC_CableModel cable_light_827(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_827(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_827(k=31);
  
/* Light Model 826 */
  HPF.DC.Variable_DC_Load Light_826;
  HPF.Cables.NEC_CableModel cable_light_826(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_826(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_826(k=31);
  
/* Light Model 825 */
  HPF.DC.Variable_DC_Load Light_825;
  HPF.Cables.NEC_CableModel cable_light_825(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_825(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_825(k=31);
  
/* Light Model 824 */
  HPF.DC.Variable_DC_Load Light_824;
  HPF.Cables.NEC_CableModel cable_light_824(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_824(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_824(k=31);
  
/* Light Model 823 */
  HPF.DC.Variable_DC_Load Light_823;
  HPF.Cables.NEC_CableModel cable_light_823(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_823(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_823(k=31);
  
/* Light Model 822 */
  HPF.DC.Variable_DC_Load Light_822;
  HPF.Cables.NEC_CableModel cable_light_822(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_822(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_822(k=31);
  
/* Light Model 821 */
  HPF.DC.Variable_DC_Load Light_821;
  HPF.Cables.NEC_CableModel cable_light_821(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_821(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_821(k=31);
  
/* Light Model 820 */
  HPF.DC.Variable_DC_Load Light_820;
  HPF.Cables.NEC_CableModel cable_light_820(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_820(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_820(k=31);
  
/* Light Model 819 */
  HPF.DC.Variable_DC_Load Light_819;
  HPF.Cables.NEC_CableModel cable_light_819(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_819(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_819(k=31);
  
/* Light Model 818 */
  HPF.DC.Variable_DC_Load Light_818;
  HPF.Cables.NEC_CableModel cable_light_818(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_818(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_818(k=31);
  
/* Light Model 780 */
  HPF.DC.Variable_DC_Load Light_780;
  HPF.Cables.NEC_CableModel cable_light_780(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_780(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_780(k=40);
  
/* Light Model 779 */
  HPF.DC.Variable_DC_Load Light_779;
  HPF.Cables.NEC_CableModel cable_light_779(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_779(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_779(k=40);
  
/* Light Model 778 */
  HPF.DC.Variable_DC_Load Light_778;
  HPF.Cables.NEC_CableModel cable_light_778(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_778(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_778(k=34);
  
/* Light Model 777 */
  HPF.DC.Variable_DC_Load Light_777;
  HPF.Cables.NEC_CableModel cable_light_777(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_777(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_777(k=34);
  
/* Light Model 729 */
  HPF.DC.Variable_DC_Load Light_729;
  HPF.Cables.NEC_CableModel cable_light_729(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_729(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_729(k=21);
  
/* Light Model 728 */
  HPF.DC.Variable_DC_Load Light_728;
  HPF.Cables.NEC_CableModel cable_light_728(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_728(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_728(k=21);
  
/* Light Model 636 */
  HPF.DC.Variable_DC_Load Light_636;
  HPF.Cables.NEC_CableModel cable_light_636(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=35.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_636(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_636(k=31);
  
/* Light Model 635 */
  HPF.DC.Variable_DC_Load Light_635;
  HPF.Cables.NEC_CableModel cable_light_635(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.13);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_635(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_635(k=31);
  
/* Light Model 634 */
  HPF.DC.Variable_DC_Load Light_634;
  HPF.Cables.NEC_CableModel cable_light_634(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=36.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_634(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_634(k=31);
  
/* Light Model 633 */
  HPF.DC.Variable_DC_Load Light_633;
  HPF.Cables.NEC_CableModel cable_light_633(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=31.7);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_633(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_633(k=31);
  
/* Light Model 632 */
  HPF.DC.Variable_DC_Load Light_632;
  HPF.Cables.NEC_CableModel cable_light_632(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=32.4);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_632(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_632(k=31);
  
/* Light Model 631 */
  HPF.DC.Variable_DC_Load Light_631;
  HPF.Cables.NEC_CableModel cable_light_631(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=33.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_631(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_631(k=31);
  
/* Light Model 630 */
  HPF.DC.Variable_DC_Load Light_630;
  HPF.Cables.NEC_CableModel cable_light_630(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_630(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_630(k=31);
  
/* Light Model 629 */
  HPF.DC.Variable_DC_Load Light_629;
  HPF.Cables.NEC_CableModel cable_light_629(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.69);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_629(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_629(k=31);
  
/* Light Model 628 */
  HPF.DC.Variable_DC_Load Light_628;
  HPF.Cables.NEC_CableModel cable_light_628(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=29.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_628(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_628(k=31);
  
/* Light Model 627 */
  HPF.DC.Variable_DC_Load Light_627;
  HPF.Cables.NEC_CableModel cable_light_627(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.53);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_627(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_627(k=31);
  
/* Light Model 626 */
  HPF.DC.Variable_DC_Load Light_626;
  HPF.Cables.NEC_CableModel cable_light_626(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.28);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_626(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_626(k=31);
  
/* Light Model 625 */
  HPF.DC.Variable_DC_Load Light_625;
  HPF.Cables.NEC_CableModel cable_light_625(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_625(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_625(k=31);
  
/* Light Model 624 */
  HPF.DC.Variable_DC_Load Light_624;
  HPF.Cables.NEC_CableModel cable_light_624(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.0);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_624(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_624(k=31);
  
/* Light Model 623 */
  HPF.DC.Variable_DC_Load Light_623;
  HPF.Cables.NEC_CableModel cable_light_623(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_623(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_623(k=31);
  
/* Light Model 622 */
  HPF.DC.Variable_DC_Load Light_622;
  HPF.Cables.NEC_CableModel cable_light_622(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_622(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_622(k=31);
  
/* Light Model 621 */
  HPF.DC.Variable_DC_Load Light_621;
  HPF.Cables.NEC_CableModel cable_light_621(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_621(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_621(k=31);
  
/* Light Model 620 */
  HPF.DC.Variable_DC_Load Light_620;
  HPF.Cables.NEC_CableModel cable_light_620(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_620(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_620(k=31);
  
/* Light Model 619 */
  HPF.DC.Variable_DC_Load Light_619;
  HPF.Cables.NEC_CableModel cable_light_619(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_619(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_619(k=31);
  
/* Light Model 618 */
  HPF.DC.Variable_DC_Load Light_618;
  HPF.Cables.NEC_CableModel cable_light_618(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_618(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_618(k=31);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 841 */
  connect(Light_Driver_841.hPin_L, cable_light_841.pin_p);
  connect(Light_841.p, Light_Driver_841.pin_p);
  connect(Light_841.n, GndDC.p);
  connect(Light_Driver_841.hPin_N, GndAC.pin);
  connect(Light_Driver_841.pin_n, GndDC.p);
  connect(cable_light_841.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_841.y, Light_841.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_841.u);
/* Light Connections 840 */
  connect(Light_Driver_840.hPin_L, cable_light_840.pin_p);
  connect(Light_840.p, Light_Driver_840.pin_p);
  connect(Light_840.n, GndDC.p);
  connect(Light_Driver_840.hPin_N, GndAC.pin);
  connect(Light_Driver_840.pin_n, GndDC.p);
  connect(cable_light_840.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_840.y, Light_840.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_840.u);
/* Light Connections 839 */
  connect(Light_Driver_839.hPin_L, cable_light_839.pin_p);
  connect(Light_839.p, Light_Driver_839.pin_p);
  connect(Light_839.n, GndDC.p);
  connect(Light_Driver_839.hPin_N, GndAC.pin);
  connect(Light_Driver_839.pin_n, GndDC.p);
  connect(cable_light_839.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_839.y, Light_839.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_839.u);
/* Light Connections 838 */
  connect(Light_Driver_838.hPin_L, cable_light_838.pin_p);
  connect(Light_838.p, Light_Driver_838.pin_p);
  connect(Light_838.n, GndDC.p);
  connect(Light_Driver_838.hPin_N, GndAC.pin);
  connect(Light_Driver_838.pin_n, GndDC.p);
  connect(cable_light_838.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_838.y, Light_838.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_838.u);
/* Light Connections 837 */
  connect(Light_Driver_837.hPin_L, cable_light_837.pin_p);
  connect(Light_837.p, Light_Driver_837.pin_p);
  connect(Light_837.n, GndDC.p);
  connect(Light_Driver_837.hPin_N, GndAC.pin);
  connect(Light_Driver_837.pin_n, GndDC.p);
  connect(cable_light_837.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_837.y, Light_837.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_837.u);
/* Light Connections 836 */
  connect(Light_Driver_836.hPin_L, cable_light_836.pin_p);
  connect(Light_836.p, Light_Driver_836.pin_p);
  connect(Light_836.n, GndDC.p);
  connect(Light_Driver_836.hPin_N, GndAC.pin);
  connect(Light_Driver_836.pin_n, GndDC.p);
  connect(cable_light_836.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_836.y, Light_836.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_836.u);
/* Light Connections 835 */
  connect(Light_Driver_835.hPin_L, cable_light_835.pin_p);
  connect(Light_835.p, Light_Driver_835.pin_p);
  connect(Light_835.n, GndDC.p);
  connect(Light_Driver_835.hPin_N, GndAC.pin);
  connect(Light_Driver_835.pin_n, GndDC.p);
  connect(cable_light_835.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_835.y, Light_835.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_835.u);
/* Light Connections 834 */
  connect(Light_Driver_834.hPin_L, cable_light_834.pin_p);
  connect(Light_834.p, Light_Driver_834.pin_p);
  connect(Light_834.n, GndDC.p);
  connect(Light_Driver_834.hPin_N, GndAC.pin);
  connect(Light_Driver_834.pin_n, GndDC.p);
  connect(cable_light_834.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_834.y, Light_834.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_834.u);
/* Light Connections 833 */
  connect(Light_Driver_833.hPin_L, cable_light_833.pin_p);
  connect(Light_833.p, Light_Driver_833.pin_p);
  connect(Light_833.n, GndDC.p);
  connect(Light_Driver_833.hPin_N, GndAC.pin);
  connect(Light_Driver_833.pin_n, GndDC.p);
  connect(cable_light_833.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_833.y, Light_833.u);
  connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_833.u);
/* Light Connections 832 */
  connect(Light_Driver_832.hPin_L, cable_light_832.pin_p);
  connect(Light_832.p, Light_Driver_832.pin_p);
  connect(Light_832.n, GndDC.p);
  connect(Light_Driver_832.hPin_N, GndAC.pin);
  connect(Light_Driver_832.pin_n, GndDC.p);
  connect(cable_light_832.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_832.y, Light_832.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_832.u);
/* Light Connections 831 */
  connect(Light_Driver_831.hPin_L, cable_light_831.pin_p);
  connect(Light_831.p, Light_Driver_831.pin_p);
  connect(Light_831.n, GndDC.p);
  connect(Light_Driver_831.hPin_N, GndAC.pin);
  connect(Light_Driver_831.pin_n, GndDC.p);
  connect(cable_light_831.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_831.y, Light_831.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_831.u);
/* Light Connections 830 */
  connect(Light_Driver_830.hPin_L, cable_light_830.pin_p);
  connect(Light_830.p, Light_Driver_830.pin_p);
  connect(Light_830.n, GndDC.p);
  connect(Light_Driver_830.hPin_N, GndAC.pin);
  connect(Light_Driver_830.pin_n, GndDC.p);
  connect(cable_light_830.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_830.y, Light_830.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_830.u);
/* Light Connections 829 */
  connect(Light_Driver_829.hPin_L, cable_light_829.pin_p);
  connect(Light_829.p, Light_Driver_829.pin_p);
  connect(Light_829.n, GndDC.p);
  connect(Light_Driver_829.hPin_N, GndAC.pin);
  connect(Light_Driver_829.pin_n, GndDC.p);
  connect(cable_light_829.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_829.y, Light_829.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_829.u);
/* Light Connections 828 */
  connect(Light_Driver_828.hPin_L, cable_light_828.pin_p);
  connect(Light_828.p, Light_Driver_828.pin_p);
  connect(Light_828.n, GndDC.p);
  connect(Light_Driver_828.hPin_N, GndAC.pin);
  connect(Light_Driver_828.pin_n, GndDC.p);
  connect(cable_light_828.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_828.y, Light_828.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_828.u);
/* Light Connections 827 */
  connect(Light_Driver_827.hPin_L, cable_light_827.pin_p);
  connect(Light_827.p, Light_Driver_827.pin_p);
  connect(Light_827.n, GndDC.p);
  connect(Light_Driver_827.hPin_N, GndAC.pin);
  connect(Light_Driver_827.pin_n, GndDC.p);
  connect(cable_light_827.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_827.y, Light_827.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_827.u);
/* Light Connections 826 */
  connect(Light_Driver_826.hPin_L, cable_light_826.pin_p);
  connect(Light_826.p, Light_Driver_826.pin_p);
  connect(Light_826.n, GndDC.p);
  connect(Light_Driver_826.hPin_N, GndAC.pin);
  connect(Light_Driver_826.pin_n, GndDC.p);
  connect(cable_light_826.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_826.y, Light_826.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_826.u);
/* Light Connections 825 */
  connect(Light_Driver_825.hPin_L, cable_light_825.pin_p);
  connect(Light_825.p, Light_Driver_825.pin_p);
  connect(Light_825.n, GndDC.p);
  connect(Light_Driver_825.hPin_N, GndAC.pin);
  connect(Light_Driver_825.pin_n, GndDC.p);
  connect(cable_light_825.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_825.y, Light_825.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_825.u);
/* Light Connections 824 */
  connect(Light_Driver_824.hPin_L, cable_light_824.pin_p);
  connect(Light_824.p, Light_Driver_824.pin_p);
  connect(Light_824.n, GndDC.p);
  connect(Light_Driver_824.hPin_N, GndAC.pin);
  connect(Light_Driver_824.pin_n, GndDC.p);
  connect(cable_light_824.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_824.y, Light_824.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_824.u);
/* Light Connections 823 */
  connect(Light_Driver_823.hPin_L, cable_light_823.pin_p);
  connect(Light_823.p, Light_Driver_823.pin_p);
  connect(Light_823.n, GndDC.p);
  connect(Light_Driver_823.hPin_N, GndAC.pin);
  connect(Light_Driver_823.pin_n, GndDC.p);
  connect(cable_light_823.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_823.y, Light_823.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_823.u);
/* Light Connections 822 */
  connect(Light_Driver_822.hPin_L, cable_light_822.pin_p);
  connect(Light_822.p, Light_Driver_822.pin_p);
  connect(Light_822.n, GndDC.p);
  connect(Light_Driver_822.hPin_N, GndAC.pin);
  connect(Light_Driver_822.pin_n, GndDC.p);
  connect(cable_light_822.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_822.y, Light_822.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_822.u);
/* Light Connections 821 */
  connect(Light_Driver_821.hPin_L, cable_light_821.pin_p);
  connect(Light_821.p, Light_Driver_821.pin_p);
  connect(Light_821.n, GndDC.p);
  connect(Light_Driver_821.hPin_N, GndAC.pin);
  connect(Light_Driver_821.pin_n, GndDC.p);
  connect(cable_light_821.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_821.y, Light_821.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_821.u);
/* Light Connections 820 */
  connect(Light_Driver_820.hPin_L, cable_light_820.pin_p);
  connect(Light_820.p, Light_Driver_820.pin_p);
  connect(Light_820.n, GndDC.p);
  connect(Light_Driver_820.hPin_N, GndAC.pin);
  connect(Light_Driver_820.pin_n, GndDC.p);
  connect(cable_light_820.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_820.y, Light_820.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_820.u);
/* Light Connections 819 */
  connect(Light_Driver_819.hPin_L, cable_light_819.pin_p);
  connect(Light_819.p, Light_Driver_819.pin_p);
  connect(Light_819.n, GndDC.p);
  connect(Light_Driver_819.hPin_N, GndAC.pin);
  connect(Light_Driver_819.pin_n, GndDC.p);
  connect(cable_light_819.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_819.y, Light_819.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_819.u);
/* Light Connections 818 */
  connect(Light_Driver_818.hPin_L, cable_light_818.pin_p);
  connect(Light_818.p, Light_Driver_818.pin_p);
  connect(Light_818.n, GndDC.p);
  connect(Light_Driver_818.hPin_N, GndAC.pin);
  connect(Light_Driver_818.pin_n, GndDC.p);
  connect(cable_light_818.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_818.y, Light_818.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_818.u);
/* Light Connections 780 */
  connect(Light_Driver_780.hPin_L, cable_light_780.pin_p);
  connect(Light_780.p, Light_Driver_780.pin_p);
  connect(Light_780.n, GndDC.p);
  connect(Light_Driver_780.hPin_N, GndAC.pin);
  connect(Light_Driver_780.pin_n, GndDC.p);
  connect(cable_light_780.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_780.y, Light_780.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_780.u);
/* Light Connections 779 */
  connect(Light_Driver_779.hPin_L, cable_light_779.pin_p);
  connect(Light_779.p, Light_Driver_779.pin_p);
  connect(Light_779.n, GndDC.p);
  connect(Light_Driver_779.hPin_N, GndAC.pin);
  connect(Light_Driver_779.pin_n, GndDC.p);
  connect(cable_light_779.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_779.y, Light_779.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_779.u);
/* Light Connections 778 */
  connect(Light_Driver_778.hPin_L, cable_light_778.pin_p);
  connect(Light_778.p, Light_Driver_778.pin_p);
  connect(Light_778.n, GndDC.p);
  connect(Light_Driver_778.hPin_N, GndAC.pin);
  connect(Light_Driver_778.pin_n, GndDC.p);
  connect(cable_light_778.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_778.y, Light_778.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_778.u);
/* Light Connections 777 */
  connect(Light_Driver_777.hPin_L, cable_light_777.pin_p);
  connect(Light_777.p, Light_Driver_777.pin_p);
  connect(Light_777.n, GndDC.p);
  connect(Light_Driver_777.hPin_N, GndAC.pin);
  connect(Light_Driver_777.pin_n, GndDC.p);
  connect(cable_light_777.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_777.y, Light_777.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_777.u);
/* Light Connections 729 */
  connect(Light_Driver_729.hPin_L, cable_light_729.pin_p);
  connect(Light_729.p, Light_Driver_729.pin_p);
  connect(Light_729.n, GndDC.p);
  connect(Light_Driver_729.hPin_N, GndAC.pin);
  connect(Light_Driver_729.pin_n, GndDC.p);
  connect(cable_light_729.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_729.y, Light_729.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_729.u);
/* Light Connections 728 */
  connect(Light_Driver_728.hPin_L, cable_light_728.pin_p);
  connect(Light_728.p, Light_Driver_728.pin_p);
  connect(Light_728.n, GndDC.p);
  connect(Light_Driver_728.hPin_N, GndAC.pin);
  connect(Light_Driver_728.pin_n, GndDC.p);
  connect(cable_light_728.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_728.y, Light_728.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_728.u);
/* Light Connections 636 */
  connect(Light_Driver_636.hPin_L, cable_light_636.pin_p);
  connect(Light_636.p, Light_Driver_636.pin_p);
  connect(Light_636.n, GndDC.p);
  connect(Light_Driver_636.hPin_N, GndAC.pin);
  connect(Light_Driver_636.pin_n, GndDC.p);
  connect(cable_light_636.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_636.y, Light_636.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_636.u);
/* Light Connections 635 */
  connect(Light_Driver_635.hPin_L, cable_light_635.pin_p);
  connect(Light_635.p, Light_Driver_635.pin_p);
  connect(Light_635.n, GndDC.p);
  connect(Light_Driver_635.hPin_N, GndAC.pin);
  connect(Light_Driver_635.pin_n, GndDC.p);
  connect(cable_light_635.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_635.y, Light_635.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_635.u);
/* Light Connections 634 */
  connect(Light_Driver_634.hPin_L, cable_light_634.pin_p);
  connect(Light_634.p, Light_Driver_634.pin_p);
  connect(Light_634.n, GndDC.p);
  connect(Light_Driver_634.hPin_N, GndAC.pin);
  connect(Light_Driver_634.pin_n, GndDC.p);
  connect(cable_light_634.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_634.y, Light_634.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_634.u);
/* Light Connections 633 */
  connect(Light_Driver_633.hPin_L, cable_light_633.pin_p);
  connect(Light_633.p, Light_Driver_633.pin_p);
  connect(Light_633.n, GndDC.p);
  connect(Light_Driver_633.hPin_N, GndAC.pin);
  connect(Light_Driver_633.pin_n, GndDC.p);
  connect(cable_light_633.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_633.y, Light_633.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_633.u);
/* Light Connections 632 */
  connect(Light_Driver_632.hPin_L, cable_light_632.pin_p);
  connect(Light_632.p, Light_Driver_632.pin_p);
  connect(Light_632.n, GndDC.p);
  connect(Light_Driver_632.hPin_N, GndAC.pin);
  connect(Light_Driver_632.pin_n, GndDC.p);
  connect(cable_light_632.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_632.y, Light_632.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_632.u);
/* Light Connections 631 */
  connect(Light_Driver_631.hPin_L, cable_light_631.pin_p);
  connect(Light_631.p, Light_Driver_631.pin_p);
  connect(Light_631.n, GndDC.p);
  connect(Light_Driver_631.hPin_N, GndAC.pin);
  connect(Light_Driver_631.pin_n, GndDC.p);
  connect(cable_light_631.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_631.y, Light_631.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_631.u);
/* Light Connections 630 */
  connect(Light_Driver_630.hPin_L, cable_light_630.pin_p);
  connect(Light_630.p, Light_Driver_630.pin_p);
  connect(Light_630.n, GndDC.p);
  connect(Light_Driver_630.hPin_N, GndAC.pin);
  connect(Light_Driver_630.pin_n, GndDC.p);
  connect(cable_light_630.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_630.y, Light_630.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_630.u);
/* Light Connections 629 */
  connect(Light_Driver_629.hPin_L, cable_light_629.pin_p);
  connect(Light_629.p, Light_Driver_629.pin_p);
  connect(Light_629.n, GndDC.p);
  connect(Light_Driver_629.hPin_N, GndAC.pin);
  connect(Light_Driver_629.pin_n, GndDC.p);
  connect(cable_light_629.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_629.y, Light_629.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_629.u);
/* Light Connections 628 */
  connect(Light_Driver_628.hPin_L, cable_light_628.pin_p);
  connect(Light_628.p, Light_Driver_628.pin_p);
  connect(Light_628.n, GndDC.p);
  connect(Light_Driver_628.hPin_N, GndAC.pin);
  connect(Light_Driver_628.pin_n, GndDC.p);
  connect(cable_light_628.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_628.y, Light_628.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_628.u);
/* Light Connections 627 */
  connect(Light_Driver_627.hPin_L, cable_light_627.pin_p);
  connect(Light_627.p, Light_Driver_627.pin_p);
  connect(Light_627.n, GndDC.p);
  connect(Light_Driver_627.hPin_N, GndAC.pin);
  connect(Light_Driver_627.pin_n, GndDC.p);
  connect(cable_light_627.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_627.y, Light_627.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_627.u);
/* Light Connections 626 */
  connect(Light_Driver_626.hPin_L, cable_light_626.pin_p);
  connect(Light_626.p, Light_Driver_626.pin_p);
  connect(Light_626.n, GndDC.p);
  connect(Light_Driver_626.hPin_N, GndAC.pin);
  connect(Light_Driver_626.pin_n, GndDC.p);
  connect(cable_light_626.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_626.y, Light_626.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_626.u);
/* Light Connections 625 */
  connect(Light_Driver_625.hPin_L, cable_light_625.pin_p);
  connect(Light_625.p, Light_Driver_625.pin_p);
  connect(Light_625.n, GndDC.p);
  connect(Light_Driver_625.hPin_N, GndAC.pin);
  connect(Light_Driver_625.pin_n, GndDC.p);
  connect(cable_light_625.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_625.y, Light_625.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_625.u);
/* Light Connections 624 */
  connect(Light_Driver_624.hPin_L, cable_light_624.pin_p);
  connect(Light_624.p, Light_Driver_624.pin_p);
  connect(Light_624.n, GndDC.p);
  connect(Light_Driver_624.hPin_N, GndAC.pin);
  connect(Light_Driver_624.pin_n, GndDC.p);
  connect(cable_light_624.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_624.y, Light_624.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_624.u);
/* Light Connections 623 */
  connect(Light_Driver_623.hPin_L, cable_light_623.pin_p);
  connect(Light_623.p, Light_Driver_623.pin_p);
  connect(Light_623.n, GndDC.p);
  connect(Light_Driver_623.hPin_N, GndAC.pin);
  connect(Light_Driver_623.pin_n, GndDC.p);
  connect(cable_light_623.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_623.y, Light_623.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_623.u);
/* Light Connections 622 */
  connect(Light_Driver_622.hPin_L, cable_light_622.pin_p);
  connect(Light_622.p, Light_Driver_622.pin_p);
  connect(Light_622.n, GndDC.p);
  connect(Light_Driver_622.hPin_N, GndAC.pin);
  connect(Light_Driver_622.pin_n, GndDC.p);
  connect(cable_light_622.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_622.y, Light_622.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_622.u);
/* Light Connections 621 */
  connect(Light_Driver_621.hPin_L, cable_light_621.pin_p);
  connect(Light_621.p, Light_Driver_621.pin_p);
  connect(Light_621.n, GndDC.p);
  connect(Light_Driver_621.hPin_N, GndAC.pin);
  connect(Light_Driver_621.pin_n, GndDC.p);
  connect(cable_light_621.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_621.y, Light_621.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_621.u);
/* Light Connections 620 */
  connect(Light_Driver_620.hPin_L, cable_light_620.pin_p);
  connect(Light_620.p, Light_Driver_620.pin_p);
  connect(Light_620.n, GndDC.p);
  connect(Light_Driver_620.hPin_N, GndAC.pin);
  connect(Light_Driver_620.pin_n, GndDC.p);
  connect(cable_light_620.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_620.y, Light_620.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_620.u);
/* Light Connections 619 */
  connect(Light_Driver_619.hPin_L, cable_light_619.pin_p);
  connect(Light_619.p, Light_Driver_619.pin_p);
  connect(Light_619.n, GndDC.p);
  connect(Light_Driver_619.hPin_N, GndAC.pin);
  connect(Light_Driver_619.pin_n, GndDC.p);
  connect(cable_light_619.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_619.y, Light_619.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_619.u);
/* Light Connections 618 */
  connect(Light_Driver_618.hPin_L, cable_light_618.pin_p);
  connect(Light_618.p, Light_Driver_618.pin_p);
  connect(Light_618.n, GndDC.p);
  connect(Light_Driver_618.hPin_N, GndAC.pin);
  connect(Light_Driver_618.pin_n, GndDC.p);
  connect(cable_light_618.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_618.y, Light_618.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_618.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_1C;
