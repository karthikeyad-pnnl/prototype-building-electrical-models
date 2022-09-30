within ;
model mels_ref_module
  outer parameter Real PF;
  outer parameter Real PF1;
  /* parameter Real PF = 0.9; */

  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
    Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
  HPF.Cables.NEC_CableModel cable_mels_L1_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_3,
      length=15)
    annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Laptop(
    tableOnFile=true,
    tableName="L1-All-Laptops",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Monitor(
    tableOnFile=true,
    tableName="L1-All-Monitors",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_laptop(V = 19.5, alpha = 2.0773, beta = 0.025225, gamma = 0.0032425);
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_monitor(V = 19.5, alpha = 1.67642, beta = 0.025225, gamma = 0.0040178);

/* Insert models here */










  HPF.SinglePhase.Components.Ground GndAC annotation (
    Placement(visible = true, transformation(origin={-46,-84},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
equation
  connect(cable_mels_L1_A.pin_n, pin_p)
    annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));


/* Insert equation here */






  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end mels_ref_module;
