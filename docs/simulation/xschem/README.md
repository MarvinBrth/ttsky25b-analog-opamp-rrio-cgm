# Chapter 5 testbenches

These are the editable Xschem sources for Figures 13–16 of the electrical report. Add the repository's `xschem` directory to `XSCHEM_LIBRARY_PATH`, and set `SKYWATER_MODELS` to your SKY130A `libs.tech/ngspice` directory before netlisting. The local OpAmp symbol has the same pins and SPICE format as the production symbol; only its displayed name wraps onto two lines.

- `bench-follower.sch`: direct feedback, signal AC, 20 pF load. For a transient test, replace VIN with the waveform stated in the report.
- `bench-open.sch`: DC feedback through 10^12 H, AC grounding through 1 F.
- `bench-loop.sch`: sequential voltage and current injections for the loop measurement. The return-ratio calculation is described in the report and implemented in the portable simulation decks.
- `bench-commonmode.sch`: behavioral level shift to hold OUT near mid-supply while sweeping input common mode.

These files show the schematic DUT. The portable decks in `../cases` contain the schematic/extracted comparisons, saved measurements and additional sweep conditions.
