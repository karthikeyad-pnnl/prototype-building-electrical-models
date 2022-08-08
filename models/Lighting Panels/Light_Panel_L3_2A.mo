within ;
model Light_Panel_L3_2A
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

  
/* Light Model 742 */
  HPF.DC.Variable_DC_Load Light_742;
  HPF.Cables.NEC_CableModel cable_light_742(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.65);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_742(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_742(k=21);
  
/* Light Model 741 */
  HPF.DC.Variable_DC_Load Light_741;
  HPF.Cables.NEC_CableModel cable_light_741(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.78);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_741(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_741(k=21);
  
/* Light Model 740 */
  HPF.DC.Variable_DC_Load Light_740;
  HPF.Cables.NEC_CableModel cable_light_740(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.88);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_740(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_740(k=21);
  
/* Light Model 739 */
  HPF.DC.Variable_DC_Load Light_739;
  HPF.Cables.NEC_CableModel cable_light_739(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.49);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_739(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_739(k=21);
  
/* Light Model 738 */
  HPF.DC.Variable_DC_Load Light_738;
  HPF.Cables.NEC_CableModel cable_light_738(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_738(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_738(k=21);
  
/* Light Model 737 */
  HPF.DC.Variable_DC_Load Light_737;
  HPF.Cables.NEC_CableModel cable_light_737(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.9);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_737(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_737(k=21);
  
/* Light Model 736 */
  HPF.DC.Variable_DC_Load Light_736;
  HPF.Cables.NEC_CableModel cable_light_736(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_736(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_736(k=21);
  
/* Light Model 698 */
  HPF.DC.Variable_DC_Load Light_698;
  HPF.Cables.NEC_CableModel cable_light_698(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_698(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_698(k=28);
  
/* Light Model 697 */
  HPF.DC.Variable_DC_Load Light_697;
  HPF.Cables.NEC_CableModel cable_light_697(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_697(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_697(k=28);
  
/* Light Model 694 */
  HPF.DC.Variable_DC_Load Light_694;
  HPF.Cables.NEC_CableModel cable_light_694(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.83);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_694(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_694(k=28);
  
/* Light Model 693 */
  HPF.DC.Variable_DC_Load Light_693;
  HPF.Cables.NEC_CableModel cable_light_693(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_693(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_693(k=28);
  
/* Light Model 692 */
  HPF.DC.Variable_DC_Load Light_692;
  HPF.Cables.NEC_CableModel cable_light_692(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_692(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_692(k=40);
  
/* Light Model 691 */
  HPF.DC.Variable_DC_Load Light_691;
  HPF.Cables.NEC_CableModel cable_light_691(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_691(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_691(k=40);
  
/* Light Model 690 */
  HPF.DC.Variable_DC_Load Light_690;
  HPF.Cables.NEC_CableModel cable_light_690(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_690(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_690(k=28);
  
/* Light Model 689 */
  HPF.DC.Variable_DC_Load Light_689;
  HPF.Cables.NEC_CableModel cable_light_689(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_689(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_689(k=40);
  
/* Light Model 688 */
  HPF.DC.Variable_DC_Load Light_688;
  HPF.Cables.NEC_CableModel cable_light_688(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_688(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_688(k=40);
  
/* Light Model 687 */
  HPF.DC.Variable_DC_Load Light_687;
  HPF.Cables.NEC_CableModel cable_light_687(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_687(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_687(k=28);
  
/* Light Model 686 */
  HPF.DC.Variable_DC_Load Light_686;
  HPF.Cables.NEC_CableModel cable_light_686(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.25);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_686(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_686(k=28);
  
/* Light Model 685 */
  HPF.DC.Variable_DC_Load Light_685;
  HPF.Cables.NEC_CableModel cable_light_685(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.59);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_685(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_685(k=28);
  
/* Light Model 684 */
  HPF.DC.Variable_DC_Load Light_684;
  HPF.Cables.NEC_CableModel cable_light_684(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_684(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_684(k=40);
  
/* Light Model 683 */
  HPF.DC.Variable_DC_Load Light_683;
  HPF.Cables.NEC_CableModel cable_light_683(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.68);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_683(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_683(k=40);
  
/* Light Model 682 */
  HPF.DC.Variable_DC_Load Light_682;
  HPF.Cables.NEC_CableModel cable_light_682(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_682(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_682(k=28);
  
/* Light Model 681 */
  HPF.DC.Variable_DC_Load Light_681;
  HPF.Cables.NEC_CableModel cable_light_681(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_681(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_681(k=28);
  
/* Light Model 680 */
  HPF.DC.Variable_DC_Load Light_680;
  HPF.Cables.NEC_CableModel cable_light_680(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_680(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_680(k=40);
  
/* Light Model 679 */
  HPF.DC.Variable_DC_Load Light_679;
  HPF.Cables.NEC_CableModel cable_light_679(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.73);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_679(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_679(k=40);
  
/* Light Model 678 */
  HPF.DC.Variable_DC_Load Light_678;
  HPF.Cables.NEC_CableModel cable_light_678(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_678(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_678(k=28);
  
/* Light Model 677 */
  HPF.DC.Variable_DC_Load Light_677;
  HPF.Cables.NEC_CableModel cable_light_677(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_677(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_677(k=28);
  
/* Light Model 676 */
  HPF.DC.Variable_DC_Load Light_676;
  HPF.Cables.NEC_CableModel cable_light_676(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_676(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_676(k=40);
  
/* Light Model 675 */
  HPF.DC.Variable_DC_Load Light_675;
  HPF.Cables.NEC_CableModel cable_light_675(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_675(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_675(k=40);
  
/* Light Model 671 */
  HPF.DC.Variable_DC_Load Light_671;
  HPF.Cables.NEC_CableModel cable_light_671(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_671(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_671(k=40);
  
/* Light Model 658 */
  HPF.DC.Variable_DC_Load Light_658;
  HPF.Cables.NEC_CableModel cable_light_658(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.71);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_658(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_658(k=28);
  
/* Light Model 657 */
  HPF.DC.Variable_DC_Load Light_657;
  HPF.Cables.NEC_CableModel cable_light_657(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.94);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_657(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_657(k=28);
  
/* Light Model 656 */
  HPF.DC.Variable_DC_Load Light_656;
  HPF.Cables.NEC_CableModel cable_light_656(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.15);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_656(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_656(k=40);
  
/* Light Model 655 */
  HPF.DC.Variable_DC_Load Light_655;
  HPF.Cables.NEC_CableModel cable_light_655(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.07);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_655(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_655(k=40);
  
/* Light Model 654 */
  HPF.DC.Variable_DC_Load Light_654;
  HPF.Cables.NEC_CableModel cable_light_654(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.89);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_654(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_654(k=40);
  
/* Light Model 653 */
  HPF.DC.Variable_DC_Load Light_653;
  HPF.Cables.NEC_CableModel cable_light_653(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.47);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_653(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_653(k=40);
  
/* Light Model 652 */
  HPF.DC.Variable_DC_Load Light_652;
  HPF.Cables.NEC_CableModel cable_light_652(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.02);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_652(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_652(k=28);
  
/* Light Model 651 */
  HPF.DC.Variable_DC_Load Light_651;
  HPF.Cables.NEC_CableModel cable_light_651(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_651(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_651(k=28);
  
/* Light Model 650 */
  HPF.DC.Variable_DC_Load Light_650;
  HPF.Cables.NEC_CableModel cable_light_650(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=5.54);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_650(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_650(k=28);
  
/* Light Model 649 */
  HPF.DC.Variable_DC_Load Light_649;
  HPF.Cables.NEC_CableModel cable_light_649(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.56);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_649(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_649(k=28);
  
/* Light Model 648 */
  HPF.DC.Variable_DC_Load Light_648;
  HPF.Cables.NEC_CableModel cable_light_648(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=3.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_648(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_648(k=22);
  
/* Light Model 647 */
  HPF.DC.Variable_DC_Load Light_647;
  HPF.Cables.NEC_CableModel cable_light_647(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.52);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_647(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_647(k=22);
  
/* Light Model 639 */
  HPF.DC.Variable_DC_Load Light_639;
  HPF.Cables.NEC_CableModel cable_light_639(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_639(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_639(k=31);
  
/* Light Model 577 */
  HPF.DC.Variable_DC_Load Light_577;
  HPF.Cables.NEC_CableModel cable_light_577(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_577(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_577(k=22);
  
/* Light Model 576 */
  HPF.DC.Variable_DC_Load Light_576;
  HPF.Cables.NEC_CableModel cable_light_576(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.26);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_576(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_576(k=22);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 742 */
  connect(Light_Driver_742.hPin_L, cable_light_742.pin_p);
  connect(Light_742.p, Light_Driver_742.pin_p);
  connect(Light_742.n, GndDC.p);
  connect(Light_Driver_742.hPin_N, GndAC.pin);
  connect(Light_Driver_742.pin_n, GndDC.p);
  connect(cable_light_742.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_742.y, Light_742.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_742.u);
/* Light Connections 741 */
  connect(Light_Driver_741.hPin_L, cable_light_741.pin_p);
  connect(Light_741.p, Light_Driver_741.pin_p);
  connect(Light_741.n, GndDC.p);
  connect(Light_Driver_741.hPin_N, GndAC.pin);
  connect(Light_Driver_741.pin_n, GndDC.p);
  connect(cable_light_741.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_741.y, Light_741.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_741.u);
/* Light Connections 740 */
  connect(Light_Driver_740.hPin_L, cable_light_740.pin_p);
  connect(Light_740.p, Light_Driver_740.pin_p);
  connect(Light_740.n, GndDC.p);
  connect(Light_Driver_740.hPin_N, GndAC.pin);
  connect(Light_Driver_740.pin_n, GndDC.p);
  connect(cable_light_740.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_740.y, Light_740.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_740.u);
/* Light Connections 739 */
  connect(Light_Driver_739.hPin_L, cable_light_739.pin_p);
  connect(Light_739.p, Light_Driver_739.pin_p);
  connect(Light_739.n, GndDC.p);
  connect(Light_Driver_739.hPin_N, GndAC.pin);
  connect(Light_Driver_739.pin_n, GndDC.p);
  connect(cable_light_739.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_739.y, Light_739.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_739.u);
/* Light Connections 738 */
  connect(Light_Driver_738.hPin_L, cable_light_738.pin_p);
  connect(Light_738.p, Light_Driver_738.pin_p);
  connect(Light_738.n, GndDC.p);
  connect(Light_Driver_738.hPin_N, GndAC.pin);
  connect(Light_Driver_738.pin_n, GndDC.p);
  connect(cable_light_738.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_738.y, Light_738.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_738.u);
/* Light Connections 737 */
  connect(Light_Driver_737.hPin_L, cable_light_737.pin_p);
  connect(Light_737.p, Light_Driver_737.pin_p);
  connect(Light_737.n, GndDC.p);
  connect(Light_Driver_737.hPin_N, GndAC.pin);
  connect(Light_Driver_737.pin_n, GndDC.p);
  connect(cable_light_737.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_737.y, Light_737.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_737.u);
/* Light Connections 736 */
  connect(Light_Driver_736.hPin_L, cable_light_736.pin_p);
  connect(Light_736.p, Light_Driver_736.pin_p);
  connect(Light_736.n, GndDC.p);
  connect(Light_Driver_736.hPin_N, GndAC.pin);
  connect(Light_Driver_736.pin_n, GndDC.p);
  connect(cable_light_736.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_736.y, Light_736.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_736.u);
/* Light Connections 698 */
  connect(Light_Driver_698.hPin_L, cable_light_698.pin_p);
  connect(Light_698.p, Light_Driver_698.pin_p);
  connect(Light_698.n, GndDC.p);
  connect(Light_Driver_698.hPin_N, GndAC.pin);
  connect(Light_Driver_698.pin_n, GndDC.p);
  connect(cable_light_698.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_698.y, Light_698.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_698.u);
/* Light Connections 697 */
  connect(Light_Driver_697.hPin_L, cable_light_697.pin_p);
  connect(Light_697.p, Light_Driver_697.pin_p);
  connect(Light_697.n, GndDC.p);
  connect(Light_Driver_697.hPin_N, GndAC.pin);
  connect(Light_Driver_697.pin_n, GndDC.p);
  connect(cable_light_697.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_697.y, Light_697.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_697.u);
/* Light Connections 694 */
  connect(Light_Driver_694.hPin_L, cable_light_694.pin_p);
  connect(Light_694.p, Light_Driver_694.pin_p);
  connect(Light_694.n, GndDC.p);
  connect(Light_Driver_694.hPin_N, GndAC.pin);
  connect(Light_Driver_694.pin_n, GndDC.p);
  connect(cable_light_694.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_694.y, Light_694.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_694.u);
/* Light Connections 693 */
  connect(Light_Driver_693.hPin_L, cable_light_693.pin_p);
  connect(Light_693.p, Light_Driver_693.pin_p);
  connect(Light_693.n, GndDC.p);
  connect(Light_Driver_693.hPin_N, GndAC.pin);
  connect(Light_Driver_693.pin_n, GndDC.p);
  connect(cable_light_693.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_693.y, Light_693.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_693.u);
/* Light Connections 692 */
  connect(Light_Driver_692.hPin_L, cable_light_692.pin_p);
  connect(Light_692.p, Light_Driver_692.pin_p);
  connect(Light_692.n, GndDC.p);
  connect(Light_Driver_692.hPin_N, GndAC.pin);
  connect(Light_Driver_692.pin_n, GndDC.p);
  connect(cable_light_692.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_692.y, Light_692.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_692.u);
/* Light Connections 691 */
  connect(Light_Driver_691.hPin_L, cable_light_691.pin_p);
  connect(Light_691.p, Light_Driver_691.pin_p);
  connect(Light_691.n, GndDC.p);
  connect(Light_Driver_691.hPin_N, GndAC.pin);
  connect(Light_Driver_691.pin_n, GndDC.p);
  connect(cable_light_691.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_691.y, Light_691.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_691.u);
/* Light Connections 690 */
  connect(Light_Driver_690.hPin_L, cable_light_690.pin_p);
  connect(Light_690.p, Light_Driver_690.pin_p);
  connect(Light_690.n, GndDC.p);
  connect(Light_Driver_690.hPin_N, GndAC.pin);
  connect(Light_Driver_690.pin_n, GndDC.p);
  connect(cable_light_690.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_690.y, Light_690.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_690.u);
/* Light Connections 689 */
  connect(Light_Driver_689.hPin_L, cable_light_689.pin_p);
  connect(Light_689.p, Light_Driver_689.pin_p);
  connect(Light_689.n, GndDC.p);
  connect(Light_Driver_689.hPin_N, GndAC.pin);
  connect(Light_Driver_689.pin_n, GndDC.p);
  connect(cable_light_689.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_689.y, Light_689.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_689.u);
/* Light Connections 688 */
  connect(Light_Driver_688.hPin_L, cable_light_688.pin_p);
  connect(Light_688.p, Light_Driver_688.pin_p);
  connect(Light_688.n, GndDC.p);
  connect(Light_Driver_688.hPin_N, GndAC.pin);
  connect(Light_Driver_688.pin_n, GndDC.p);
  connect(cable_light_688.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_688.y, Light_688.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_688.u);
/* Light Connections 687 */
  connect(Light_Driver_687.hPin_L, cable_light_687.pin_p);
  connect(Light_687.p, Light_Driver_687.pin_p);
  connect(Light_687.n, GndDC.p);
  connect(Light_Driver_687.hPin_N, GndAC.pin);
  connect(Light_Driver_687.pin_n, GndDC.p);
  connect(cable_light_687.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_687.y, Light_687.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_687.u);
/* Light Connections 686 */
  connect(Light_Driver_686.hPin_L, cable_light_686.pin_p);
  connect(Light_686.p, Light_Driver_686.pin_p);
  connect(Light_686.n, GndDC.p);
  connect(Light_Driver_686.hPin_N, GndAC.pin);
  connect(Light_Driver_686.pin_n, GndDC.p);
  connect(cable_light_686.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_686.y, Light_686.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_686.u);
/* Light Connections 685 */
  connect(Light_Driver_685.hPin_L, cable_light_685.pin_p);
  connect(Light_685.p, Light_Driver_685.pin_p);
  connect(Light_685.n, GndDC.p);
  connect(Light_Driver_685.hPin_N, GndAC.pin);
  connect(Light_Driver_685.pin_n, GndDC.p);
  connect(cable_light_685.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_685.y, Light_685.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_685.u);
/* Light Connections 684 */
  connect(Light_Driver_684.hPin_L, cable_light_684.pin_p);
  connect(Light_684.p, Light_Driver_684.pin_p);
  connect(Light_684.n, GndDC.p);
  connect(Light_Driver_684.hPin_N, GndAC.pin);
  connect(Light_Driver_684.pin_n, GndDC.p);
  connect(cable_light_684.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_684.y, Light_684.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_684.u);
/* Light Connections 683 */
  connect(Light_Driver_683.hPin_L, cable_light_683.pin_p);
  connect(Light_683.p, Light_Driver_683.pin_p);
  connect(Light_683.n, GndDC.p);
  connect(Light_Driver_683.hPin_N, GndAC.pin);
  connect(Light_Driver_683.pin_n, GndDC.p);
  connect(cable_light_683.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_683.y, Light_683.u);
  connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_683.u);
/* Light Connections 682 */
  connect(Light_Driver_682.hPin_L, cable_light_682.pin_p);
  connect(Light_682.p, Light_Driver_682.pin_p);
  connect(Light_682.n, GndDC.p);
  connect(Light_Driver_682.hPin_N, GndAC.pin);
  connect(Light_Driver_682.pin_n, GndDC.p);
  connect(cable_light_682.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_682.y, Light_682.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_682.u);
/* Light Connections 681 */
  connect(Light_Driver_681.hPin_L, cable_light_681.pin_p);
  connect(Light_681.p, Light_Driver_681.pin_p);
  connect(Light_681.n, GndDC.p);
  connect(Light_Driver_681.hPin_N, GndAC.pin);
  connect(Light_Driver_681.pin_n, GndDC.p);
  connect(cable_light_681.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_681.y, Light_681.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_681.u);
/* Light Connections 680 */
  connect(Light_Driver_680.hPin_L, cable_light_680.pin_p);
  connect(Light_680.p, Light_Driver_680.pin_p);
  connect(Light_680.n, GndDC.p);
  connect(Light_Driver_680.hPin_N, GndAC.pin);
  connect(Light_Driver_680.pin_n, GndDC.p);
  connect(cable_light_680.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_680.y, Light_680.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_680.u);
/* Light Connections 679 */
  connect(Light_Driver_679.hPin_L, cable_light_679.pin_p);
  connect(Light_679.p, Light_Driver_679.pin_p);
  connect(Light_679.n, GndDC.p);
  connect(Light_Driver_679.hPin_N, GndAC.pin);
  connect(Light_Driver_679.pin_n, GndDC.p);
  connect(cable_light_679.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_679.y, Light_679.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_679.u);
/* Light Connections 678 */
  connect(Light_Driver_678.hPin_L, cable_light_678.pin_p);
  connect(Light_678.p, Light_Driver_678.pin_p);
  connect(Light_678.n, GndDC.p);
  connect(Light_Driver_678.hPin_N, GndAC.pin);
  connect(Light_Driver_678.pin_n, GndDC.p);
  connect(cable_light_678.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_678.y, Light_678.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_678.u);
/* Light Connections 677 */
  connect(Light_Driver_677.hPin_L, cable_light_677.pin_p);
  connect(Light_677.p, Light_Driver_677.pin_p);
  connect(Light_677.n, GndDC.p);
  connect(Light_Driver_677.hPin_N, GndAC.pin);
  connect(Light_Driver_677.pin_n, GndDC.p);
  connect(cable_light_677.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_677.y, Light_677.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_677.u);
/* Light Connections 676 */
  connect(Light_Driver_676.hPin_L, cable_light_676.pin_p);
  connect(Light_676.p, Light_Driver_676.pin_p);
  connect(Light_676.n, GndDC.p);
  connect(Light_Driver_676.hPin_N, GndAC.pin);
  connect(Light_Driver_676.pin_n, GndDC.p);
  connect(cable_light_676.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_676.y, Light_676.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_676.u);
/* Light Connections 675 */
  connect(Light_Driver_675.hPin_L, cable_light_675.pin_p);
  connect(Light_675.p, Light_Driver_675.pin_p);
  connect(Light_675.n, GndDC.p);
  connect(Light_Driver_675.hPin_N, GndAC.pin);
  connect(Light_Driver_675.pin_n, GndDC.p);
  connect(cable_light_675.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_675.y, Light_675.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_675.u);
/* Light Connections 671 */
  connect(Light_Driver_671.hPin_L, cable_light_671.pin_p);
  connect(Light_671.p, Light_Driver_671.pin_p);
  connect(Light_671.n, GndDC.p);
  connect(Light_Driver_671.hPin_N, GndAC.pin);
  connect(Light_Driver_671.pin_n, GndDC.p);
  connect(cable_light_671.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_671.y, Light_671.u);
  connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_671.u);
/* Light Connections 658 */
  connect(Light_Driver_658.hPin_L, cable_light_658.pin_p);
  connect(Light_658.p, Light_Driver_658.pin_p);
  connect(Light_658.n, GndDC.p);
  connect(Light_Driver_658.hPin_N, GndAC.pin);
  connect(Light_Driver_658.pin_n, GndDC.p);
  connect(cable_light_658.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_658.y, Light_658.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_658.u);
/* Light Connections 657 */
  connect(Light_Driver_657.hPin_L, cable_light_657.pin_p);
  connect(Light_657.p, Light_Driver_657.pin_p);
  connect(Light_657.n, GndDC.p);
  connect(Light_Driver_657.hPin_N, GndAC.pin);
  connect(Light_Driver_657.pin_n, GndDC.p);
  connect(cable_light_657.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_657.y, Light_657.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_657.u);
/* Light Connections 656 */
  connect(Light_Driver_656.hPin_L, cable_light_656.pin_p);
  connect(Light_656.p, Light_Driver_656.pin_p);
  connect(Light_656.n, GndDC.p);
  connect(Light_Driver_656.hPin_N, GndAC.pin);
  connect(Light_Driver_656.pin_n, GndDC.p);
  connect(cable_light_656.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_656.y, Light_656.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_656.u);
/* Light Connections 655 */
  connect(Light_Driver_655.hPin_L, cable_light_655.pin_p);
  connect(Light_655.p, Light_Driver_655.pin_p);
  connect(Light_655.n, GndDC.p);
  connect(Light_Driver_655.hPin_N, GndAC.pin);
  connect(Light_Driver_655.pin_n, GndDC.p);
  connect(cable_light_655.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_655.y, Light_655.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_655.u);
/* Light Connections 654 */
  connect(Light_Driver_654.hPin_L, cable_light_654.pin_p);
  connect(Light_654.p, Light_Driver_654.pin_p);
  connect(Light_654.n, GndDC.p);
  connect(Light_Driver_654.hPin_N, GndAC.pin);
  connect(Light_Driver_654.pin_n, GndDC.p);
  connect(cable_light_654.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_654.y, Light_654.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_654.u);
/* Light Connections 653 */
  connect(Light_Driver_653.hPin_L, cable_light_653.pin_p);
  connect(Light_653.p, Light_Driver_653.pin_p);
  connect(Light_653.n, GndDC.p);
  connect(Light_Driver_653.hPin_N, GndAC.pin);
  connect(Light_Driver_653.pin_n, GndDC.p);
  connect(cable_light_653.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_653.y, Light_653.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_653.u);
/* Light Connections 652 */
  connect(Light_Driver_652.hPin_L, cable_light_652.pin_p);
  connect(Light_652.p, Light_Driver_652.pin_p);
  connect(Light_652.n, GndDC.p);
  connect(Light_Driver_652.hPin_N, GndAC.pin);
  connect(Light_Driver_652.pin_n, GndDC.p);
  connect(cable_light_652.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_652.y, Light_652.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_652.u);
/* Light Connections 651 */
  connect(Light_Driver_651.hPin_L, cable_light_651.pin_p);
  connect(Light_651.p, Light_Driver_651.pin_p);
  connect(Light_651.n, GndDC.p);
  connect(Light_Driver_651.hPin_N, GndAC.pin);
  connect(Light_Driver_651.pin_n, GndDC.p);
  connect(cable_light_651.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_651.y, Light_651.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_651.u);
/* Light Connections 650 */
  connect(Light_Driver_650.hPin_L, cable_light_650.pin_p);
  connect(Light_650.p, Light_Driver_650.pin_p);
  connect(Light_650.n, GndDC.p);
  connect(Light_Driver_650.hPin_N, GndAC.pin);
  connect(Light_Driver_650.pin_n, GndDC.p);
  connect(cable_light_650.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_650.y, Light_650.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_650.u);
/* Light Connections 649 */
  connect(Light_Driver_649.hPin_L, cable_light_649.pin_p);
  connect(Light_649.p, Light_Driver_649.pin_p);
  connect(Light_649.n, GndDC.p);
  connect(Light_Driver_649.hPin_N, GndAC.pin);
  connect(Light_Driver_649.pin_n, GndDC.p);
  connect(cable_light_649.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_649.y, Light_649.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_649.u);
/* Light Connections 648 */
  connect(Light_Driver_648.hPin_L, cable_light_648.pin_p);
  connect(Light_648.p, Light_Driver_648.pin_p);
  connect(Light_648.n, GndDC.p);
  connect(Light_Driver_648.hPin_N, GndAC.pin);
  connect(Light_Driver_648.pin_n, GndDC.p);
  connect(cable_light_648.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_648.y, Light_648.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_648.u);
/* Light Connections 647 */
  connect(Light_Driver_647.hPin_L, cable_light_647.pin_p);
  connect(Light_647.p, Light_Driver_647.pin_p);
  connect(Light_647.n, GndDC.p);
  connect(Light_Driver_647.hPin_N, GndAC.pin);
  connect(Light_Driver_647.pin_n, GndDC.p);
  connect(cable_light_647.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_647.y, Light_647.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_647.u);
/* Light Connections 639 */
  connect(Light_Driver_639.hPin_L, cable_light_639.pin_p);
  connect(Light_639.p, Light_Driver_639.pin_p);
  connect(Light_639.n, GndDC.p);
  connect(Light_Driver_639.hPin_N, GndAC.pin);
  connect(Light_Driver_639.pin_n, GndDC.p);
  connect(cable_light_639.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_639.y, Light_639.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_639.u);
/* Light Connections 577 */
  connect(Light_Driver_577.hPin_L, cable_light_577.pin_p);
  connect(Light_577.p, Light_Driver_577.pin_p);
  connect(Light_577.n, GndDC.p);
  connect(Light_Driver_577.hPin_N, GndAC.pin);
  connect(Light_Driver_577.pin_n, GndDC.p);
  connect(cable_light_577.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_577.y, Light_577.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_577.u);
/* Light Connections 576 */
  connect(Light_Driver_576.hPin_L, cable_light_576.pin_p);
  connect(Light_576.p, Light_Driver_576.pin_p);
  connect(Light_576.n, GndDC.p);
  connect(Light_Driver_576.hPin_N, GndAC.pin);
  connect(Light_Driver_576.pin_n, GndDC.p);
  connect(cable_light_576.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_576.y, Light_576.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_576.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_2A;
