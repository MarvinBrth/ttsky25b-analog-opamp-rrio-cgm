# SKY130 rail-to-rail op amp

A self-biased 3.3 V class-AB operational amplifier for Tiny Tapeout SKY 26d, based on Huijsing Fig. 7.7.6. The implementation uses a nominal 5 µA beta-multiplier reference, complementary input stages and Miller compensation. It occupies 1x2 tiles and uses three analog pins: IN+, IN− and OUT.

The final extracted-layout nominal result is 98.88 dB low-frequency loop gain, 3.10 MHz unity-loop frequency and 260 µA supply current at 3.3 V, 27 °C, 20 pF and no DC load. The checked load envelope extends to ±1 mA; these are simulation results, with silicon measurements pending.

- [Datasheet, pinout and measurement instructions](docs/info.md)
- [Circuit architecture, bias tree, sizing and layout](docs/design.md)
- [Verification methods, results and remaining characterization](docs/verification.md)
- [Opening, simulating and checking the sources](docs/tools.md)
- [Numeric results and provenance](docs/data/README.md)

The editable sources are the [Xschem schematic](xschem/opamp-rrio-cgm-3v3.sch) and [hierarchical Magic layout](mag/tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag). Set `PDK_ROOT` to your SKY130 PDK installation before opening them. The exported submission files are in [gds](gds) and [lef](lef); the interface is described by [info.yaml](info.yaml) and [project.v](src/project.v).

![Final layout, dimensions in micrometres](docs/images/layout.png)
