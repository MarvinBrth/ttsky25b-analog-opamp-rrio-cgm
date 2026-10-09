# SKY130 rail-to-rail op amp

A self-biased 3.3 V class-AB op amp based on Huijsing Fig. 7.7.6, built for Tiny Tapeout SKY 26d. It uses a nominal 5 µA beta-multiplier reference, a 1x2 tile and three analog pins: IN+, IN− and OUT.

At TT, 25 °C, 3.3 V and 20 pF, the extracted layout has about 98.94 dB open-loop gain, 3.10 MHz loop unity frequency, 79.55° phase margin and 259 µA idle supply current. DC tests include sourcing and sinking 1 mA. These are simulation results; silicon measurements are pending.

The [electrical report](docs/opamp-electrical-report.pdf) explains the reference sizing, input-current steering, cascode mirrors, class-AB output and real bias tree, then compares schematic and extracted behavior. Testbench drawings, load/supply/temperature sweeps, step responses, process corners and a local-mismatch study show both the strengths and the limits. The same report is available [as a web page](docs/info.md).

View the [layout in 3D](https://marvinbrth.github.io/ttsky26d-analog-opamp-rrio-cgm/).

Editable sources: [Xschem schematic](xschem/opamp-rrio-cgm-3v3.sch) and [Magic layout](mag/tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag). Set `PDK_ROOT` to your SKY130 installation. Submission exports are in [gds](gds) and [lef](lef); [info.yaml](info.yaml) and [project.v](src/project.v) describe the interface. Simulation data and decks are linked from the report.
