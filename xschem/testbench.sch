v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 0 240 0 {
lab=out}
N 300 0 350 0 {
lab=pinout}
N -60 -30 -20 -30 {
lab=MINUS}
N -60 30 -20 30 {
lab=PLUS}
C {devices/launcher.sym} 570 240 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 350 0 0 1 {name=p3 sig_type=std_logic lab=pinout}
C {devices/lab_wire.sym} 80 60 2 1 {name=p4 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 200 0 0 1 {name=p7 sig_type=std_logic lab=out}
C {devices/res.sym} 270 0 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 350 60 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} -340 230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control

tran 100p 200n

write testbench.raw

.endc
"}
C {devices/lab_wire.sym} 80 -60 0 0 {name=p8 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 280 240 0 0 {name=p35 lab=PLUS}
C {devices/lab_wire.sym} 380 240 0 0 {name=p37 lab=MINUS}
C {devices/lab_wire.sym} -60 30 0 0 {name=p11 lab=PLUS}
C {devices/lab_wire.sym} -60 -30 0 0 {name=p12 lab=MINUS}
C {devices/lab_wire.sym} 0 240 0 0 {name=p5 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 110 240 0 0 {name=p6 sig_type=std_logic lab=VGND}
C {devices/gnd.sym} 0 300 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 110 300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 280 300 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 380 300 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 350 30 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -340 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {opamp-rrio-cgm.sym} 60 0 0 0 {name=x1}
C {devices/vsource.sym} 280 270 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 380 270 0 0 {name=V2 value=0 savecurrent=false}
C {devices/vsource.sym} 0 270 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/vsource.sym} 110 270 0 0 {name=V4 value=0 savecurrent=false}
