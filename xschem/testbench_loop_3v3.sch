v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {3.3 V, TT 27 C, CL=20 pF, 1 mA sink demand: two-injection return ratio} -500 -360 0 0 .28 .28 {}
T {VJ: voltage injection; IT: current injection. Both are zero at DC.} -500 -325 0 0 .23 .23 {}
C {devices/code.sym} -650 -280 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=x1}
N 20 -60 20 -90 {lab=VAPWR}
C {devices/lab_pin.sym} 20 -90 0 0 {name=VP lab=VAPWR}
N 20 60 20 90 {lab=GND}
C {devices/gnd.sym} 20 90 0 0 {name=GG lab=GND}
C {devices/vsource.sym} -450 -160 0 0 {name=VDD value=3.3}
C {devices/lab_pin.sym} -450 -190 0 0 {name=VPS lab=VAPWR}
C {devices/gnd.sym} -450 -130 0 0 {name=GD lab=GND}
C {devices/vsource.sym} -300 70 0 0 {name=VIN value="1.65 AC 0"}
N -300 40 -300 30 {lab=vin}
N -300 30 -80 30 {lab=vin}
C {devices/lab_pin.sym} -220 30 0 0 {name=VI lab=vin}
C {devices/gnd.sym} -300 100 0 0 {name=GI lab=GND}
N -80 -30 -130 -30 {lab=vminus}
N -130 -30 -130 -160 {lab=vminus}
N -130 -160 -80 -160 {lab=vminus}
C {devices/vsource.sym} -50 -160 3 0 {name=VJ value="0 AC 1"}
C {devices/lab_pin.sym} -130 -100 0 0 {name=VM lab=vminus}
N -20 -160 180 -160 {lab=out}
N 180 -160 180 0 {lab=out}
N 140 0 650 0 {lab=out}
C {devices/lab_pin.sym} 650 0 0 1 {name=OUT lab=out}
N 250 0 250 40 {lab=out}
C {devices/isource.sym} 250 70 0 0 {name=ILOAD value=-1m}
C {devices/gnd.sym} 250 100 0 0 {name=GL lab=GND}
N 450 0 450 40 {lab=out}
C {devices/isource.sym} 450 70 2 0 {name=IT value="0 AC 0"}
C {devices/gnd.sym} 450 100 0 0 {name=GT lab=GND}
N 650 0 650 140 {lab=out}
C {devices/capa.sym} 650 170 0 0 {name=CL value=20p m=1}
C {devices/gnd.sym} 650 200 0 0 {name=GC lab=GND}
B 2 800 -340 1560 -10 {flags=graph
y1=-40 y2=110 x1=0 x2=9 divy=5 divx=5 subdivy=1 subdivx=1
node="\\"Loop_dB; true_loop db20()\\"" color="7 4 6" dataset=-1
logx=1 logy=0 sim_type=ac rawfile=$netlist_dir/testbench_loop_3v3.raw}
B 2 800 30 1560 360 {flags=graph
y1=-360 y2=0 x1=0 x2=9 divy=6 divx=5 subdivy=1 subdivx=1
node="\\"Loop_phase; phase_deg ph(phase_deg) re()\\"" color="7 4 6" dataset=-1
logx=1 logy=0 sim_type=ac rawfile=$netlist_dir/testbench_loop_3v3.raw}
T {Return ratio [dB]; frequency [Hz]} 820 -370 0 0 .23 .23 {}
T {Continuous loop phase [degrees]; frequency [Hz]} 820 0 0 0 .23 .23 {}
C {devices/launcher.sym} 530 250 0 0 {name=LOAD descr="Load loop waves" tclcommand="xschem raw_read $netlist_dir/testbench_loop_3v3.raw ac"}
C {devices/code_shown.sym} -500 300 0 0 {name=COMMANDS only_toplevel=true value=".options klu itl1=100 reltol=.0001
* Physical starting guess only; final voltage comes from the actual resistor divider.
.nodeset v(x1.bias)=1.65
.control
set numdgt=15
set wr_singlescale
set wr_vecnames
op

* Reject roots outside the SKY130 HV gate-voltage range.
let physical_bias_peak = vecmax(abs(v(x1.bias)))
if physical_bias_peak > 5.5
echo PHYSICAL_BIAS_ERROR: invalid PDK operating point
quit 1
end
wrdata testbench_loop_3v3_op.dat v(VAPWR) v(vin) v(out) i(VDD)
ac dec 80 1 1e9
let vv=v(out)
let iv=i(VJ)
wrdata testbench_loop_3v3_voltage.dat real(v(out)) imag(v(out)) real(i(VJ)) imag(i(VJ))
alter @VJ[acmag] = 0
alter @IT[acmag] = 1
ac dec 80 1 1e9
wrdata testbench_loop_3v3_current.dat real(v(out)) imag(v(out)) real(i(VJ)) imag(i(VJ))
let k=2*(ac1.iv*v(out)-i(VJ)*ac1.vv)-i(VJ)-ac1.vv
let true_loop=k/(1-k)
let phase_deg=57.29577951308232*cph(true_loop)
write testbench_loop_3v3.raw true_loop phase_deg
wrdata testbench_loop_3v3.dat real(true_loop) imag(true_loop)
.endc"}
