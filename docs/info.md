# How it works

This project is a self-biased, 3.3 V CMOS operational amplifier in SKY130. Complementary input stages extend the input common-mode range, and a class-AB output stage supplies or sinks load current. The architecture follows Huijsing, *Operational Amplifiers*, Fig. 7.7.6: the compact rail-to-rail GA-CF-GA arrangement with Miller compensation. Device sizes, bias generation and compensation have been adapted to SKY130.

The amplifier contains its own beta-multiplier reference, startup circuit and bias mirrors. The reference produces approximately 5 µA at nominal conditions. There are no ideal bias sources in the amplifier. The reference and internal bias nodes do not require external connections.

## Connections

| Connection | Function |
| --- | --- |
| `ua[0]` | IN+, non-inverting input |
| `ua[1]` | IN−, inverting input |
| `ua[2]` | OUT, analog output |
| `VAPWR` | 3.3 V analog supply |
| `VDPWR` | Separate 1.8 V shuttle supply |
| `VGND` | Common ground |

The project uses **1x2 tiles and three analog pins**. Its 3.3 V template has a boundary of **145.360 × 225.760 µm**. Digital inputs are unused; digital outputs and bidirectional output enables are tied to ground. `ena` does not switch off the internal bias circuit. Selecting the project connects its analog interface through the shuttle's analog switches.

The pin names above identify the design interface. Use the board's pin mapping to locate the corresponding external connectors.

## Simulated performance

The following values are from the final layout with extracted wire resistance and capacitance. They describe the amplifier core at TT, 27 °C, 3.3 V, a 20 pF output load and no DC load. They are simulation results; silicon measurements are pending.

| Quantity | Nominal result |
| --- | ---: |
| Output for a 1.65 V follower command | 1.649973 V |
| Supply current | 260.342 µA |
| Reference current | 4.985695 µA |
| Low-frequency unity-feedback loop gain | 98.878 dB |
| Unity-loop frequency | 3.1007 MHz |
| Phase margin | 79.555° |
| Gain margin | 9.364 dB |
| 50 mV positive follower step, 1% settling | 0.2512 µs |

The core regression covers 42 combinations of process, temperature, supply and output/load conditions. Its minimum phase margin is 71.525°, minimum gain margin is 6.428 dB, and maximum absolute follower DC error is 1.5833 mV. Four previously limiting external-interface cases were rerun; the lowest phase margin is 60.917°.

![Extracted-layout loop gain, startup and transient responses](images/functional-regression.png)

The step and load-transient panels show the core. The load steps cause substantial temporary errors: approximately 374 mV when applying a 1 mA sourcing demand and 462 mV when applying a 1 mA sinking demand with a 10 ns edge. The output then recovers. A settled DC load capability does not imply negligible error during a fast load change.

## Operating envelope

Use **3.3 V nominal**, with input and output voltages within the supply rails. The verification includes selected 3.0 V and 3.6 V PVT cases, rather than a guarantee over every supply/temperature combination.

For initial board measurements, use a follower command between **0.8 and 2.5 V**, keep total external output capacitance within a **20 pF budget**, and limit DC source/sink demand to **1 mA**. The final extracted regression uses 20 pF; it is not a continuous qualification of every smaller capacitance. The command range provides allowance for output headroom and the shuttle's series resistance under load. With negligible load, the core has also been checked at 0.1 V and VAPWR−0.1 V at the regression points.

“Rail-to-rail” describes the architecture. The output does not reach the rails while delivering arbitrary current. The shuttle analog path adds resistance and capacitance, which affect swing, bandwidth and stability. Its 4 mA interface limit is not an amplifier drive-current specification. A 100 pF load has not been qualified.

Engineering details, full sizing and the scope of each test are provided in [Circuit and layout](design.md), [Verification](verification.md) and [Working with the sources](tools.md).

# How to test

## First power-up

1. Configure the board for this project and its three analog connections. Use the board's documented selection procedure.
2. Provide the 1.8 V shuttle supply and 3.3 V analog supply with a common ground. Add local supply decoupling. Start with no DC output load and a low-capacitance measuring instrument.
3. Connect OUT (`ua[2]`) to IN− (`ua[1]`) at the external connectors to make a voltage follower.
4. Apply 1.65 V to IN+ (`ua[0]`). Allow 1 ms before taking the first reading. This is a convenient measurement delay, not a measured startup-time specification.
5. Confirm that OUT is close to 1.65 V and that the supply current is plausible. The simulated 260 µA value is for the amplifier core; a board supply reading can include other circuitry.
6. Sweep the command slowly from 0.8 to 2.5 V. Record output error and supply current. Expect fabrication offset to exceed the nominal simulated offset.

Do not start with an open-loop output measurement: even a small differential input or offset can drive the amplifier into a rail. Keep the feedback connection short and include probe/cable capacitance in the 20 pF budget.

## Load and transient measurements

Measure the unloaded follower first. Then apply small source and sink loads, increasing gradually toward 1 mA. An electronic load or a resistor to ground tests sourcing; a controlled load connected toward the analog supply tests sinking. Account for load variation with output voltage when using resistors.

For a signal-step test, begin with a 50 mV step around 1.65 V. Record the actual input waveform, overshoot, final error and settling time. The published settling figure uses a 1% band around the settled response and a fast simulated edge; instrument bandwidth and a slower source edge change the result.

For frequency response, use a small sine wave around mid-supply in closed loop. Check several DC load conditions. A closed-loop frequency sweep is useful for measuring peaking and bandwidth, but it is not itself a direct measurement of open-loop phase margin.

Use a low-capacitance probe or buffer. A typical long cable, passive probe and added capacitor can exceed the checked load. Start from the verified load and increase only while observing ringing and supply current.

## Measurements to record

Record supply voltages, temperature, feedback configuration, external load, probe capacitance and the board connector mapping with every measurement. Useful first results are follower offset, supply current, loaded output swing, small-signal bandwidth and step response. Input common-mode range should be measured separately with the output held away from its rails; sweeping a follower combines input and output limitations.

# External hardware

An analog-capable Tiny Tapeout board with the appropriate chip, regulated 1.8 V and 3.3 V supplies, decoupling, an adjustable DC/signal source, a voltmeter and a low-capacitance oscilloscope probe are sufficient for initial tests. Add controlled loads and a frequency-response instrument for further characterization. No external bias reference or clock is needed.

The interface and template follow the [Tiny Tapeout analog specifications](https://tinytapeout.com/specs/analog/).
