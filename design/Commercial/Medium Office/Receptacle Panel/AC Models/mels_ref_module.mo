within ;
model mels_ref_module
  outer parameter Real PF;
  outer parameter Real PF1;
  /* parameter Real PF = 0.9; */

  outer HPF.SystemDef systemDef;
  Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
    Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  HPF.SinglePhase.Components.Ground GndAC annotation (
    Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
  HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
    Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
  HPF.Cables.NEC_CableModel cable_mels_L1_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_3,
      length=15)
    annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_IT_Equipment(
    tableOnFile=true,
    tableName="L1-All-ITEquipment",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Laptop(
    tableOnFile=true,
    tableName="L1-All-Laptops",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_MFD(
    tableOnFile=true,
    tableName="L1-All-MFDs",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Monitor(
    tableOnFile=true,
    tableName="L1-All-Monitors",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Printer(
    tableOnFile=true,
    tableName="L1-All-Printers",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
  HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
    P_nom=2205,
    Q_nom=1068,
    V_nom=120) annotation (Placement(visible=true, transformation(
        origin={-4,12},
        extent={{-8,-8},{8,8}},
        rotation=90)));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Display(
    tableOnFile=true,
    tableName="L1-All-TVs",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
  Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
    annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_All_Plugs_General(
    tableOnFile=true,
    tableName="L1-All-Plugs-General",
    fileName=ModelicaServices.ExternalReferences.loadResource(
        "modelica://HPF/Data/load_profiles/San-Diego-L1_MELs_LP.txt"),
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
    timeScale(displayUnit="h") = 3600)
    annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

  Modelica.Blocks.Math.Gain gain_gen_plugs_L1_A(k=2204.25)
    annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
  Modelica.Blocks.Math.Gain gain1(k=PF1)
    annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

/* Insert models here */










equation
  connect(cable_mels_L1_A.pin_n, pin_p)
    annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
  connect(cable_mels_L1_A.pin_p, other_general_plug.hPin_L)
    annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
  connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
          44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
  connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
          23},{-8,23},{-8,12.16}},        color={85,170,255}));
  connect(combiTimeTable_L1_All_Plugs_General.y[1], gain_gen_plugs_L1_A.u)
    annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
  connect(gain_gen_plugs_L1_A.y, realToComplex.re) annotation (Line(points={{-53.4,
          50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
  connect(gain1.y, realToComplex.im)
    annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
  connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
          {-62,36},{-35,36},{-35,26}}, color={0,0,127}));


/* Insert equation here */






  annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
end mels_ref_module;
