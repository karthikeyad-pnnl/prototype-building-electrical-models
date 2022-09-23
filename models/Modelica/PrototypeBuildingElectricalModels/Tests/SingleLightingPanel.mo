within PrototypeBuildingElectricalModels.Tests;

model SingleLightingPanel
  PrototypeBuildingElectricalModels.Subsystems.LightingPanels.Light_Panel_L1_1A light_Panel_L1_1A annotation(
    Placement(visible = true, transformation(origin = {42, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  HPF.SinglePhase.Sources.VoltageSource Va(vArg = {0, 0}, vMag = {120, 1})  annotation(
    Placement(visible = true, transformation(origin = {-40, 18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  HPF.SinglePhase.Components.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-40, -20}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  inner HPF.SystemDef systemDef(hrms = {1, 3})  annotation(
    Placement(visible = true, transformation(origin = {-76, 86}, extent = {{-14, -14}, {14, 10}}, rotation = 0)));
equation
  connect(Va.pin_n, ground.pin) annotation(
    Line(points = {{-40, 8}, {-40, -12}}, color = {117, 80, 123}));
  connect(Va.pin_p, light_Panel_L1_1A.pin_p) annotation(
    Line(points = {{-40, 28}, {-40, 42}, {32, 42}}, color = {92, 53, 102}));

annotation(
    uses(HPF(version = "0.1.0-beta")),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", nls = "newton", s = "dassl"),
  experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-4, Interval = 900));
end SingleLightingPanel;
