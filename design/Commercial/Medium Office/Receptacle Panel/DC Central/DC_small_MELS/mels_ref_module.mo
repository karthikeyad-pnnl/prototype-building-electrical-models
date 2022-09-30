within ;
model mels_ref_module
  outer parameter Real PF;
  outer parameter Real PF1;
  /* parameter Real PF = 0.9; */

  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));

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
  parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_DCDC(V = 48, alpha = 14.2661328, beta = -0.004643965, gamma = 0.0000295798);

/* Insert models here */










  Modelica.Electrical.Analog.Interfaces.PositivePin p
    "Positive electrical pin of port 1" annotation (Placement(transformation(
          extent={{-114,-36},{-94,-16}}),
                                        iconTransformation(extent={{-110,90},{-90,
            110}})));
  HPF.Cables.NEC_CableModelDC cable_mels_L1_A(wireGaugeDC=HPF.Types.WireGaugeDC.gauge_12,
      length=15) annotation (Placement(visible=true, transformation(
        origin={-50,-22},
        extent={{10,-10},{-10,10}},
        rotation=0)));
equation


/* Insert equation here */






  connect(cable_mels_L1_A.n, p) annotation (Line(points={{-60,-22},{-68,-22},{
          -68,-24},{-104,-24},{-104,-26}}, color={0,0,255}));
  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end mels_ref_module;
