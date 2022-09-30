within ;
model light_ref_module
  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  HPF.SinglePhase.Components.Ground GndAC annotation (
    Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
  HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
    Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
  HPF.Cables.NEC_CableModel cable_light_L1_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12,
      length=16.1)
    annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
    tableOnFile=true,
    tableName="L3-Core-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
    tableOnFile=true,
    tableName="L3-Zn1-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
    tableOnFile=true,
    tableName="L3-Zn2-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
    tableOnFile=true,
    tableName="L3-Zn3-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
    tableOnFile=true,
    tableName="L3-Zn4-Lights",
    fileName=ModelicaServices.ExternalReferences.loadResource("modelica://HPF/Data/load_profiles/San-Diego-L3_Light_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

/* Insert models here */










equation
  connect(cable_light_L1_1A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
          22},{-54,18},{-68,18}}, color={117,80,123}));

/* Insert equation here */













  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end light_ref_module;
