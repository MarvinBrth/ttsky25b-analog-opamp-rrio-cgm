v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {3.3-V open-loop AC; DC unity-feedback servo; CL = 5 pF} -450 -460 0 0 0.28 0.28 {}
C {devices/code.sym} -450 -370 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=x1}
C {devices/lab_pin.sym} 20 -90 0 0 {name=pnew52 lab=VAPWR}
C {devices/lab_pin.sym} 20 90 0 0 {name=pnew53 lab=GND}
C {devices/lab_pin.sym} -80 30 0 0 {name=pnew54 lab=vin}
C {devices/lab_pin.sym} -80 -30 0 0 {name=pnew55 lab=vminus}
C {devices/lab_pin.sym} 140 0 0 0 {name=pnew56 lab=out}
C {devices/vsource.sym} -450 -190 0 0 {name=VDD value="3.3"}
C {devices/lab_pin.sym} -450 -220 0 0 {name=pnew57 lab=VAPWR}
C {devices/gnd.sym} -450 -160 0 0 {name=gVDD lab=GND}
C {devices/vsource.sym} -250 100 0 0 {name=VIN value="1.65 AC 1"}
C {devices/lab_pin.sym} -250 70 0 0 {name=pnew58 lab=vin}
C {devices/gnd.sym} -250 130 0 0 {name=gVIN lab=GND}
C {devices/ind.sym} -40 -200 1 0 {name=LFB value=1e12 m=1}
C {devices/lab_pin.sym} -70 -200 0 0 {name=pnew59 lab=vminus}
C {devices/lab_pin.sym} -10 -200 0 0 {name=pnew60 lab=out}
C {devices/capa.sym} -160 -100 0 0 {name=CIN value=1e12 m=1}
C {devices/lab_pin.sym} -160 -130 0 0 {name=pnew61 lab=vminus}
C {devices/lab_pin.sym} -160 -70 0 0 {name=pnew62 lab=GND}
C {devices/capa.sym} 250 70 0 0 {name=CL value=5p m=1}
C {devices/lab_pin.sym} 250 40 0 0 {name=pnew63 lab=out}
C {devices/lab_pin.sym} 250 100 0 0 {name=pnew64 lab=GND}
B 2 780 -450 1540 -120 {flags=graph
y1=-40 y2=110 x1=0 x2=9
divy=5 divx=5 subdivy=1 subdivx=1
node="\\"AOL_dB; out db20()\\"" color="7 4 6 5 8" dataset=-1
logx=1 logy=0 sim_type=ac rawfile=$netlist_dir/testbench_ac_3v3.raw}
B 2 780 -90 1540 240 {flags=graph
y1=-360 y2=0 x1=0 x2=9
divy=5 divx=5 subdivy=1 subdivx=1
node="\\"Phase_cont; phase_deg ph(phase_deg) re()\\"" color="7 4 6 5 8" dataset=-1
logx=1 logy=0 sim_type=ac rawfile=$netlist_dir/testbench_ac_3v3.raw}
C {devices/code_shown.sym} -450 280 0 0 {name=COMMANDS only_toplevel=true value=".options klu itl1=100 reltol=0.0001
* Physical starting guess only; final voltage comes from the actual resistor divider.
.nodeset v(x1.bias)=1.65
.control
set wr_singlescale
set wr_vecnames
op

* Reject roots outside the SKY130 HV gate-voltage range.
let physical_bias_peak = vecmax(abs(v(x1.bias)))
if physical_bias_peak > 5.5
echo PHYSICAL_BIAS_ERROR: invalid PDK operating point
quit 1
end
print v(VAPWR) v(vin) v(out) i(VDD)
wrdata testbench_ac_3v3_op.dat v(VAPWR) v(vin) v(vminus) v(out) i(VDD)
ac dec 80 1 1e9
let gain_db=db(v(out))
let phase_deg=57.29577951308232*cph(v(out))
write testbench_ac_3v3.raw v(out) gain_db phase_deg
wrdata testbench_ac_3v3.dat real(v(out)) imag(v(out))
.endc"}
C {devices/launcher.sym} 360 240 0 0 {name=LOAD descr="Load waves" tclcommand="xschem raw_read $netlist_dir/testbench_ac_3v3.raw ac"}
T {Gain [dB]; frequency [Hz], logarithmic} 800 -475 0 0 0.23 0.23 {}
T {Phase [degrees]; frequency [Hz], logarithmic} 800 -115 0 0 0.23 0.23 {}
N 20 -90 20 -60 {lab=VAPWR}
N 20 60 20 90 {lab=GND}
