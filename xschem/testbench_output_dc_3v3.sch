v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {3.3-V unity follower output drive; positive ILOAD = source demand} -470 -360 0 0 0.28 0.28 {}
C {devices/code.sym} -470 -330 0 0 {name=TT_MODELS only_toplevel=true format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"}
C {opamp-rrio-cgm-3v3.sym} 0 0 0 0 {name=x1}
C {devices/lab_pin.sym} 20 -90 0 0 {name=vdd_pin lab=VAPWR}
C {devices/lab_pin.sym} 20 90 0 0 {name=gnd_pin lab=GND}
C {devices/vsource.sym} -430 -160 0 0 {name=VDD value=3.3}
C {devices/lab_pin.sym} -430 -190 0 0 {name=vdd_src lab=VAPWR}
C {devices/gnd.sym} -430 -130 0 0 {name=gVDD lab=GND}
C {devices/vsource.sym} -300 60 0 0 {name=VIN value=1.65}
N -300 30 -80 30 {lab=vin}
C {devices/gnd.sym} -300 90 0 0 {name=gVIN lab=GND}
N -80 -30 -130 -30 {lab=out}
N -130 -130 -130 -30 {lab=out}
N -130 -130 180 -130 {lab=out}
N 180 -130 180 0 {lab=out}
N 140 0 280 0 {lab=out}
N 280 0 280 40 {lab=out}
C {devices/isource.sym} 280 70 0 0 {name=ILOAD value=0}
C {devices/gnd.sym} 280 100 0 0 {name=gLOAD lab=GND}
N 180 0 180 130 {lab=out}
N 180 130 360 130 {lab=out}
N 360 130 360 160 {lab=out}
C {devices/capa.sym} 360 190 0 0 {name=CL value=20p m=1}
C {devices/gnd.sym} 360 220 0 0 {name=gCL lab=GND}
B 2 850 -340 1620 0 {flags=graph
y1=1.646 y2=1.654 x1=-1 x2=1
divy=6 divx=8 subdivy=1 subdivx=1
node="vin out" color="7 4 6" dataset=-1
logx=0 logy=0 sweep=load_mA sim_type=dc rawfile=$netlist_dir/testbench_output_dc_3v3.raw}
B 2 850 40 1620 380 {flags=graph
y1=-2 y2=2 x1=-1 x2=1
divy=6 divx=8 subdivy=1 subdivx=1
node="error_mV" color="7 4 6" dataset=-1
logx=0 logy=0 sweep=load_mA sim_type=dc rawfile=$netlist_dir/testbench_output_dc_3v3.raw}
T {Output [V]; load current [mA]} 870 -365 0 0 .24 .24 {}
T {Follower error [mV]; load current [mA]} 870 15 0 0 .24 .24 {}
C {devices/code_shown.sym} -470 290 0 0 {name=COMMANDS only_toplevel=true value=".options klu itl1=100 reltol=.0001
.nodeset v(x1.net1)=2.55229105
.nodeset v(x1.net3)=0.866789395
.nodeset v(x1.net4)=0.29731059
.nodeset v(x1.net5)=0.297227056
.nodeset v(x1.net7)=2.03109432
.nodeset v(x1.net9)=1.08535928
.nodeset v(x1.fc_pref)=2.02894826
.nodeset v(x1.fc_nref)=1.08255405
.nodeset v(x1.bias1)=2.05405688
.nodeset v(x1.bias2)=2.04452255
.nodeset v(x1.bias3)=1.14047666
.nodeset v(x1.bias4)=1.04710014
.nodeset v(x1.bias)=1.65
.nodeset v(out)=1.65 v(x1.xb.xref.vbiasn)=.91 v(x1.xb.xref.vbiasp)=2.05 v(x1.xb.xref.vstartup)=.1
.control
set wr_singlescale
set wr_vecnames
save all @iload[current]
dc ILOAD -1m 1m 50u

* Reject roots outside the SKY130 HV gate-voltage range.
let physical_bias_peak = vecmax(abs(v(x1.bias)))
if physical_bias_peak > 5.5
echo PHYSICAL_BIAS_ERROR: invalid PDK operating point
quit 1
end
let load_mA=1000*@iload[current]
let error_mV=1000*(v(out)-v(vin))
write testbench_output_dc_3v3.raw all
wrdata testbench_output_dc_3v3.dat v(vin) v(out) i(VDD)
.endc"}
C {devices/launcher.sym} 510 230 0 0 {name=LOAD descr="Load waves" tclcommand="xschem raw_read $netlist_dir/testbench_output_dc_3v3.raw dc"}
C {devices/lab_pin.sym} -200 30 0 0 {name=signal_input lab=vin}
C {devices/lab_pin.sym} 280 0 0 1 {name=signal_output lab=out}
N 20 -90 20 -60 {lab=VAPWR}
N 20 60 20 90 {lab=GND}
