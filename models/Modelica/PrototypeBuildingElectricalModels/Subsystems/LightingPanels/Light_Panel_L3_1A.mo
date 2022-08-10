within ;
model Light_Panel_L3_1A
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

  
/* Light Model 805 */
  HPF.DC.Variable_DC_Load Light_805;
  HPF.Cables.NEC_CableModel cable_light_805(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.34);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_805(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_805(k=31);
  
/* Light Model 804 */
  HPF.DC.Variable_DC_Load Light_804;
  HPF.Cables.NEC_CableModel cable_light_804(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_804(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_804(k=31);
  
/* Light Model 803 */
  HPF.DC.Variable_DC_Load Light_803;
  HPF.Cables.NEC_CableModel cable_light_803(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.37);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_803(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_803(k=31);
  
/* Light Model 802 */
  HPF.DC.Variable_DC_Load Light_802;
  HPF.Cables.NEC_CableModel cable_light_802(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_802(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_802(k=31);
  
/* Light Model 801 */
  HPF.DC.Variable_DC_Load Light_801;
  HPF.Cables.NEC_CableModel cable_light_801(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_801(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_801(k=31);
  
/* Light Model 800 */
  HPF.DC.Variable_DC_Load Light_800;
  HPF.Cables.NEC_CableModel cable_light_800(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_800(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_800(k=31);
  
/* Light Model 799 */
  HPF.DC.Variable_DC_Load Light_799;
  HPF.Cables.NEC_CableModel cable_light_799(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.45);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_799(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_799(k=31);
  
/* Light Model 798 */
  HPF.DC.Variable_DC_Load Light_798;
  HPF.Cables.NEC_CableModel cable_light_798(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_798(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_798(k=31);
  
/* Light Model 797 */
  HPF.DC.Variable_DC_Load Light_797;
  HPF.Cables.NEC_CableModel cable_light_797(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_797(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_797(k=31);
  
/* Light Model 796 */
  HPF.DC.Variable_DC_Load Light_796;
  HPF.Cables.NEC_CableModel cable_light_796(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.86);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_796(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_796(k=31);
  
/* Light Model 795 */
  HPF.DC.Variable_DC_Load Light_795;
  HPF.Cables.NEC_CableModel cable_light_795(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_795(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_795(k=31);
  
/* Light Model 794 */
  HPF.DC.Variable_DC_Load Light_794;
  HPF.Cables.NEC_CableModel cable_light_794(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_794(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_794(k=31);
  
/* Light Model 751 */
  HPF.DC.Variable_DC_Load Light_751;
  HPF.Cables.NEC_CableModel cable_light_751(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_751(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_751(k=21);
  
/* Light Model 750 */
  HPF.DC.Variable_DC_Load Light_750;
  HPF.Cables.NEC_CableModel cable_light_750(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.14);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_750(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_750(k=21);
  
/* Light Model 735 */
  HPF.DC.Variable_DC_Load Light_735;
  HPF.Cables.NEC_CableModel cable_light_735(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.95);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_735(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_735(k=21);
  
/* Light Model 734 */
  HPF.DC.Variable_DC_Load Light_734;
  HPF.Cables.NEC_CableModel cable_light_734(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.74);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_734(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_734(k=21);
  
/* Light Model 674 */
  HPF.DC.Variable_DC_Load Light_674;
  HPF.Cables.NEC_CableModel cable_light_674(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.11);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_674(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_674(k=28);
  
/* Light Model 673 */
  HPF.DC.Variable_DC_Load Light_673;
  HPF.Cables.NEC_CableModel cable_light_673(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_673(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_673(k=28);
  
/* Light Model 672 */
  HPF.DC.Variable_DC_Load Light_672;
  HPF.Cables.NEC_CableModel cable_light_672(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_672(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_672(k=40);
  
/* Light Model 670 */
  HPF.DC.Variable_DC_Load Light_670;
  HPF.Cables.NEC_CableModel cable_light_670(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.31);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_670(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_670(k=28);
  
/* Light Model 669 */
  HPF.DC.Variable_DC_Load Light_669;
  HPF.Cables.NEC_CableModel cable_light_669(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_669(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_669(k=28);
  
/* Light Model 668 */
  HPF.DC.Variable_DC_Load Light_668;
  HPF.Cables.NEC_CableModel cable_light_668(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_668(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_668(k=40);
  
/* Light Model 667 */
  HPF.DC.Variable_DC_Load Light_667;
  HPF.Cables.NEC_CableModel cable_light_667(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_667(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_667(k=40);
  
/* Light Model 666 */
  HPF.DC.Variable_DC_Load Light_666;
  HPF.Cables.NEC_CableModel cable_light_666(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_666(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_666(k=28);
  
/* Light Model 665 */
  HPF.DC.Variable_DC_Load Light_665;
  HPF.Cables.NEC_CableModel cable_light_665(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_665(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_665(k=28);
  
/* Light Model 664 */
  HPF.DC.Variable_DC_Load Light_664;
  HPF.Cables.NEC_CableModel cable_light_664(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.5);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_664(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_664(k=40);
  
/* Light Model 663 */
  HPF.DC.Variable_DC_Load Light_663;
  HPF.Cables.NEC_CableModel cable_light_663(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_663(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_663(k=40);
  
/* Light Model 662 */
  HPF.DC.Variable_DC_Load Light_662;
  HPF.Cables.NEC_CableModel cable_light_662(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=27.23);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_662(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_662(k=28);
  
/* Light Model 661 */
  HPF.DC.Variable_DC_Load Light_661;
  HPF.Cables.NEC_CableModel cable_light_661(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_661(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_661(k=28);
  
/* Light Model 660 */
  HPF.DC.Variable_DC_Load Light_660;
  HPF.Cables.NEC_CableModel cable_light_660(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=28.96);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_660(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_660(k=40);
  
/* Light Model 659 */
  HPF.DC.Variable_DC_Load Light_659;
  HPF.Cables.NEC_CableModel cable_light_659(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=30.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_659(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_659(k=40);
  
/* Light Model 646 */
  HPF.DC.Variable_DC_Load Light_646;
  HPF.Cables.NEC_CableModel cable_light_646(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=7.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_646(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_646(k=22);
  
/* Light Model 642 */
  HPF.DC.Variable_DC_Load Light_642;
  HPF.Cables.NEC_CableModel cable_light_642(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.64);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_642(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_642(k=31);
  
/* Light Model 641 */
  HPF.DC.Variable_DC_Load Light_641;
  HPF.Cables.NEC_CableModel cable_light_641(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_641(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_641(k=31);
  
/* Light Model 640 */
  HPF.DC.Variable_DC_Load Light_640;
  HPF.Cables.NEC_CableModel cable_light_640(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_640(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_640(k=31);
  
/* Light Model 638 */
  HPF.DC.Variable_DC_Load Light_638;
  HPF.Cables.NEC_CableModel cable_light_638(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_638(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_638(k=31);
  
/* Light Model 637 */
  HPF.DC.Variable_DC_Load Light_637;
  HPF.Cables.NEC_CableModel cable_light_637(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.36);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_637(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_637(k=31);
  
/* Light Model 587 */
  HPF.DC.Variable_DC_Load Light_587;
  HPF.Cables.NEC_CableModel cable_light_587(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_587(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_587(k=31);
  
/* Light Model 586 */
  HPF.DC.Variable_DC_Load Light_586;
  HPF.Cables.NEC_CableModel cable_light_586(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_586(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_586(k=31);
  
/* Light Model 585 */
  HPF.DC.Variable_DC_Load Light_585;
  HPF.Cables.NEC_CableModel cable_light_585(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_585(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_585(k=31);
  
/* Light Model 584 */
  HPF.DC.Variable_DC_Load Light_584;
  HPF.Cables.NEC_CableModel cable_light_584(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_584(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_584(k=31);
  
/* Light Model 583 */
  HPF.DC.Variable_DC_Load Light_583;
  HPF.Cables.NEC_CableModel cable_light_583(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_583(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_583(k=31);
  
/* Light Model 582 */
  HPF.DC.Variable_DC_Load Light_582;
  HPF.Cables.NEC_CableModel cable_light_582(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_582(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_582(k=31);
  
/* Light Model 581 */
  HPF.DC.Variable_DC_Load Light_581;
  HPF.Cables.NEC_CableModel cable_light_581(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.2);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_581(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_581(k=31);
  
/* Light Model 580 */
  HPF.DC.Variable_DC_Load Light_580;
  HPF.Cables.NEC_CableModel cable_light_580(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_580(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_580(k=31);
  
/* Light Model 579 */
  HPF.DC.Variable_DC_Load Light_579;
  HPF.Cables.NEC_CableModel cable_light_579(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_579(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_579(k=31);
  
/* Light Model 578 */
  HPF.DC.Variable_DC_Load Light_578;
  HPF.Cables.NEC_CableModel cable_light_578(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_578(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_578(k=31);
  
/* Light Model 569 */
  HPF.DC.Variable_DC_Load Light_569;
  HPF.Cables.NEC_CableModel cable_light_569(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.98);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_569(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_569(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 805 */
  connect(Light_Driver_805.hPin_L, cable_light_805.pin_p);
  connect(Light_805.p, Light_Driver_805.pin_p);
  connect(Light_805.n, GndDC.p);
  connect(Light_Driver_805.hPin_N, GndAC.pin);
  connect(Light_Driver_805.pin_n, GndDC.p);
  connect(cable_light_805.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_805.y, Light_805.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_805.u);
/* Light Connections 804 */
  connect(Light_Driver_804.hPin_L, cable_light_804.pin_p);
  connect(Light_804.p, Light_Driver_804.pin_p);
  connect(Light_804.n, GndDC.p);
  connect(Light_Driver_804.hPin_N, GndAC.pin);
  connect(Light_Driver_804.pin_n, GndDC.p);
  connect(cable_light_804.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_804.y, Light_804.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_804.u);
/* Light Connections 803 */
  connect(Light_Driver_803.hPin_L, cable_light_803.pin_p);
  connect(Light_803.p, Light_Driver_803.pin_p);
  connect(Light_803.n, GndDC.p);
  connect(Light_Driver_803.hPin_N, GndAC.pin);
  connect(Light_Driver_803.pin_n, GndDC.p);
  connect(cable_light_803.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_803.y, Light_803.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_803.u);
/* Light Connections 802 */
  connect(Light_Driver_802.hPin_L, cable_light_802.pin_p);
  connect(Light_802.p, Light_Driver_802.pin_p);
  connect(Light_802.n, GndDC.p);
  connect(Light_Driver_802.hPin_N, GndAC.pin);
  connect(Light_Driver_802.pin_n, GndDC.p);
  connect(cable_light_802.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_802.y, Light_802.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_802.u);
/* Light Connections 801 */
  connect(Light_Driver_801.hPin_L, cable_light_801.pin_p);
  connect(Light_801.p, Light_Driver_801.pin_p);
  connect(Light_801.n, GndDC.p);
  connect(Light_Driver_801.hPin_N, GndAC.pin);
  connect(Light_Driver_801.pin_n, GndDC.p);
  connect(cable_light_801.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_801.y, Light_801.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_801.u);
/* Light Connections 800 */
  connect(Light_Driver_800.hPin_L, cable_light_800.pin_p);
  connect(Light_800.p, Light_Driver_800.pin_p);
  connect(Light_800.n, GndDC.p);
  connect(Light_Driver_800.hPin_N, GndAC.pin);
  connect(Light_Driver_800.pin_n, GndDC.p);
  connect(cable_light_800.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_800.y, Light_800.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_800.u);
/* Light Connections 799 */
  connect(Light_Driver_799.hPin_L, cable_light_799.pin_p);
  connect(Light_799.p, Light_Driver_799.pin_p);
  connect(Light_799.n, GndDC.p);
  connect(Light_Driver_799.hPin_N, GndAC.pin);
  connect(Light_Driver_799.pin_n, GndDC.p);
  connect(cable_light_799.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_799.y, Light_799.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_799.u);
/* Light Connections 798 */
  connect(Light_Driver_798.hPin_L, cable_light_798.pin_p);
  connect(Light_798.p, Light_Driver_798.pin_p);
  connect(Light_798.n, GndDC.p);
  connect(Light_Driver_798.hPin_N, GndAC.pin);
  connect(Light_Driver_798.pin_n, GndDC.p);
  connect(cable_light_798.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_798.y, Light_798.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_798.u);
/* Light Connections 797 */
  connect(Light_Driver_797.hPin_L, cable_light_797.pin_p);
  connect(Light_797.p, Light_Driver_797.pin_p);
  connect(Light_797.n, GndDC.p);
  connect(Light_Driver_797.hPin_N, GndAC.pin);
  connect(Light_Driver_797.pin_n, GndDC.p);
  connect(cable_light_797.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_797.y, Light_797.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_797.u);
/* Light Connections 796 */
  connect(Light_Driver_796.hPin_L, cable_light_796.pin_p);
  connect(Light_796.p, Light_Driver_796.pin_p);
  connect(Light_796.n, GndDC.p);
  connect(Light_Driver_796.hPin_N, GndAC.pin);
  connect(Light_Driver_796.pin_n, GndDC.p);
  connect(cable_light_796.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_796.y, Light_796.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_796.u);
/* Light Connections 795 */
  connect(Light_Driver_795.hPin_L, cable_light_795.pin_p);
  connect(Light_795.p, Light_Driver_795.pin_p);
  connect(Light_795.n, GndDC.p);
  connect(Light_Driver_795.hPin_N, GndAC.pin);
  connect(Light_Driver_795.pin_n, GndDC.p);
  connect(cable_light_795.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_795.y, Light_795.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_795.u);
/* Light Connections 794 */
  connect(Light_Driver_794.hPin_L, cable_light_794.pin_p);
  connect(Light_794.p, Light_Driver_794.pin_p);
  connect(Light_794.n, GndDC.p);
  connect(Light_Driver_794.hPin_N, GndAC.pin);
  connect(Light_Driver_794.pin_n, GndDC.p);
  connect(cable_light_794.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_794.y, Light_794.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_794.u);
/* Light Connections 751 */
  connect(Light_Driver_751.hPin_L, cable_light_751.pin_p);
  connect(Light_751.p, Light_Driver_751.pin_p);
  connect(Light_751.n, GndDC.p);
  connect(Light_Driver_751.hPin_N, GndAC.pin);
  connect(Light_Driver_751.pin_n, GndDC.p);
  connect(cable_light_751.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_751.y, Light_751.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_751.u);
/* Light Connections 750 */
  connect(Light_Driver_750.hPin_L, cable_light_750.pin_p);
  connect(Light_750.p, Light_Driver_750.pin_p);
  connect(Light_750.n, GndDC.p);
  connect(Light_Driver_750.hPin_N, GndAC.pin);
  connect(Light_Driver_750.pin_n, GndDC.p);
  connect(cable_light_750.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_750.y, Light_750.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_750.u);
/* Light Connections 735 */
  connect(Light_Driver_735.hPin_L, cable_light_735.pin_p);
  connect(Light_735.p, Light_Driver_735.pin_p);
  connect(Light_735.n, GndDC.p);
  connect(Light_Driver_735.hPin_N, GndAC.pin);
  connect(Light_Driver_735.pin_n, GndDC.p);
  connect(cable_light_735.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_735.y, Light_735.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_735.u);
/* Light Connections 734 */
  connect(Light_Driver_734.hPin_L, cable_light_734.pin_p);
  connect(Light_734.p, Light_Driver_734.pin_p);
  connect(Light_734.n, GndDC.p);
  connect(Light_Driver_734.hPin_N, GndAC.pin);
  connect(Light_Driver_734.pin_n, GndDC.p);
  connect(cable_light_734.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_734.y, Light_734.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_734.u);
/* Light Connections 674 */
  connect(Light_Driver_674.hPin_L, cable_light_674.pin_p);
  connect(Light_674.p, Light_Driver_674.pin_p);
  connect(Light_674.n, GndDC.p);
  connect(Light_Driver_674.hPin_N, GndAC.pin);
  connect(Light_Driver_674.pin_n, GndDC.p);
  connect(cable_light_674.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_674.y, Light_674.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_674.u);
/* Light Connections 673 */
  connect(Light_Driver_673.hPin_L, cable_light_673.pin_p);
  connect(Light_673.p, Light_Driver_673.pin_p);
  connect(Light_673.n, GndDC.p);
  connect(Light_Driver_673.hPin_N, GndAC.pin);
  connect(Light_Driver_673.pin_n, GndDC.p);
  connect(cable_light_673.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_673.y, Light_673.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_673.u);
/* Light Connections 672 */
  connect(Light_Driver_672.hPin_L, cable_light_672.pin_p);
  connect(Light_672.p, Light_Driver_672.pin_p);
  connect(Light_672.n, GndDC.p);
  connect(Light_Driver_672.hPin_N, GndAC.pin);
  connect(Light_Driver_672.pin_n, GndDC.p);
  connect(cable_light_672.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_672.y, Light_672.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_672.u);
/* Light Connections 670 */
  connect(Light_Driver_670.hPin_L, cable_light_670.pin_p);
  connect(Light_670.p, Light_Driver_670.pin_p);
  connect(Light_670.n, GndDC.p);
  connect(Light_Driver_670.hPin_N, GndAC.pin);
  connect(Light_Driver_670.pin_n, GndDC.p);
  connect(cable_light_670.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_670.y, Light_670.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_670.u);
/* Light Connections 669 */
  connect(Light_Driver_669.hPin_L, cable_light_669.pin_p);
  connect(Light_669.p, Light_Driver_669.pin_p);
  connect(Light_669.n, GndDC.p);
  connect(Light_Driver_669.hPin_N, GndAC.pin);
  connect(Light_Driver_669.pin_n, GndDC.p);
  connect(cable_light_669.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_669.y, Light_669.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_669.u);
/* Light Connections 668 */
  connect(Light_Driver_668.hPin_L, cable_light_668.pin_p);
  connect(Light_668.p, Light_Driver_668.pin_p);
  connect(Light_668.n, GndDC.p);
  connect(Light_Driver_668.hPin_N, GndAC.pin);
  connect(Light_Driver_668.pin_n, GndDC.p);
  connect(cable_light_668.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_668.y, Light_668.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_668.u);
/* Light Connections 667 */
  connect(Light_Driver_667.hPin_L, cable_light_667.pin_p);
  connect(Light_667.p, Light_Driver_667.pin_p);
  connect(Light_667.n, GndDC.p);
  connect(Light_Driver_667.hPin_N, GndAC.pin);
  connect(Light_Driver_667.pin_n, GndDC.p);
  connect(cable_light_667.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_667.y, Light_667.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_667.u);
/* Light Connections 666 */
  connect(Light_Driver_666.hPin_L, cable_light_666.pin_p);
  connect(Light_666.p, Light_Driver_666.pin_p);
  connect(Light_666.n, GndDC.p);
  connect(Light_Driver_666.hPin_N, GndAC.pin);
  connect(Light_Driver_666.pin_n, GndDC.p);
  connect(cable_light_666.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_666.y, Light_666.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_666.u);
/* Light Connections 665 */
  connect(Light_Driver_665.hPin_L, cable_light_665.pin_p);
  connect(Light_665.p, Light_Driver_665.pin_p);
  connect(Light_665.n, GndDC.p);
  connect(Light_Driver_665.hPin_N, GndAC.pin);
  connect(Light_Driver_665.pin_n, GndDC.p);
  connect(cable_light_665.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_665.y, Light_665.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_665.u);
/* Light Connections 664 */
  connect(Light_Driver_664.hPin_L, cable_light_664.pin_p);
  connect(Light_664.p, Light_Driver_664.pin_p);
  connect(Light_664.n, GndDC.p);
  connect(Light_Driver_664.hPin_N, GndAC.pin);
  connect(Light_Driver_664.pin_n, GndDC.p);
  connect(cable_light_664.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_664.y, Light_664.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_664.u);
/* Light Connections 663 */
  connect(Light_Driver_663.hPin_L, cable_light_663.pin_p);
  connect(Light_663.p, Light_Driver_663.pin_p);
  connect(Light_663.n, GndDC.p);
  connect(Light_Driver_663.hPin_N, GndAC.pin);
  connect(Light_Driver_663.pin_n, GndDC.p);
  connect(cable_light_663.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_663.y, Light_663.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_663.u);
/* Light Connections 662 */
  connect(Light_Driver_662.hPin_L, cable_light_662.pin_p);
  connect(Light_662.p, Light_Driver_662.pin_p);
  connect(Light_662.n, GndDC.p);
  connect(Light_Driver_662.hPin_N, GndAC.pin);
  connect(Light_Driver_662.pin_n, GndDC.p);
  connect(cable_light_662.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_662.y, Light_662.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_662.u);
/* Light Connections 661 */
  connect(Light_Driver_661.hPin_L, cable_light_661.pin_p);
  connect(Light_661.p, Light_Driver_661.pin_p);
  connect(Light_661.n, GndDC.p);
  connect(Light_Driver_661.hPin_N, GndAC.pin);
  connect(Light_Driver_661.pin_n, GndDC.p);
  connect(cable_light_661.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_661.y, Light_661.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_661.u);
/* Light Connections 660 */
  connect(Light_Driver_660.hPin_L, cable_light_660.pin_p);
  connect(Light_660.p, Light_Driver_660.pin_p);
  connect(Light_660.n, GndDC.p);
  connect(Light_Driver_660.hPin_N, GndAC.pin);
  connect(Light_Driver_660.pin_n, GndDC.p);
  connect(cable_light_660.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_660.y, Light_660.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_660.u);
/* Light Connections 659 */
  connect(Light_Driver_659.hPin_L, cable_light_659.pin_p);
  connect(Light_659.p, Light_Driver_659.pin_p);
  connect(Light_659.n, GndDC.p);
  connect(Light_Driver_659.hPin_N, GndAC.pin);
  connect(Light_Driver_659.pin_n, GndDC.p);
  connect(cable_light_659.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_659.y, Light_659.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_659.u);
/* Light Connections 646 */
  connect(Light_Driver_646.hPin_L, cable_light_646.pin_p);
  connect(Light_646.p, Light_Driver_646.pin_p);
  connect(Light_646.n, GndDC.p);
  connect(Light_Driver_646.hPin_N, GndAC.pin);
  connect(Light_Driver_646.pin_n, GndDC.p);
  connect(cable_light_646.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_646.y, Light_646.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_646.u);
/* Light Connections 642 */
  connect(Light_Driver_642.hPin_L, cable_light_642.pin_p);
  connect(Light_642.p, Light_Driver_642.pin_p);
  connect(Light_642.n, GndDC.p);
  connect(Light_Driver_642.hPin_N, GndAC.pin);
  connect(Light_Driver_642.pin_n, GndDC.p);
  connect(cable_light_642.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_642.y, Light_642.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_642.u);
/* Light Connections 641 */
  connect(Light_Driver_641.hPin_L, cable_light_641.pin_p);
  connect(Light_641.p, Light_Driver_641.pin_p);
  connect(Light_641.n, GndDC.p);
  connect(Light_Driver_641.hPin_N, GndAC.pin);
  connect(Light_Driver_641.pin_n, GndDC.p);
  connect(cable_light_641.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_641.y, Light_641.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_641.u);
/* Light Connections 640 */
  connect(Light_Driver_640.hPin_L, cable_light_640.pin_p);
  connect(Light_640.p, Light_Driver_640.pin_p);
  connect(Light_640.n, GndDC.p);
  connect(Light_Driver_640.hPin_N, GndAC.pin);
  connect(Light_Driver_640.pin_n, GndDC.p);
  connect(cable_light_640.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_640.y, Light_640.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_640.u);
/* Light Connections 638 */
  connect(Light_Driver_638.hPin_L, cable_light_638.pin_p);
  connect(Light_638.p, Light_Driver_638.pin_p);
  connect(Light_638.n, GndDC.p);
  connect(Light_Driver_638.hPin_N, GndAC.pin);
  connect(Light_Driver_638.pin_n, GndDC.p);
  connect(cable_light_638.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_638.y, Light_638.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_638.u);
/* Light Connections 637 */
  connect(Light_Driver_637.hPin_L, cable_light_637.pin_p);
  connect(Light_637.p, Light_Driver_637.pin_p);
  connect(Light_637.n, GndDC.p);
  connect(Light_Driver_637.hPin_N, GndAC.pin);
  connect(Light_Driver_637.pin_n, GndDC.p);
  connect(cable_light_637.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_637.y, Light_637.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_637.u);
/* Light Connections 587 */
  connect(Light_Driver_587.hPin_L, cable_light_587.pin_p);
  connect(Light_587.p, Light_Driver_587.pin_p);
  connect(Light_587.n, GndDC.p);
  connect(Light_Driver_587.hPin_N, GndAC.pin);
  connect(Light_Driver_587.pin_n, GndDC.p);
  connect(cable_light_587.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_587.y, Light_587.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_587.u);
/* Light Connections 586 */
  connect(Light_Driver_586.hPin_L, cable_light_586.pin_p);
  connect(Light_586.p, Light_Driver_586.pin_p);
  connect(Light_586.n, GndDC.p);
  connect(Light_Driver_586.hPin_N, GndAC.pin);
  connect(Light_Driver_586.pin_n, GndDC.p);
  connect(cable_light_586.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_586.y, Light_586.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_586.u);
/* Light Connections 585 */
  connect(Light_Driver_585.hPin_L, cable_light_585.pin_p);
  connect(Light_585.p, Light_Driver_585.pin_p);
  connect(Light_585.n, GndDC.p);
  connect(Light_Driver_585.hPin_N, GndAC.pin);
  connect(Light_Driver_585.pin_n, GndDC.p);
  connect(cable_light_585.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_585.y, Light_585.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_585.u);
/* Light Connections 584 */
  connect(Light_Driver_584.hPin_L, cable_light_584.pin_p);
  connect(Light_584.p, Light_Driver_584.pin_p);
  connect(Light_584.n, GndDC.p);
  connect(Light_Driver_584.hPin_N, GndAC.pin);
  connect(Light_Driver_584.pin_n, GndDC.p);
  connect(cable_light_584.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_584.y, Light_584.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_584.u);
/* Light Connections 583 */
  connect(Light_Driver_583.hPin_L, cable_light_583.pin_p);
  connect(Light_583.p, Light_Driver_583.pin_p);
  connect(Light_583.n, GndDC.p);
  connect(Light_Driver_583.hPin_N, GndAC.pin);
  connect(Light_Driver_583.pin_n, GndDC.p);
  connect(cable_light_583.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_583.y, Light_583.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_583.u);
/* Light Connections 582 */
  connect(Light_Driver_582.hPin_L, cable_light_582.pin_p);
  connect(Light_582.p, Light_Driver_582.pin_p);
  connect(Light_582.n, GndDC.p);
  connect(Light_Driver_582.hPin_N, GndAC.pin);
  connect(Light_Driver_582.pin_n, GndDC.p);
  connect(cable_light_582.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_582.y, Light_582.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_582.u);
/* Light Connections 581 */
  connect(Light_Driver_581.hPin_L, cable_light_581.pin_p);
  connect(Light_581.p, Light_Driver_581.pin_p);
  connect(Light_581.n, GndDC.p);
  connect(Light_Driver_581.hPin_N, GndAC.pin);
  connect(Light_Driver_581.pin_n, GndDC.p);
  connect(cable_light_581.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_581.y, Light_581.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_581.u);
/* Light Connections 580 */
  connect(Light_Driver_580.hPin_L, cable_light_580.pin_p);
  connect(Light_580.p, Light_Driver_580.pin_p);
  connect(Light_580.n, GndDC.p);
  connect(Light_Driver_580.hPin_N, GndAC.pin);
  connect(Light_Driver_580.pin_n, GndDC.p);
  connect(cable_light_580.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_580.y, Light_580.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_580.u);
/* Light Connections 579 */
  connect(Light_Driver_579.hPin_L, cable_light_579.pin_p);
  connect(Light_579.p, Light_Driver_579.pin_p);
  connect(Light_579.n, GndDC.p);
  connect(Light_Driver_579.hPin_N, GndAC.pin);
  connect(Light_Driver_579.pin_n, GndDC.p);
  connect(cable_light_579.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_579.y, Light_579.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_579.u);
/* Light Connections 578 */
  connect(Light_Driver_578.hPin_L, cable_light_578.pin_p);
  connect(Light_578.p, Light_Driver_578.pin_p);
  connect(Light_578.n, GndDC.p);
  connect(Light_Driver_578.hPin_N, GndAC.pin);
  connect(Light_Driver_578.pin_n, GndDC.p);
  connect(cable_light_578.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_578.y, Light_578.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_578.u);
/* Light Connections 569 */
  connect(Light_Driver_569.hPin_L, cable_light_569.pin_p);
  connect(Light_569.p, Light_Driver_569.pin_p);
  connect(Light_569.n, GndDC.p);
  connect(Light_Driver_569.hPin_N, GndAC.pin);
  connect(Light_Driver_569.pin_n, GndDC.p);
  connect(cable_light_569.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_569.y, Light_569.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_569.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_1A;
