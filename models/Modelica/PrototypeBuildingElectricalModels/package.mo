package PrototypeBuildingElectricalModels
  extends Modelica.Icons.Package;
  annotation(
    Documentation(info = "<html><head></head><body>The Prototype Building Electrical Models are detailed electrical distribution system models designed to accompany the <a href=\"https://www.energycodes.gov/prototype-building-models\">Prototype Building Models</a> maintained by the U.S. Department of Energy (DOE) <a href=\"https://www.energycodes.gov/\">Building Energy Codes Program</a>. The electrical distribution models are implemented using <a href=\"https://github.com/NREL/BEEAM/\">BEEAM</a>, a <i>Modelica</i> library that simulates the performance of building electrical distribution systems using harmonic power flow.</body></html>"),
    Diagram,
    Icon,
    version = "0.1-beta",
    uses(Modelica(version = "3.2"), BEEAM(version = "0.1")));
end PrototypeBuildingElectricalModels;
