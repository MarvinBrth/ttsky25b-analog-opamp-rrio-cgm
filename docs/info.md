# How it works

This is a self-biased, rail-to-rail input/output CMOS operational amplifier for a 3.3 V analog supply. It follows the compact GA–CF–GA class-AB architecture in Huijsing, *Operational Amplifiers*, Fig. 7.7.6, adapted to SKY130 `g5v0d10v5` devices. Complementary input pairs cover the common-mode range. A beta-multiplier reference with startup supplies approximately 5 µA; separate current mirrors and replica devices generate the internal biases. The amplifier uses Miller compensation and requires external negative feedback.

The design occupies a 1 × 2 analog tile. KIT and Marvin are drawn in isolated metal4 in a spare area of the layout.

## Connections

| Connection | Function |
| --- | --- |
| `ua[0]` | IN+, non-inverting input |
| `ua[1]` | IN−, inverting input |
| `ua[2]` | OUT, analog output |
| VAPWR | 3.3 V analog supply |
| VDPWR | Separate 1.8 V shuttle supply |
| VGND | Common ground |

Digital inputs, clock and reset are unused. Digital outputs and output enables are tied low. `ena` does not switch off the amplifier's bias; the shuttle's analog switch connects the selected project to the external analog pins.

## Simulated performance

These are simulation results, not measurements or production specifications. Nominal results below use the extracted core at TT, 27 °C, 3.3 V, mid-supply common mode and a 20 pF load. External routing and the shuttle switch add impedance and capacitance.

| Quantity | Nominal result |
| --- | --- |
| Reference current | 4.99 µA |
| Quiescent supply current | 260 µA |
| Open-loop DC gain | 98.9 dB |
| Unity-gain frequency | 3.10 MHz |
| Phase margin | 79.6° |

Post-layout checks cover process corners, supply voltages of 3.0–3.6 V, temperatures from −40 to 125 °C, common-mode sweeps, and source/sink loads up to 1 mA. A conservative interface model uses 500 Ω and 5 pF per analog path, plus a 20 pF external load. At 3.3 V, the checked loaded output range with this interface is 0.8–2.5 V. The unloaded core can approach the rails more closely. “Rail-to-rail” does not imply zero headroom under load.

Across 60 checked interface operating conditions, the minimum simulated phase margin was 60.9°. A 32-sample local mismatch study gave mid-supply offsets from −13.3 to +13.9 mV, with 6.1 mV standard deviation. The largest unloaded error across low, middle and high output levels was 20.1 mV. The PDK mismatch model has incomplete parameter coverage; these samples do not establish manufacturing yield or input matching after spatial layout variation.

Use up to 20 pF external load, including probes and wiring. A 100 pF load is not qualified. Fast load steps can produce several hundred millivolts of transient error. The checked DC load is ±1 mA; the shuttle's pin-current limit is not an amplifier drive-current rating.

![Layout](images/layout.png)

# How to test

1. Supply VAPWR with 3.3 V and VDPWR with its separate 1.8 V supply. Connect the common ground. Decouple the analog supply close to the board, for example with 100 nF and 1 µF.
2. Select the project using the Tiny Tapeout board controls. Allow 1 ms after power-up before measuring.
3. Connect OUT (`ua[2]`) to IN− (`ua[1]`) with a short wire to make a voltage follower.
4. Apply 1.65 V to IN+ (`ua[0]`) from a low-impedance source. Check that OUT follows it. Several millivolts of offset are plausible.
5. Sweep IN+ slowly, starting between 0.8 and 2.5 V. Use a low-capacitance probe and keep the total external output capacitance at or below 20 pF. Do not connect a 50 Ω oscilloscope input directly to OUT.
6. Test source and sink loads separately, up to 1 mA, while remaining within the loaded output range. For AC tests, start with a small signal around 1.65 V and retain the short feedback connection.

Keep all input and output voltages within the analog supply rails. Supply the amplifier before applying an input signal.

# External hardware

A Tiny Tapeout analog-capable board, regulated supplies, a signal generator or adjustable DC source, and a low-capacitance oscilloscope probe or voltmeter are sufficient for initial tests. An optional current load can test output drive. No external bias reference is required.
