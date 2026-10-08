# SKY130 rail-to-rail op amp

A self-biased 3.3 V class-AB operational amplifier based on Huijsing Fig. 7.7.6. The SKY130 implementation uses a 5 µA reference, complementary input pairs and Miller compensation in a 1 × 2 Tiny Tapeout analog tile.

The three analog pins are `ua[0]` (IN+), `ua[1]` (IN−) and `ua[2]` (OUT). For a voltage follower, connect OUT to IN− and apply the signal to IN+. Use the separate 3.3 V analog and 1.8 V shuttle supplies.

See the [project documentation](docs/info.md) for simulated performance, load limits and the test procedure. The checked external capacitive load is 20 pF; 100 pF is not qualified. Silicon measurements are pending.

The submission includes GDS and LEF files, the Verilog interface, Xschem schematics and Magic layout sources. The layout contains KIT and Marvin artwork in metal4.

The current schematic is [opamp-rrio-cgm-3v3.sch](xschem/opamp-rrio-cgm-3v3.sch); the current layout is [tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag](mag/tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag). Set `PDK_ROOT` to your installed SKY130 PDK before opening the sources. The older 1.8 V schematics and simulations are retained for reference.

The [routing verification report](docs/routing_cleanup.md) records the checks for the current layout.
