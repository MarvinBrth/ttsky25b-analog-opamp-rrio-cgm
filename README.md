# SKY130 rail-to-rail op amp

A self-biased 3.3 V class-AB operational amplifier for Tiny Tapeout SKY 26d, based on Huijsing Fig. 7.7.6. It uses a nominal 5 µA beta-multiplier reference, complementary input stages and Miller compensation, with 1x2 tiles and three analog pins: IN+, IN- and OUT.

The nominal extracted-layout result is approximately 98.88 dB loop gain, 3.10 MHz unity-loop frequency and 260 µA supply current at TT, 27 °C, 3.3 V, 20 pF and no DC load. Core DC tests include ±1 mA. These are simulation results; silicon measurements are pending.

The [complete electrical report](docs/opamp-electrical-report.pdf) follows the goals, schematic, layout, reference and bias, then compares schematic and extracted-layout simulations in shared diagrams. It includes supply and temperature sensitivity, DC range, stability, signal/load steps and supply rejection. The same report is available [on this page](docs/info.md).

Editable sources: [Xschem schematic](xschem/opamp-rrio-cgm-3v3.sch) and [Magic layout](mag/tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag). Set `PDK_ROOT` to your SKY130 installation. Submission exports are in [gds](gds) and [lef](lef); [info.yaml](info.yaml) and [project.v](src/project.v) describe the interface.
