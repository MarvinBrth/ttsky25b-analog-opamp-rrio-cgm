v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 300 800 700 {flags=graph
y1=-110
y2=-30
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac

color=7
node="\\"out db20()\\""
rawfile=$netlist_dir/Rod_Design.raw}
B 2 830 300 1630 700 {flags=graph
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=\\"ph(out)\\"
color=11
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
rawfile=$netlist_dir/Rod_Design.raw}
N 120 130 120 170 {
lab=#net1}
N -120 60 -120 170 {
lab=#net2}
N 0 200 80 200 {
lab=#net2}
N 120 260 500 260 {
lab=GND}
N -120 230 -120 260 {
lab=GND}
N 120 230 120 260 {
lab=GND}
N 0 -170 0 -50 {
lab=#net3}
N 0 -50 120 -50 {
lab=#net3}
N 120 -50 120 -30 {
lab=#net3}
N -120 -50 0 -50 {
lab=#net3}
N -120 -50 -120 -30 {
lab=#net3}
N 0 -260 590 -260 {
lab=VDD}
N 0 -260 0 -230 {
lab=VDD}
N -120 60 320 60 {
lab=#net2}
N 120 130 470 130 {
lab=#net1}
N 320 60 740 60 {
lab=#net2}
N 320 40 320 60 {
lab=#net2}
N 690 260 930 260 {
lab=GND}
N 740 60 740 130 {
lab=#net2}
N 730 130 740 130 {
lab=#net2}
N 590 -260 590 -240 {
lab=VDD}
N 590 -180 590 80 {
lab=#net4}
N 590 80 690 80 {
lab=#net4}
N 690 80 690 100 {
lab=#net4}
N 500 80 500 100 {
lab=#net4}
N 500 80 590 80 {
lab=#net4}
N 690 170 690 180 {
lab=ndrive}
N 600 210 650 210 {
lab=#net5}
N 500 170 500 180 {
lab=#net5}
N 500 170 600 170 {
lab=#net5}
N 600 170 600 210 {
lab=#net5}
N 500 240 500 260 {
lab=GND}
N 690 240 690 260 {
lab=GND}
N 1080 -260 1310 -260 {
lab=VDD}
N 930 -260 930 -250 {
lab=VDD}
N 930 -180 930 -170 {
lab=#net6}
N 880 -220 890 -220 {
lab=#net6}
N 880 -220 880 -180 {
lab=#net6}
N 880 -180 930 -180 {
lab=#net6}
N 870 -140 890 -140 {
lab=#net7}
N 870 -90 870 -70 {
lab=#net7}
N 930 -90 1040 -90 {
lab=#net7}
N 930 -110 930 -90 {
lab=#net7}
N 930 70 930 80 {
lab=#net8}
N 930 70 1040 70 {
lab=#net8}
N 870 70 930 70 {
lab=#net8}
N 870 70 870 110 {
lab=#net8}
N 870 110 890 110 {
lab=#net8}
N 930 180 930 190 {
lab=#net9}
N 1080 260 1310 260 {
lab=GND}
N 1080 250 1080 260 {
lab=GND}
N 930 250 930 260 {
lab=GND}
N 1080 170 1250 170 {
lab=ndrive}
N 1250 170 1270 170 {
lab=ndrive}
N 1080 100 1080 170 {
lab=ndrive}
N 1080 170 1080 190 {
lab=ndrive}
N 1310 -0 1310 140 {
lab=out}
N 1310 -260 1310 -190 {
lab=VDD}
N 1080 -260 1080 -250 {
lab=VDD}
N 1080 -160 1080 -120 {
lab=pdrive}
N 1250 -160 1270 -160 {
lab=pdrive}
N 1080 -60 1080 -40 {
lab=ndrive}
N 1080 -40 1250 20 {
lab=ndrive}
N 1250 20 1250 170 {
lab=ndrive}
N 1080 20 1080 40 {
lab=pdrive}
N 1080 20 1250 -40 {
lab=pdrive}
N 1520 0 1600 -0 {
lab=out}
N 1310 200 1310 260 {
lab=GND}
N 1310 260 1450 260 {
lab=GND}
N 1450 210 1450 260 {
lab=GND}
N 1450 130 1450 150 {
lab=#net10}
N 1520 100 1520 130 {
lab=#net10}
N 1600 -0 1660 0 {
lab=out}
N 1600 -0 1600 10 {
lab=out}
N 1520 0 1520 40 {
lab=out}
N 1450 0 1450 40 {
lab=out}
N 890 180 890 220 {
lab=#net9}
N 890 180 930 180 {
lab=#net9}
N -300 -120 -300 -80 {
lab=out}
N -300 -210 -300 -180 {
lab=in-}
N 160 0 180 0 {
lab=in+}
N -180 -0 -160 -0 {
lab=in-}
N 1250 -160 1250 -40 {
lab=pdrive}
N -430 150 -430 170 {
lab=GND}
N -510 30 -510 40 {
lab=GND}
N -510 -50 -510 -30 {
lab=VDD}
N -540 260 -300 260 {
lab=GND}
N -300 260 -120 260 {
lab=GND}
N -120 260 120 260 {
lab=GND}
N -80 200 0 200 {
lab=#net2}
N -560 -260 -420 -260 {
lab=VDD}
N -420 -260 0 -260 {
lab=VDD}
N -120 30 -120 60 {
lab=#net2}
N 120 30 120 130 {
lab=#net1}
N 500 160 500 170 {
lab=#net5}
N 540 210 600 210 {
lab=#net5}
N 500 260 690 260 {
lab=GND}
N 590 -260 930 -260 {
lab=VDD}
N 930 -190 930 -180 {
lab=#net6}
N 870 -140 870 -90 {
lab=#net7}
N 870 -90 930 -90 {
lab=#net7}
N 930 60 930 70 {
lab=#net8}
N 930 260 1080 260 {
lab=GND}
N 690 160 690 170 {
lab=ndrive}
N 690 170 1080 170 {
lab=ndrive}
N 930 -260 1080 -260 {
lab=VDD}
N 1080 -190 1080 -160 {
lab=pdrive}
N 1310 -130 1310 -0 {
lab=out}
N 1450 100 1450 130 {
lab=#net10}
N 1450 0 1520 0 {
lab=out}
N 1310 -0 1450 0 {
lab=out}
N 930 140 930 180 {
lab=#net9}
N 1080 -160 1250 -160 {
lab=pdrive}
N -510 40 -510 250 {
lab=GND}
N -510 250 -510 260 {
lab=GND}
N -510 -260 -510 -50 {
lab=VDD}
N 0 140 -0 200 {
lab=#net2}
N -120 140 -0 140 {
lab=#net2}
N -430 80 -430 90 {
lab=in+}
N 1600 70 1600 80 {
lab=#net11}
N 1450 140 1600 140 {
lab=#net10}
N 1520 130 1520 140 {
lab=#net10}
N 870 -10 870 0 {
lab=GND}
C {devices/isource.sym} 0 -200 0 0 {name=I0 value=40u}
C {devices/ipin.sym} -540 260 0 0 {name=p3 lab=GND}
C {devices/ipin.sym} -560 -260 0 0 {name=p4 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 10 2 0 {name=C1 model=cap_mim_m3_1 W=109 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 160 0 0 {name=C2 model=cap_mim_m3_1 W=109 L=20 MF=1 spiceprefix=X}
C {devices/isource.sym} 590 -210 0 0 {name=I2 value=20u}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 910 -220 0 0 {name=M13
L=0.35
W=10
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 910 -140 0 0 {name=M14
L=0.35
W=10
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1060 -90 0 0 {name=M15
L=0.35
W=10
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 870 -40 0 0 {name=I3 value=10u}
C {devices/isource.sym} 930 30 0 0 {name=I5 value=10u}
C {devices/isource.sym} 1080 220 0 0 {name=I6 value=20u}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 1290 -160 0 0 {name=M19
L=0.35
W=110
body=VDD
nf=11
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 1080 -220 0 0 {name=I7 value=20u}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1280 -60 1 1 {name=C3 model=cap_mim_m3_1 W=27 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1280 40 1 1 {name=C4 model=cap_mim_m3_1 W=27 L=20 MF=1 spiceprefix=X}
C {devices/res.sym} 1450 70 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1520 70 0 0 {name=C5
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1450 180 0 0 {name=V1 value=0.9 savecurrent=false}
C {devices/opin.sym} 1660 0 0 0 {name=p9 lab=out}
C {devices/res.sym} 1600 110 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1600 40 0 0 {name=C6
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 910 220 0 0 {name=M21
L=0.35
W=2.5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -100 200 0 1 {name=M3
L=0.35
W=5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 100 200 0 0 {name=M4
L=0.35
W=5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 670 210 0 0 {name=M10
L=0.35
W=2.5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 520 210 0 1 {name=M11
L=0.35
W=2.5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 1060 70 0 0 {name=M17
L=0.35
W=2.5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 910 110 0 0 {name=M18
L=0.35
W=2.5
nf=1
mult=1
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/simulator_commands_shown.sym} -560 350 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  op
  remzerovec 
  write Rod_Design.raw
  set appendwrite
  ac dec 20 1 1e12
  remzerovec
  write Rod_Design.raw
  tran 1e-15 6e-12
  write Rod_Design.raw
.endc
"}
C {devices/vsource.sym} -430 120 0 0 {name=V4 value="0.9 AC 1 pulse 0.1 1.7 0 10n 10n 500n 1u" savecurrent=false}
C {devices/res.sym} -300 -150 2 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {devices/code.sym} -230 380 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -200 580 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -510 0 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 320 -20 0 0 {name=p16 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 320 190 2 0 {name=p5 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 930 0 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 870 0 2 1 {name=p7 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 1190 -160 0 0 {name=p8 sig_type=std_logic lab=pdrive}
C {devices/lab_wire.sym} 1180 170 0 0 {name=p17 sig_type=std_logic lab=ndrive}
C {devices/lab_wire.sym} -430 170 0 0 {name=p15 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -430 80 0 0 {name=p10 sig_type=std_logic lab=in+}
C {devices/lab_wire.sym} -300 -210 0 0 {name=p11 sig_type=std_logic lab=in-}
C {devices/lab_wire.sym} -300 -80 0 0 {name=p12 sig_type=std_logic lab=out}
C {sky130_fd_pr/pfet3_01v8.sym} -140 0 0 0 {name=M1
L=0.35
W=20
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 140 0 0 1 {name=M7
L=0.35
W=20
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 480 130 0 0 {name=M2
L=0.35
W=10
body=VDPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 710 130 0 1 {name=M8
L=0.35
W=10
body=VDPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 1290 170 0 0 {name=M5
L=0.35
W=42.5
nf=17
mult=2
body=GND
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} -180 0 0 0 {name=p1 sig_type=std_logic lab=in-}
C {devices/lab_wire.sym} 180 0 0 1 {name=p2 sig_type=std_logic lab=in+}
