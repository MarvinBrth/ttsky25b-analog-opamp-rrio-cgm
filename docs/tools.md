# Working with the sources

## Repository map

| Location | Purpose |
| --- | --- |
| `xschem/opamp-rrio-cgm-3v3.sch` | Current amplifier schematic |
| `xschem/opamp_bias_3v3.sch` | Bias distribution and midpoint divider |
| `xschem/reference_bias_3v3.sch` | Beta-multiplier reference and startup |
| `xschem/*.sym` | Hierarchical and custom device symbols |
| `xschem/testbench_*_3v3.sch` | Current schematic-level diagnostic benches |
| `mag/tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag` | Hierarchical top layout |
| `mag/opamp_core_routed.mag` | Routed amplifier core |
| `mag/marvin_kit_art.mag` | Isolated KIT and Marvin artwork |
| `mag/PORT_*.mag`, `mag/RG_*.mag`, primitive cells | Native layout dependencies and access wrappers |
| `gds/` and `lef/` | Exported shuttle submission artifacts |
| `src/project.v` | Integration wrapper and analog pin mapping |
| `info.yaml` | Shuttle metadata and pin descriptions |
| `docs/info.md` | Project datasheet and measurement instructions |
| `docs/design.md` | Architecture, bias, sizing and physical implementation |
| `docs/verification.md`, `docs/data/` | Verification scope, results and compact evidence |

Obsolete 1.8 V variants and unrelated development schematics are not part of this repository. The checked-in layout cells form the dependency closure of the exported top cell; keep that hierarchy intact when editing.

## Tool environment

Use Linux with Xschem, ngspice, Magic, Netgen and an open_pdks SKY130A installation. The project's Zero-to-ASIC VM supplies this environment. Set `PDK_ROOT` to the directory containing `sky130A`, rather than to the `sky130A` directory itself. The simulation reference used open_pdks revision `bdc9412b3e468c102d01b7cf6337be06ec6e9c9a` and Magic 8.3 revision 473.

Example shell setup, from the repository root:

```sh
export PDK_ROOT=/path/to/pdk
export PDK=sky130A
export XSCHEM_USER_LIBRARY_PATH="$PWD/xschem"
```

Replace the installation path with your own. The checked-in Xschem configuration obtains `SKYWATER_MODELS` from `$PDK_ROOT/sky130A/libs.tech/ngspice`. Magic's `.magicrc` loads the PDK technology from the same root. Keep PDK and tool revisions with new results because extraction and device models can change.

## Open and simulate in Xschem

```sh
cd xschem
xschem opamp-rrio-cgm-3v3.sch
```

Open a testbench, select SPICE netlisting, choose a generated-netlist directory, then netlist and simulate. The benches include `.control` commands that write `.raw` and `.dat` files. Their “Load waves” launchers load the matching `.raw` file from `netlist_dir`.

| Testbench | Default setup | Use |
| --- | --- | --- |
| [Bias](../xschem/testbench_bias_3v3.sch) | 0→3.3 V in 10 µs, UIC, 100 µs run | Reference startup and bias voltages |
| [Transient](../xschem/testbench_tran_3v3.sch) | Follower, 5 pF, supply ramp and input steps | Initial functional/startup diagnostic |
| [AC](../xschem/testbench_ac_3v3.sch) | Midpoint, 5 pF, DC feedback/AC separation | Open-loop gain and phase diagnostic |
| [Loop](../xschem/testbench_loop_3v3.sch) | Midpoint, 20 pF, 1 mA sinking load | Two-injection return ratio |
| [Output DC](../xschem/testbench_output_dc_3v3.sch) | Midpoint follower, load swept −1 to +1 mA | DC load regulation and supply current |
| [Output transient](../xschem/testbench_output_tran_3v3.sch) | Midpoint follower, 20 pF, source/sink load pulses | Output recovery on load application/removal |

The AC/DC-oriented benches contain a physical starting guess for the midpoint bias node. It is a `.nodeset`, not an ideal bias source or a forced final voltage. The startup benches use UIC instead. See [Verification](verification.md) for the difference between these diagnostic tabs and the final extracted-layout qualification.

For batch netlisting and simulation of the loop bench:

```sh
mkdir -p ../work/schematic
xschem -n -s -q -x -r -o ../work/schematic testbench_loop_3v3.sch
cd ../work/schematic
ngspice -b -o loop.log testbench_loop_3v3.spice
```

This follows the [Xschem command-line interface](https://xschem.sourceforge.io/stefan/xschem_man/run_xschem.html). Run ngspice in the generated-netlist directory so that the control block's relative output filenames have a predictable location. Some installations need the SKY130-recommended ngspice compatibility settings; use the PDK's simulation configuration. Read `loop.log` and inspect the DC point before interpreting the plots.

The archived runs used the following `.spiceinit` settings in their dedicated simulation directories, in addition to the deck's KLU option:

```text
set ngbehavior=hsa
set ng_nomodcheck
set num_threads=1
```

These identify the recorded environment. Match them when reproducing that environment, and retain the separate physical operating-point checks; suppressing model-parameter checking is not a substitute for checking valid device voltages.

To reproduce the nominal condition, change the diagnostic load to zero and use 20 pF. This produces a schematic result. Reproducing the published post-layout result also requires the matching extracted RC circuit; substituting the schematic will not reproduce its parasitics.

## Open and check in Magic

From the repository root:

```sh
cd mag
magic -rcfile .magicrc tt_um_marvinbrth_opamp_rrio_cgm_3v3.mag
```

Useful Magic console commands when viewing the top cell, following the official [expand](https://opencircuitdesign.com/magic/commandref/expand.html) and [DRC](https://opencircuitdesign.com/magic/commandref/drc.html) references:

```tcl
expand
view
drc check
drc catchup
drc count total
```

Use hierarchical views to inspect primitive contacts, wells and device fingers. Layer colors depend on the display style; overlapping layers and contacts may appear different from plain metal of the same level. Inspect the actual layer type rather than identifying connectivity by color alone.

Before saving edits, confirm the edit cell and selected hierarchy. Moving paint at the top level does not move paint inside a child cell. A device-access wrapper and its underlying primitive must retain their port connectivity. Keep isolated artwork away from devices and functional conductors.

After a deliberate layout change, save the native cells and rerun full DRC, extraction and LVS. Read the exported GDS back into a separate checking workspace and repeat DRC/LVS there. A zero-error display in a partially checked window does not replace that flow. For a change affecting parasitics, repeat the relevant extracted operating-point, loop and transient tests.

Once checks pass, export from the loaded top cell:

```tcl
gds write ../gds/tt_um_marvinbrth_opamp_rrio_cgm_3v3.gds
lef write ../lef/tt_um_marvinbrth_opamp_rrio_cgm_3v3.lef -pinonly
```

The [Tiny Tapeout analog instructions](https://tinytapeout.com/specs/analog/) require the matching template ports and hierarchical Magic source. The layout uses Metal1 through Metal4; Metal5 is reserved for the shuttle power grid. Do not move template pins or change metadata as part of an ordinary internal routing edit.

## Reviewing a revision

Confirm that the top name matches `info.yaml`, Verilog, GDS and LEF. Keep `tiles: "1x2"`, `analog_pins: 3` and `uses_3v3: true` aligned with the physical template and circuit. Check `ua[0]`→IN+, `ua[1]`→IN− and `ua[2]`→OUT against the wrapper and extracted connectivity. Unused digital outputs and output enables must remain grounded.

For a documentation-only edit, verify the documented GDS/source hashes and inspect the documentation build. For a circuit/layout edit, rerun physical checks and the affected analog qualification before publishing. The `gds` and `docs` GitHub workflows run on pushes; a green GDS workflow checks the shuttle artifact but does not establish analog performance. A GitHub push also does not by itself select a new project revision in the submission portal; see the [Tiny Tapeout submission guide](https://tinytapeout.com/guides/advanced-workshop/submit-your-design/).
