# How it works

Self-biased 3.3 V rail-to-rail class-AB OpAmp based on Huijsing Fig. 7.7.6, implemented in SKY130 with a 5 µA reference and Miller compensation. It occupies 1x2 tiles.

| Pin | Function |
| --- | --- |
| `ua[0]` | IN+, non-inverting input |
| `ua[1]` | IN−, inverting input |
| `ua[2]` | OUT |

VAPWR supplies the amplifier at 3.3 V; VDPWR is the separate 1.8 V shuttle supply. VGND is common ground. Digital pins are unused.

# How to test

Select the project, power both supplies and allow 1 ms to settle. Connect OUT to IN− for a voltage follower. Apply 1.65 V to IN+ and check that OUT follows it. Start sweeps between 0.8 and 2.5 V. Keep output load capacitance at or below 20 pF and source/sink current at or below 1 mA. These limits are simulated; silicon measurements are pending.

# External hardware

Tiny Tapeout analog-capable board, regulated supplies, supply decoupling, adjustable signal source and a low-capacitance probe or voltmeter. No external bias reference is required.
