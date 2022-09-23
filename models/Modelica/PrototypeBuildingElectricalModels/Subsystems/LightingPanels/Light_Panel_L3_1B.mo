within PrototypeBuildingElectricalModels.Subsystems.LightingPanels;
model Light_Panel_L3_1B
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
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
    tableOnFile=true,
    tableName="L3-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
    tableOnFile=true,
    tableName="L3-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
    tableOnFile=true,
    tableName="L3-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
    tableOnFile=true,
    tableName="L3-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */

  
/* Light Model 817 */
  HPF.DC.Variable_DC_Load Light_817;
  HPF.Cables.NEC_CableModel cable_light_817(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=24.12);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_817(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_817(k=31);
  
/* Light Model 816 */
  HPF.DC.Variable_DC_Load Light_816;
  HPF.Cables.NEC_CableModel cable_light_816(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=25.41);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_816(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_816(k=31);
  
/* Light Model 815 */
  HPF.DC.Variable_DC_Load Light_815;
  HPF.Cables.NEC_CableModel cable_light_815(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=26.72);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_815(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_815(k=31);
  
/* Light Model 814 */
  HPF.DC.Variable_DC_Load Light_814;
  HPF.Cables.NEC_CableModel cable_light_814(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.08);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_814(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_814(k=31);
  
/* Light Model 813 */
  HPF.DC.Variable_DC_Load Light_813;
  HPF.Cables.NEC_CableModel cable_light_813(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_813(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_813(k=31);
  
/* Light Model 812 */
  HPF.DC.Variable_DC_Load Light_812;
  HPF.Cables.NEC_CableModel cable_light_812(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_812(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_812(k=31);
  
/* Light Model 811 */
  HPF.DC.Variable_DC_Load Light_811;
  HPF.Cables.NEC_CableModel cable_light_811(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.97);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_811(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_811(k=31);
  
/* Light Model 810 */
  HPF.DC.Variable_DC_Load Light_810;
  HPF.Cables.NEC_CableModel cable_light_810(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=22.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_810(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_810(k=31);
  
/* Light Model 809 */
  HPF.DC.Variable_DC_Load Light_809;
  HPF.Cables.NEC_CableModel cable_light_809(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=23.92);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_809(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_809(k=31);
  
/* Light Model 808 */
  HPF.DC.Variable_DC_Load Light_808;
  HPF.Cables.NEC_CableModel cable_light_808(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.82);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_808(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_808(k=31);
  
/* Light Model 807 */
  HPF.DC.Variable_DC_Load Light_807;
  HPF.Cables.NEC_CableModel cable_light_807(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.33);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_807(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_807(k=31);
  
/* Light Model 806 */
  HPF.DC.Variable_DC_Load Light_806;
  HPF.Cables.NEC_CableModel cable_light_806(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.85);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_806(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_806(k=31);
  
/* Light Model 793 */
  HPF.DC.Variable_DC_Load Light_793;
  HPF.Cables.NEC_CableModel cable_light_793(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=6.06);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_793(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_793(k=34);
  
/* Light Model 645 */
  HPF.DC.Variable_DC_Load Light_645;
  HPF.Cables.NEC_CableModel cable_light_645(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=4.38);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_645(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_645(k=35);
  
/* Light Model 617 */
  HPF.DC.Variable_DC_Load Light_617;
  HPF.Cables.NEC_CableModel cable_light_617(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.19);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_617(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_617(k=31);
  
/* Light Model 616 */
  HPF.DC.Variable_DC_Load Light_616;
  HPF.Cables.NEC_CableModel cable_light_616(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.21);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_616(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_616(k=31);
  
/* Light Model 615 */
  HPF.DC.Variable_DC_Load Light_615;
  HPF.Cables.NEC_CableModel cable_light_615(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=19.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_615(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_615(k=31);
  
/* Light Model 614 */
  HPF.DC.Variable_DC_Load Light_614;
  HPF.Cables.NEC_CableModel cable_light_614(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=20.44);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_614(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_614(k=31);
  
/* Light Model 613 */
  HPF.DC.Variable_DC_Load Light_613;
  HPF.Cables.NEC_CableModel cable_light_613(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.63);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_613(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_613(k=31);
  
/* Light Model 612 */
  HPF.DC.Variable_DC_Load Light_612;
  HPF.Cables.NEC_CableModel cable_light_612(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.65);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_612(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_612(k=31);
  
/* Light Model 611 */
  HPF.DC.Variable_DC_Load Light_611;
  HPF.Cables.NEC_CableModel cable_light_611(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.75);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_611(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_611(k=31);
  
/* Light Model 610 */
  HPF.DC.Variable_DC_Load Light_610;
  HPF.Cables.NEC_CableModel cable_light_610(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.93);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_610(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_610(k=31);
  
/* Light Model 609 */
  HPF.DC.Variable_DC_Load Light_609;
  HPF.Cables.NEC_CableModel cable_light_609(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.16);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_609(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_609(k=31);
  
/* Light Model 608 */
  HPF.DC.Variable_DC_Load Light_608;
  HPF.Cables.NEC_CableModel cable_light_608(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.43);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_608(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_608(k=31);
  
/* Light Model 607 */
  HPF.DC.Variable_DC_Load Light_607;
  HPF.Cables.NEC_CableModel cable_light_607(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_607(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_607(k=31);
  
/* Light Model 606 */
  HPF.DC.Variable_DC_Load Light_606;
  HPF.Cables.NEC_CableModel cable_light_606(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_606(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_606(k=31);
  
/* Light Model 605 */
  HPF.DC.Variable_DC_Load Light_605;
  HPF.Cables.NEC_CableModel cable_light_605(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.18);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_605(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_605(k=31);
  
/* Light Model 604 */
  HPF.DC.Variable_DC_Load Light_604;
  HPF.Cables.NEC_CableModel cable_light_604(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_604(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_604(k=31);
  
/* Light Model 603 */
  HPF.DC.Variable_DC_Load Light_603;
  HPF.Cables.NEC_CableModel cable_light_603(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=18.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_603(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_603(k=31);
  
/* Light Model 602 */
  HPF.DC.Variable_DC_Load Light_602;
  HPF.Cables.NEC_CableModel cable_light_602(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=9.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_602(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_602(k=31);
  
/* Light Model 601 */
  HPF.DC.Variable_DC_Load Light_601;
  HPF.Cables.NEC_CableModel cable_light_601(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_601(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_601(k=31);
  
/* Light Model 600 */
  HPF.DC.Variable_DC_Load Light_600;
  HPF.Cables.NEC_CableModel cable_light_600(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.79);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_600(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_600(k=31);
  
/* Light Model 599 */
  HPF.DC.Variable_DC_Load Light_599;
  HPF.Cables.NEC_CableModel cable_light_599(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.29);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_599(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_599(k=31);
  
/* Light Model 598 */
  HPF.DC.Variable_DC_Load Light_598;
  HPF.Cables.NEC_CableModel cable_light_598(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_598(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_598(k=31);
  
/* Light Model 597 */
  HPF.DC.Variable_DC_Load Light_597;
  HPF.Cables.NEC_CableModel cable_light_597(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_597(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_597(k=31);
  
/* Light Model 596 */
  HPF.DC.Variable_DC_Load Light_596;
  HPF.Cables.NEC_CableModel cable_light_596(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_596(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_596(k=31);
  
/* Light Model 595 */
  HPF.DC.Variable_DC_Load Light_595;
  HPF.Cables.NEC_CableModel cable_light_595(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=14.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_595(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_595(k=31);
  
/* Light Model 594 */
  HPF.DC.Variable_DC_Load Light_594;
  HPF.Cables.NEC_CableModel cable_light_594(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.81);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_594(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_594(k=31);
  
/* Light Model 593 */
  HPF.DC.Variable_DC_Load Light_593;
  HPF.Cables.NEC_CableModel cable_light_593(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.32);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_593(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_593(k=31);
  
/* Light Model 592 */
  HPF.DC.Variable_DC_Load Light_592;
  HPF.Cables.NEC_CableModel cable_light_592(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=11.05);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_592(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_592(k=31);
  
/* Light Model 591 */
  HPF.DC.Variable_DC_Load Light_591;
  HPF.Cables.NEC_CableModel cable_light_591(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=12.39);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_591(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_591(k=31);
  
/* Light Model 590 */
  HPF.DC.Variable_DC_Load Light_590;
  HPF.Cables.NEC_CableModel cable_light_590(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.77);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_590(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_590(k=31);
  
/* Light Model 589 */
  HPF.DC.Variable_DC_Load Light_589;
  HPF.Cables.NEC_CableModel cable_light_589(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=15.17);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_589(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_589(k=31);
  
/* Light Model 588 */
  HPF.DC.Variable_DC_Load Light_588;
  HPF.Cables.NEC_CableModel cable_light_588(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=16.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_588(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_588(k=31);
  
/* Light Model 575 */
  HPF.DC.Variable_DC_Load Light_575;
  HPF.Cables.NEC_CableModel cable_light_575(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=21.8);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_575(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_575(k=21);
  
/* Light Model 574 */
  HPF.DC.Variable_DC_Load Light_574;
  HPF.Cables.NEC_CableModel cable_light_574(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=17.6);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_574(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_574(k=21);
  
/* Light Model 573 */
  HPF.DC.Variable_DC_Load Light_573;
  HPF.Cables.NEC_CableModel cable_light_573(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=13.66);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_573(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_573(k=21);
  
/* Light Model 572 */
  HPF.DC.Variable_DC_Load Light_572;
  HPF.Cables.NEC_CableModel cable_light_572(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=10.3);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_572(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_572(k=21);
  
/* Light Model 571 */
  HPF.DC.Variable_DC_Load Light_571;
  HPF.Cables.NEC_CableModel cable_light_571(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.27);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_571(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_571(k=21);
  
/* Light Model 570 */
  HPF.DC.Variable_DC_Load Light_570;
  HPF.Cables.NEC_CableModel cable_light_570(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_14, length=8.55);
  HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_570(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
  Modelica.Blocks.Math.Gain Gain_Light_driver_570(k=21);









equation
  connect(cable_Light_lvl1_ckt1_A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */


/* Light Connections 817 */
  connect(Light_Driver_817.hPin_L, cable_light_817.pin_p);
  connect(Light_817.p, Light_Driver_817.pin_p);
  connect(Light_817.n, GndDC.p);
  connect(Light_Driver_817.hPin_N, GndAC.pin);
  connect(Light_Driver_817.pin_n, GndDC.p);
  connect(cable_light_817.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_817.y, Light_817.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_817.u);
/* Light Connections 816 */
  connect(Light_Driver_816.hPin_L, cable_light_816.pin_p);
  connect(Light_816.p, Light_Driver_816.pin_p);
  connect(Light_816.n, GndDC.p);
  connect(Light_Driver_816.hPin_N, GndAC.pin);
  connect(Light_Driver_816.pin_n, GndDC.p);
  connect(cable_light_816.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_816.y, Light_816.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_816.u);
/* Light Connections 815 */
  connect(Light_Driver_815.hPin_L, cable_light_815.pin_p);
  connect(Light_815.p, Light_Driver_815.pin_p);
  connect(Light_815.n, GndDC.p);
  connect(Light_Driver_815.hPin_N, GndAC.pin);
  connect(Light_Driver_815.pin_n, GndDC.p);
  connect(cable_light_815.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_815.y, Light_815.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_815.u);
/* Light Connections 814 */
  connect(Light_Driver_814.hPin_L, cable_light_814.pin_p);
  connect(Light_814.p, Light_Driver_814.pin_p);
  connect(Light_814.n, GndDC.p);
  connect(Light_Driver_814.hPin_N, GndAC.pin);
  connect(Light_Driver_814.pin_n, GndDC.p);
  connect(cable_light_814.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_814.y, Light_814.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_814.u);
/* Light Connections 813 */
  connect(Light_Driver_813.hPin_L, cable_light_813.pin_p);
  connect(Light_813.p, Light_Driver_813.pin_p);
  connect(Light_813.n, GndDC.p);
  connect(Light_Driver_813.hPin_N, GndAC.pin);
  connect(Light_Driver_813.pin_n, GndDC.p);
  connect(cable_light_813.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_813.y, Light_813.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_813.u);
/* Light Connections 812 */
  connect(Light_Driver_812.hPin_L, cable_light_812.pin_p);
  connect(Light_812.p, Light_Driver_812.pin_p);
  connect(Light_812.n, GndDC.p);
  connect(Light_Driver_812.hPin_N, GndAC.pin);
  connect(Light_Driver_812.pin_n, GndDC.p);
  connect(cable_light_812.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_812.y, Light_812.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_812.u);
/* Light Connections 811 */
  connect(Light_Driver_811.hPin_L, cable_light_811.pin_p);
  connect(Light_811.p, Light_Driver_811.pin_p);
  connect(Light_811.n, GndDC.p);
  connect(Light_Driver_811.hPin_N, GndAC.pin);
  connect(Light_Driver_811.pin_n, GndDC.p);
  connect(cable_light_811.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_811.y, Light_811.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_811.u);
/* Light Connections 810 */
  connect(Light_Driver_810.hPin_L, cable_light_810.pin_p);
  connect(Light_810.p, Light_Driver_810.pin_p);
  connect(Light_810.n, GndDC.p);
  connect(Light_Driver_810.hPin_N, GndAC.pin);
  connect(Light_Driver_810.pin_n, GndDC.p);
  connect(cable_light_810.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_810.y, Light_810.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_810.u);
/* Light Connections 809 */
  connect(Light_Driver_809.hPin_L, cable_light_809.pin_p);
  connect(Light_809.p, Light_Driver_809.pin_p);
  connect(Light_809.n, GndDC.p);
  connect(Light_Driver_809.hPin_N, GndAC.pin);
  connect(Light_Driver_809.pin_n, GndDC.p);
  connect(cable_light_809.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_809.y, Light_809.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_809.u);
/* Light Connections 808 */
  connect(Light_Driver_808.hPin_L, cable_light_808.pin_p);
  connect(Light_808.p, Light_Driver_808.pin_p);
  connect(Light_808.n, GndDC.p);
  connect(Light_Driver_808.hPin_N, GndAC.pin);
  connect(Light_Driver_808.pin_n, GndDC.p);
  connect(cable_light_808.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_808.y, Light_808.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_808.u);
/* Light Connections 807 */
  connect(Light_Driver_807.hPin_L, cable_light_807.pin_p);
  connect(Light_807.p, Light_Driver_807.pin_p);
  connect(Light_807.n, GndDC.p);
  connect(Light_Driver_807.hPin_N, GndAC.pin);
  connect(Light_Driver_807.pin_n, GndDC.p);
  connect(cable_light_807.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_807.y, Light_807.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_807.u);
/* Light Connections 806 */
  connect(Light_Driver_806.hPin_L, cable_light_806.pin_p);
  connect(Light_806.p, Light_Driver_806.pin_p);
  connect(Light_806.n, GndDC.p);
  connect(Light_Driver_806.hPin_N, GndAC.pin);
  connect(Light_Driver_806.pin_n, GndDC.p);
  connect(cable_light_806.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_806.y, Light_806.u);
  connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_806.u);
/* Light Connections 793 */
  connect(Light_Driver_793.hPin_L, cable_light_793.pin_p);
  connect(Light_793.p, Light_Driver_793.pin_p);
  connect(Light_793.n, GndDC.p);
  connect(Light_Driver_793.hPin_N, GndAC.pin);
  connect(Light_Driver_793.pin_n, GndDC.p);
  connect(cable_light_793.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_793.y, Light_793.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_793.u);
/* Light Connections 645 */
  connect(Light_Driver_645.hPin_L, cable_light_645.pin_p);
  connect(Light_645.p, Light_Driver_645.pin_p);
  connect(Light_645.n, GndDC.p);
  connect(Light_Driver_645.hPin_N, GndAC.pin);
  connect(Light_Driver_645.pin_n, GndDC.p);
  connect(cable_light_645.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_645.y, Light_645.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_645.u);
/* Light Connections 617 */
  connect(Light_Driver_617.hPin_L, cable_light_617.pin_p);
  connect(Light_617.p, Light_Driver_617.pin_p);
  connect(Light_617.n, GndDC.p);
  connect(Light_Driver_617.hPin_N, GndAC.pin);
  connect(Light_Driver_617.pin_n, GndDC.p);
  connect(cable_light_617.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_617.y, Light_617.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_617.u);
/* Light Connections 616 */
  connect(Light_Driver_616.hPin_L, cable_light_616.pin_p);
  connect(Light_616.p, Light_Driver_616.pin_p);
  connect(Light_616.n, GndDC.p);
  connect(Light_Driver_616.hPin_N, GndAC.pin);
  connect(Light_Driver_616.pin_n, GndDC.p);
  connect(cable_light_616.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_616.y, Light_616.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_616.u);
/* Light Connections 615 */
  connect(Light_Driver_615.hPin_L, cable_light_615.pin_p);
  connect(Light_615.p, Light_Driver_615.pin_p);
  connect(Light_615.n, GndDC.p);
  connect(Light_Driver_615.hPin_N, GndAC.pin);
  connect(Light_Driver_615.pin_n, GndDC.p);
  connect(cable_light_615.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_615.y, Light_615.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_615.u);
/* Light Connections 614 */
  connect(Light_Driver_614.hPin_L, cable_light_614.pin_p);
  connect(Light_614.p, Light_Driver_614.pin_p);
  connect(Light_614.n, GndDC.p);
  connect(Light_Driver_614.hPin_N, GndAC.pin);
  connect(Light_Driver_614.pin_n, GndDC.p);
  connect(cable_light_614.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_614.y, Light_614.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_614.u);
/* Light Connections 613 */
  connect(Light_Driver_613.hPin_L, cable_light_613.pin_p);
  connect(Light_613.p, Light_Driver_613.pin_p);
  connect(Light_613.n, GndDC.p);
  connect(Light_Driver_613.hPin_N, GndAC.pin);
  connect(Light_Driver_613.pin_n, GndDC.p);
  connect(cable_light_613.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_613.y, Light_613.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_613.u);
/* Light Connections 612 */
  connect(Light_Driver_612.hPin_L, cable_light_612.pin_p);
  connect(Light_612.p, Light_Driver_612.pin_p);
  connect(Light_612.n, GndDC.p);
  connect(Light_Driver_612.hPin_N, GndAC.pin);
  connect(Light_Driver_612.pin_n, GndDC.p);
  connect(cable_light_612.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_612.y, Light_612.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_612.u);
/* Light Connections 611 */
  connect(Light_Driver_611.hPin_L, cable_light_611.pin_p);
  connect(Light_611.p, Light_Driver_611.pin_p);
  connect(Light_611.n, GndDC.p);
  connect(Light_Driver_611.hPin_N, GndAC.pin);
  connect(Light_Driver_611.pin_n, GndDC.p);
  connect(cable_light_611.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_611.y, Light_611.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_611.u);
/* Light Connections 610 */
  connect(Light_Driver_610.hPin_L, cable_light_610.pin_p);
  connect(Light_610.p, Light_Driver_610.pin_p);
  connect(Light_610.n, GndDC.p);
  connect(Light_Driver_610.hPin_N, GndAC.pin);
  connect(Light_Driver_610.pin_n, GndDC.p);
  connect(cable_light_610.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_610.y, Light_610.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_610.u);
/* Light Connections 609 */
  connect(Light_Driver_609.hPin_L, cable_light_609.pin_p);
  connect(Light_609.p, Light_Driver_609.pin_p);
  connect(Light_609.n, GndDC.p);
  connect(Light_Driver_609.hPin_N, GndAC.pin);
  connect(Light_Driver_609.pin_n, GndDC.p);
  connect(cable_light_609.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_609.y, Light_609.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_609.u);
/* Light Connections 608 */
  connect(Light_Driver_608.hPin_L, cable_light_608.pin_p);
  connect(Light_608.p, Light_Driver_608.pin_p);
  connect(Light_608.n, GndDC.p);
  connect(Light_Driver_608.hPin_N, GndAC.pin);
  connect(Light_Driver_608.pin_n, GndDC.p);
  connect(cable_light_608.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_608.y, Light_608.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_608.u);
/* Light Connections 607 */
  connect(Light_Driver_607.hPin_L, cable_light_607.pin_p);
  connect(Light_607.p, Light_Driver_607.pin_p);
  connect(Light_607.n, GndDC.p);
  connect(Light_Driver_607.hPin_N, GndAC.pin);
  connect(Light_Driver_607.pin_n, GndDC.p);
  connect(cable_light_607.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_607.y, Light_607.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_607.u);
/* Light Connections 606 */
  connect(Light_Driver_606.hPin_L, cable_light_606.pin_p);
  connect(Light_606.p, Light_Driver_606.pin_p);
  connect(Light_606.n, GndDC.p);
  connect(Light_Driver_606.hPin_N, GndAC.pin);
  connect(Light_Driver_606.pin_n, GndDC.p);
  connect(cable_light_606.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_606.y, Light_606.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_606.u);
/* Light Connections 605 */
  connect(Light_Driver_605.hPin_L, cable_light_605.pin_p);
  connect(Light_605.p, Light_Driver_605.pin_p);
  connect(Light_605.n, GndDC.p);
  connect(Light_Driver_605.hPin_N, GndAC.pin);
  connect(Light_Driver_605.pin_n, GndDC.p);
  connect(cable_light_605.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_605.y, Light_605.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_605.u);
/* Light Connections 604 */
  connect(Light_Driver_604.hPin_L, cable_light_604.pin_p);
  connect(Light_604.p, Light_Driver_604.pin_p);
  connect(Light_604.n, GndDC.p);
  connect(Light_Driver_604.hPin_N, GndAC.pin);
  connect(Light_Driver_604.pin_n, GndDC.p);
  connect(cable_light_604.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_604.y, Light_604.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_604.u);
/* Light Connections 603 */
  connect(Light_Driver_603.hPin_L, cable_light_603.pin_p);
  connect(Light_603.p, Light_Driver_603.pin_p);
  connect(Light_603.n, GndDC.p);
  connect(Light_Driver_603.hPin_N, GndAC.pin);
  connect(Light_Driver_603.pin_n, GndDC.p);
  connect(cable_light_603.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_603.y, Light_603.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_603.u);
/* Light Connections 602 */
  connect(Light_Driver_602.hPin_L, cable_light_602.pin_p);
  connect(Light_602.p, Light_Driver_602.pin_p);
  connect(Light_602.n, GndDC.p);
  connect(Light_Driver_602.hPin_N, GndAC.pin);
  connect(Light_Driver_602.pin_n, GndDC.p);
  connect(cable_light_602.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_602.y, Light_602.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_602.u);
/* Light Connections 601 */
  connect(Light_Driver_601.hPin_L, cable_light_601.pin_p);
  connect(Light_601.p, Light_Driver_601.pin_p);
  connect(Light_601.n, GndDC.p);
  connect(Light_Driver_601.hPin_N, GndAC.pin);
  connect(Light_Driver_601.pin_n, GndDC.p);
  connect(cable_light_601.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_601.y, Light_601.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_601.u);
/* Light Connections 600 */
  connect(Light_Driver_600.hPin_L, cable_light_600.pin_p);
  connect(Light_600.p, Light_Driver_600.pin_p);
  connect(Light_600.n, GndDC.p);
  connect(Light_Driver_600.hPin_N, GndAC.pin);
  connect(Light_Driver_600.pin_n, GndDC.p);
  connect(cable_light_600.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_600.y, Light_600.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_600.u);
/* Light Connections 599 */
  connect(Light_Driver_599.hPin_L, cable_light_599.pin_p);
  connect(Light_599.p, Light_Driver_599.pin_p);
  connect(Light_599.n, GndDC.p);
  connect(Light_Driver_599.hPin_N, GndAC.pin);
  connect(Light_Driver_599.pin_n, GndDC.p);
  connect(cable_light_599.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_599.y, Light_599.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_599.u);
/* Light Connections 598 */
  connect(Light_Driver_598.hPin_L, cable_light_598.pin_p);
  connect(Light_598.p, Light_Driver_598.pin_p);
  connect(Light_598.n, GndDC.p);
  connect(Light_Driver_598.hPin_N, GndAC.pin);
  connect(Light_Driver_598.pin_n, GndDC.p);
  connect(cable_light_598.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_598.y, Light_598.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_598.u);
/* Light Connections 597 */
  connect(Light_Driver_597.hPin_L, cable_light_597.pin_p);
  connect(Light_597.p, Light_Driver_597.pin_p);
  connect(Light_597.n, GndDC.p);
  connect(Light_Driver_597.hPin_N, GndAC.pin);
  connect(Light_Driver_597.pin_n, GndDC.p);
  connect(cable_light_597.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_597.y, Light_597.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_597.u);
/* Light Connections 596 */
  connect(Light_Driver_596.hPin_L, cable_light_596.pin_p);
  connect(Light_596.p, Light_Driver_596.pin_p);
  connect(Light_596.n, GndDC.p);
  connect(Light_Driver_596.hPin_N, GndAC.pin);
  connect(Light_Driver_596.pin_n, GndDC.p);
  connect(cable_light_596.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_596.y, Light_596.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_596.u);
/* Light Connections 595 */
  connect(Light_Driver_595.hPin_L, cable_light_595.pin_p);
  connect(Light_595.p, Light_Driver_595.pin_p);
  connect(Light_595.n, GndDC.p);
  connect(Light_Driver_595.hPin_N, GndAC.pin);
  connect(Light_Driver_595.pin_n, GndDC.p);
  connect(cable_light_595.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_595.y, Light_595.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_595.u);
/* Light Connections 594 */
  connect(Light_Driver_594.hPin_L, cable_light_594.pin_p);
  connect(Light_594.p, Light_Driver_594.pin_p);
  connect(Light_594.n, GndDC.p);
  connect(Light_Driver_594.hPin_N, GndAC.pin);
  connect(Light_Driver_594.pin_n, GndDC.p);
  connect(cable_light_594.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_594.y, Light_594.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_594.u);
/* Light Connections 593 */
  connect(Light_Driver_593.hPin_L, cable_light_593.pin_p);
  connect(Light_593.p, Light_Driver_593.pin_p);
  connect(Light_593.n, GndDC.p);
  connect(Light_Driver_593.hPin_N, GndAC.pin);
  connect(Light_Driver_593.pin_n, GndDC.p);
  connect(cable_light_593.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_593.y, Light_593.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_593.u);
/* Light Connections 592 */
  connect(Light_Driver_592.hPin_L, cable_light_592.pin_p);
  connect(Light_592.p, Light_Driver_592.pin_p);
  connect(Light_592.n, GndDC.p);
  connect(Light_Driver_592.hPin_N, GndAC.pin);
  connect(Light_Driver_592.pin_n, GndDC.p);
  connect(cable_light_592.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_592.y, Light_592.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_592.u);
/* Light Connections 591 */
  connect(Light_Driver_591.hPin_L, cable_light_591.pin_p);
  connect(Light_591.p, Light_Driver_591.pin_p);
  connect(Light_591.n, GndDC.p);
  connect(Light_Driver_591.hPin_N, GndAC.pin);
  connect(Light_Driver_591.pin_n, GndDC.p);
  connect(cable_light_591.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_591.y, Light_591.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_591.u);
/* Light Connections 590 */
  connect(Light_Driver_590.hPin_L, cable_light_590.pin_p);
  connect(Light_590.p, Light_Driver_590.pin_p);
  connect(Light_590.n, GndDC.p);
  connect(Light_Driver_590.hPin_N, GndAC.pin);
  connect(Light_Driver_590.pin_n, GndDC.p);
  connect(cable_light_590.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_590.y, Light_590.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_590.u);
/* Light Connections 589 */
  connect(Light_Driver_589.hPin_L, cable_light_589.pin_p);
  connect(Light_589.p, Light_Driver_589.pin_p);
  connect(Light_589.n, GndDC.p);
  connect(Light_Driver_589.hPin_N, GndAC.pin);
  connect(Light_Driver_589.pin_n, GndDC.p);
  connect(cable_light_589.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_589.y, Light_589.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_589.u);
/* Light Connections 588 */
  connect(Light_Driver_588.hPin_L, cable_light_588.pin_p);
  connect(Light_588.p, Light_Driver_588.pin_p);
  connect(Light_588.n, GndDC.p);
  connect(Light_Driver_588.hPin_N, GndAC.pin);
  connect(Light_Driver_588.pin_n, GndDC.p);
  connect(cable_light_588.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_588.y, Light_588.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_588.u);
/* Light Connections 575 */
  connect(Light_Driver_575.hPin_L, cable_light_575.pin_p);
  connect(Light_575.p, Light_Driver_575.pin_p);
  connect(Light_575.n, GndDC.p);
  connect(Light_Driver_575.hPin_N, GndAC.pin);
  connect(Light_Driver_575.pin_n, GndDC.p);
  connect(cable_light_575.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_575.y, Light_575.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_575.u);
/* Light Connections 574 */
  connect(Light_Driver_574.hPin_L, cable_light_574.pin_p);
  connect(Light_574.p, Light_Driver_574.pin_p);
  connect(Light_574.n, GndDC.p);
  connect(Light_Driver_574.hPin_N, GndAC.pin);
  connect(Light_Driver_574.pin_n, GndDC.p);
  connect(cable_light_574.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_574.y, Light_574.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_574.u);
/* Light Connections 573 */
  connect(Light_Driver_573.hPin_L, cable_light_573.pin_p);
  connect(Light_573.p, Light_Driver_573.pin_p);
  connect(Light_573.n, GndDC.p);
  connect(Light_Driver_573.hPin_N, GndAC.pin);
  connect(Light_Driver_573.pin_n, GndDC.p);
  connect(cable_light_573.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_573.y, Light_573.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_573.u);
/* Light Connections 572 */
  connect(Light_Driver_572.hPin_L, cable_light_572.pin_p);
  connect(Light_572.p, Light_Driver_572.pin_p);
  connect(Light_572.n, GndDC.p);
  connect(Light_Driver_572.hPin_N, GndAC.pin);
  connect(Light_Driver_572.pin_n, GndDC.p);
  connect(cable_light_572.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_572.y, Light_572.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_572.u);
/* Light Connections 571 */
  connect(Light_Driver_571.hPin_L, cable_light_571.pin_p);
  connect(Light_571.p, Light_Driver_571.pin_p);
  connect(Light_571.n, GndDC.p);
  connect(Light_Driver_571.hPin_N, GndAC.pin);
  connect(Light_Driver_571.pin_n, GndDC.p);
  connect(cable_light_571.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_571.y, Light_571.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_571.u);
/* Light Connections 570 */
  connect(Light_Driver_570.hPin_L, cable_light_570.pin_p);
  connect(Light_570.p, Light_Driver_570.pin_p);
  connect(Light_570.n, GndDC.p);
  connect(Light_Driver_570.hPin_N, GndAC.pin);
  connect(Light_Driver_570.pin_n, GndDC.p);
  connect(cable_light_570.pin_n, cable_Light_lvl1_ckt1_A.pin_p);
  connect(Gain_Light_driver_570.y, Light_570.u);
  connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_570.u);











  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end Light_Panel_L3_1B;
