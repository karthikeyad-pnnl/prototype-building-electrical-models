within ;
model mels_ref_module
  outer parameter Real PF;
  outer parameter Real PF1;
  /* parameter Real PF = 0.9; */

  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_IT_Equipment(
    tableOnFile=true,
    tableName="L1-All-ITEquipment",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_MFD(
    tableOnFile=true,
    tableName="L1-All-MFDs",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Printer(
    tableOnFile=true,
    tableName="L1-All-Printers",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Display(
    tableOnFile=true,
    tableName="L1-All-TVs",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
 parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_display(V = 48, alpha = 4.62836768, beta = 0.025225007, gamma = 0.00145528);
 parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_ite(V = 48, alpha = 1.7735384, beta = 0.002302422, gamma = 0.000167704);
 parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_mfd(V = 48, alpha = 6.883545915, beta = 0.002302422, gamma = 0.0000432087);
 parameter HPF.Data.ConverterModels.DC2DC_StepDown.ModelData modelData_printer(V = 48, alpha = 9.699038125, beta = 0.002302422, gamma = 0.0000306658);


/* Insert models here */










  Modelica.Electrical.Analog.Interfaces.PositivePin p
    "Positive electrical pin of port 1" annotation (Placement(transformation(
          extent={{-114,-10},{-94,10}}),iconTransformation(extent={{-110,90},{-90,
            110}})));
  HPF.Cables.NEC_CableModelDC cable_mels_L1_A(wireGaugeDC=HPF.Types.WireGaugeDC.gauge_12,
      length=15) annotation (Placement(visible=true, transformation(
        origin={-48,2},
        extent={{10,-10},{-10,10}},
        rotation=0)));
equation


/* Insert equation here */






  connect(cable_mels_L1_A.n, p) annotation (Line(points={{-58,2},{-74,2},{-74,0},
          {-104,0}}, color={0,0,255}));
  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end mels_ref_module;
