# Verification data

These files contain compact results from the final extracted-layout verification on 8 October 2026. They accompany [Verification](../verification.md); earlier common-mode and mismatch studies are described there and are not mixed into these tables.

| File | Contents |
| --- | --- |
| [core-cases.csv](core-cases.csv) | All 42 reduced-RC core operating points and loop metrics |
| [interface-cases.csv](interface-cases.csv) | Four fresh external-interface reruns |
| [dynamic-cases.csv](dynamic-cases.csv) | Two startups, three input steps and two load applications |
| [nominal-bias.json](nominal-bias.json) | Mapped nominal local bias voltages and recovered terminal currents |
| [verification-summary.json](verification-summary.json) | Nominal full-RC result, extrema, design/extraction hashes and data provenance |
| [waveforms](waveforms) | Selected lossless loop and transient source samples |

The documented GDS SHA256 is `51fc3c35decbf8409eec6f5720971efe651120b82ab5025a5dba9840b7bcdddc`. Source identifiers in the JSON are relative to the archived evidence bundle. No machine-specific library paths or credentials are needed to read these data.

The nominal-bias record identifies source files relative to the bundle root, and the waveform manifest identifies sources relative to its `verification/` directory. Device currents recovered from DC routing-resistor balance are labeled as terminal currents; they are not new simulations or an independent statistical characterization.

## Columns and units

Core and interface CSV columns include supply/command/output voltages in V, temperature in °C, load capacitance in pF, and supply/reference currents in µA. `load_demand_mA > 0` means the amplifier supplies current; a negative value means it sinks current. `signed_error_mV` is output minus command; `absolute_error_mV` is its magnitude. Margins are in degrees and dB, and unity frequency is in Hz. `closed_peak_dB` is the maximum sampled closed-loop magnitude in dB; a slightly negative value means the sampled magnitude never exceeds unity.

The dynamic table keeps the metric names of the source report. `Iload` and `Iload_A` are load demand in A, `step_V` is the input step in V, `ramp_us`/`duration_us`/`settling_1pct_us` are in µs, and errors/excursions ending in `mV` are in mV. Fields not applicable to a case are empty. The startup IREF bounds refer to the late 260–310 µs window; they are not a PVT current range.

All seven dynamic decks use a 20 pF output load. The archived startup scalar records omit `CL_pF`; a blank in those rows does not mean zero load.

Loop waveforms contain `frequency_Hz,real_T,imag_T`. Calculate magnitude as `20*log10(abs(real_T+j*imag_T))` and unwrap phase continuously. The published plot uses the reduced nominal TT loop. The full nominal loop is also retained for reduction comparison, along with the worst core PM/GM loops and all four interface loops.

Startup CSVs contain time, supply, output and reference current. Follower-step CSVs contain time, input, output and supply-source current. Load-step CSVs contain time, output and supply-source current. Times are in seconds and currents in amperes. Ngspice's `supply_source_current_A` is negative for current drawn by the circuit; positive supply draw is its negation. The load stimulus is defined by the case name/report and is not an extra measured waveform column.

## Preservation

Waveform decimal strings are copied without rounding or downsampling; only headers and delimiters are changed. Summary numeric values retain their original precision. The JSON records both the original evidence-file SHA256 and the published-file SHA256. Its image records identify the unmodified verified plots and layout views used in the documentation.

Full RC circuits, operating-point dumps, test decks, model-selection records and logs remain in the local `Routing-Cleanup-20261008/verified-layout-final.zip` archive. The compact publication data preserve the results and plotted samples; they are not a standalone executable extracted-circuit regression package. Reproducing the analog suite requires the matching extraction and simulation environment, as described in [Working with the sources](../tools.md).
