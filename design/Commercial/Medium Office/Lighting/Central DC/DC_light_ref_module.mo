within ;
model DC_light_ref_module
  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
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

  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_30(V = 19.5, alpha = 0.26452, beta = 0.12526, gamma = 0.0020109);
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_45(V = 19.5, alpha = 0.42081, beta = 0.12526, gamma = 0.001341);
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_DCDC(V = 48, alpha = 4.27984, beta = -0.004643965, gamma = 0.0000985992);

/* Insert models here */










  Modelica.Electrical.Analog.Interfaces.PositivePin p
    "Positive electrical pin of port 1" annotation (Placement(transformation(
          extent={{-114,10},{-94,30}}), iconTransformation(extent={{-110,90},{-90,
            110}})));
  HPF.Cables.NEC_CableModelDC cable_light_L1_1A(wireGaugeDC=HPF.Types.WireGaugeDC.gauge_12,
      length=15) annotation (Placement(visible=true, transformation(
        origin={-38,20},
        extent={{10,-10},{-10,10}},
        rotation=0)));
equation

/* Insert equation here */













  connect(cable_light_L1_1A.n, p)
    annotation (Line(points={{-48,20},{-104,20}}, color={0,0,255}));
  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end DC_light_ref_module;
