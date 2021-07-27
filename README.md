Prototype Building Electrical Models
====================================

The **Prototype Building Electrical Models** are detailed electrical distribution system models designed to accompany the [Prototype Building Models] maintained by the U.S. Department of Energy (DOE)) [Building Energy Codes Program]. The electrical distribution models are implemented using [BEEAM], a [Modelica] library that simulates the performance of building electrical distribution systems using harmonic power flow.

At present, the models in this repository are experimental and cover only a very limited subset of the available prototype building models. They should not be considered an official supplement or extension to the prototype building models.

[Building Energy Codes Program]: https://www.energycodes.gov/ "Building Energy Codes Program"
[Prototype Building Models]: https://www.energycodes.gov/prototype-building-models "Prototype Building Models"
[BEEAM]: https://github.com/NREL/BEEAM/ "Building Electrical Efficiency Analysis Model"
[Modelica]: https://www.modelica.org/ "Modelica"

Description
-----------

The prototype building electrical models are intended to support simulation-based research of building electrical distribution system efficiency and harmonic performance; comparison of alternating current (AC) and direct current (DC) electrical system designs; and grid-interactive, efficient buildings (GEBs). Each model consists of a realistic electrical distribution system design implemented in Modelica, including distribution equipment (*e.g.* transformers, cables), power electronics converters (including load-packaged converters), local photovoltaic (PV) generation (if applicable) and individual loads. At present, the models focus on granular representation of lighting and miscellaneous electrical loads (MELs).

Each represented commercial prototype building has multiple corresponding distribution models reflecting combinations of the distribution topologies and installed PV generation scenarios outlined below.

***TO DO:** Add publication citation here when it is done.*

### Distribution Topologies ###

The following distribution topologies are represented:

- Conventional AC distribution: representative of typical design practice
- Local DC distribution: low-voltage lighting and MELs served by common AC/DC converters (*e.g.* PoE switches or 24V multichannel converters)
- Central DC distribution: central 380 V DC backbone with low-voltage lighting and MELs served by step-down DC/DC converters

***TO DO:** Add graphics and more description?*

### PV Generation ###

The following PV generation scenarios are represented:

- No PV generation
- Maximum rooftop PV generation: roof-mounted PV system designed to maximize production within the available roof area
- Zero energy PV generation: roof- or ground-mounted PV system designed to satisfy the DOE [zero energy building] definition

PV system performance is modeled using the PVWatts engine distributed with the [System Advisor Model]. Source energy calculations for the zero energy building definition use the site to source conversion factors implemented by [EnergyPlus] in the associated prototype building model, as reported in the *Annual Building Utility Performance Summary* report from EnergyPlus that accompanies each model.

[zero energy building]: https://www.energy.gov/eere/buildings/downloads/common-definition-zero-energy-buildings "A Common Definition for Zero Energy Buildings "
[System Advisor Model]: https://sam.nrel.gov/ "System Advisor Model"
[EnergyPlus]: https://energyplus.net/ "EnergyPlus"

Organization
------------

### Directory Structure ###

- `models`: Modelica distribution system models
- `design`: Design documentation and other supporting files; used to create the Modelica models
- `scripts`: Model generation scripts
- `weather`: Weather files (from [here](https://www.energycodes.gov/prototype-building-models); included for convenience)

The `models` and `design` directories have parallel subdirectory structures organized by *Building Category* > *Building Type* > *Code* > *Climate Zone*.

License
-------

These models are not yet publicly released under an open source license; this repository is for internal development only.

***TO DO:** Public release and update with license at time of publication.*