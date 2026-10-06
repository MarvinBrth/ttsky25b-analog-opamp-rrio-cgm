v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 -250 -440 30 {}
N -120 -250 -120 30 {}
N 200 -250 200 30 {}
N -760 410 -760 500 {}
N -760 560 -760 780 {}
N -400 410 -400 530 {}
N -400 590 -400 780 {}
N -60 560 -60 780 {}
N -800 60 -840 60 {}
N -840 60 -840 30 {}
N -840 30 -760 30 {}
N -480 -280 -520 -280 {}
N -520 -280 -520 -250 {}
N -520 -250 -440 -250 {}
N -160 -280 -200 -280 {}
N -200 -280 -200 -250 {}
N -200 -250 -120 -250 {}
N 160 60 120 60 {}
N 120 60 120 30 {}
N 120 30 200 30 {}
N -800 530 -840 530 {}
N -840 530 -840 560 {}
N -840 560 -760 560 {}
N -440 560 -480 560 {}
N -480 560 -480 530 {}
N -480 530 -400 530 {}
T {5-uA bias tree: one IREF receiver, independent mirror branches} -870 -470 0 0 0.28 0.28 {}
C {reference_bias_3v3.sym} -780 -280 0 0 {name=XREF}
C {devices/lab_pin.sym} -930 -290 0 0 {name=pnew1 lab=VAPWR}
C {devices/lab_pin.sym} -930 -250 0 0 {name=pnew2 lab=VGND}
C {devices/lab_pin.sym} -740 -290 0 0 {name=pnew3 lab=IREF}
C {hv_nmos.sym} -780 60 0 0 {name=MBN
L=1 W=5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -760 30 0 0 {name=pnew4 lab=IREF}
C {devices/lab_pin.sym} -760 90 0 0 {name=pnew6 lab=VGND}
C {body_label.sym} -760 60 0 0 {name=body_MBN lab=VGND}
C {hv_pmos.sym} -460 -280 0 0 {name=MPMASTER
L=1 W=10 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=pfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -440 -250 0 0 {name=pnew7 lab=PMASTER}
C {devices/lab_pin.sym} -440 -310 0 0 {name=pnew9 lab=VAPWR}
C {body_label.sym} -440 -280 0 0 {name=body_MPMASTER lab=VAPWR}
C {hv_nmos.sym} -460 60 0 0 {name=MNMASTER
L=1 W=5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -480 60 0 0 {name=pnew11 lab=IREF}
C {devices/lab_pin.sym} -440 90 0 0 {name=pnew12 lab=VGND}
C {body_label.sym} -440 60 0 0 {name=body_MNMASTER lab=VGND}
C {hv_pmos.sym} -140 -280 0 0 {name=MPTAIL
L=6 W=33 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=pfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -120 -250 0 0 {name=pnew13 lab=bias1}
C {devices/lab_pin.sym} -120 -310 0 0 {name=pnew15 lab=VAPWR}
C {body_label.sym} -120 -280 0 0 {name=body_MPTAIL lab=VAPWR}
C {hv_nmos.sym} -140 60 0 0 {name=MNPTAIL
L=1 W=5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -160 60 0 0 {name=pnew17 lab=IREF}
C {devices/lab_pin.sym} -120 90 0 0 {name=pnew18 lab=VGND}
C {body_label.sym} -120 60 0 0 {name=body_MNPTAIL lab=VGND}
C {hv_pmos.sym} 180 -280 0 0 {name=MPNTAIL
L=1 W=10 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=pfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} 200 -250 0 0 {name=pnew19 lab=bias4}
C {devices/lab_pin.sym} 160 -280 0 0 {name=pnew20 lab=PMASTER}
C {devices/lab_pin.sym} 200 -310 0 0 {name=pnew21 lab=VAPWR}
C {body_label.sym} 200 -280 0 0 {name=body_MPNTAIL lab=VAPWR}
C {hv_nmos.sym} 180 60 0 0 {name=MNTAIL
L=6 W=10 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} 200 90 0 0 {name=pnew24 lab=VGND}
C {body_label.sym} 200 60 0 0 {name=body_MNTAIL lab=VGND}
T {IREF receiver} -880 170 0 0 0.23 0.23 {}
T {PMOS mirror master} -570 170 0 0 0.23 0.23 {}
T {PMOS tail replica} -250 170 0 0 0.23 0.23 {}
T {NMOS tail replica} 70 170 0 0 0.23 0.23 {}
C {sky130_fd_pr/res_high_po_0p69.sym} -760 380 0 0 {name=RPCAS L=100 model=res_high_po_0p69 spiceprefix=X mult=1}
C {devices/lab_pin.sym} -760 350 0 0 {name=pnew25 lab=VAPWR}
C {devices/lab_pin.sym} -760 410 0 0 {name=pnew26 lab=PCAS_SOURCE}
C {body_label.sym} -780 380 0 1 {name=body_RPCAS lab=VGND}
C {hv_pmos.sym} -780 530 0 0 {name=MPCAS
L=0.5 W=45.83 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=pfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -760 560 0 0 {name=pnew27 lab=bias2}
C {body_label.sym} -760 530 0 0 {name=body_MPCAS lab=VAPWR}
C {hv_nmos.sym} -780 810 0 0 {name=MNPCAS
L=1 W=5 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -800 810 0 0 {name=pnew31 lab=IREF}
C {devices/lab_pin.sym} -760 840 0 0 {name=pnew32 lab=VGND}
C {body_label.sym} -760 810 0 0 {name=body_MNPCAS lab=VGND}
C {hv_pmos.sym} -420 380 0 0 {name=MPNCAS
L=1 W=10 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=pfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -400 410 0 0 {name=pnew33 lab=bias3}
C {devices/lab_pin.sym} -440 380 0 0 {name=pnew34 lab=PMASTER}
C {devices/lab_pin.sym} -400 350 0 0 {name=pnew35 lab=VAPWR}
C {body_label.sym} -400 380 0 0 {name=body_MPNCAS lab=VAPWR}
C {hv_nmos.sym} -420 560 0 0 {name=MNCAS
L=0.5 W=13.89 nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
as="'int((nf+2)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0 model=nfet_g5v0d10v5 spiceprefix=X}
C {devices/lab_pin.sym} -400 590 0 0 {name=pnew38 lab=NCAS_SOURCE}
C {body_label.sym} -400 560 0 0 {name=body_MNCAS lab=VGND}
C {sky130_fd_pr/res_high_po_0p69.sym} -400 810 0 0 {name=RNCAS L=100 model=res_high_po_0p69 spiceprefix=X mult=1}
C {devices/lab_pin.sym} -400 840 0 0 {name=pnew40 lab=VGND}
C {body_label.sym} -420 810 0 1 {name=body_RNCAS lab=VGND}
C {sky130_fd_pr/res_high_po_0p69.sym} -60 530 0 0 {name=RCM_TOP L=150 model=res_high_po_0p69 spiceprefix=X mult=1}
C {devices/lab_pin.sym} -60 500 0 0 {name=pnew41 lab=VAPWR}
C {devices/lab_pin.sym} -60 560 0 0 {name=pnew42 lab=bias}
C {body_label.sym} -80 530 0 1 {name=body_RCM_TOP lab=VGND}
C {sky130_fd_pr/res_high_po_0p69.sym} -60 810 0 0 {name=RCM_BOTTOM L=150 model=res_high_po_0p69 spiceprefix=X mult=1}
C {devices/lab_pin.sym} -60 840 0 0 {name=pnew44 lab=VGND}
C {body_label.sym} -80 810 0 1 {name=body_RCM_BOTTOM lab=VGND}
T {PMOS cascode replica
VDD - I*R - VSG} -880 910 0 0 0.23 0.23 {}
T {NMOS cascode replica
I*R + VGS} -510 910 0 0 0.23 0.23 {}
T {Spillover switching
bias = VDD/2} -160 910 0 0 0.23 0.23 {}
C {devices/iopin.sym} 480 -330 0 0 {name=pnew45 lab=VAPWR}
C {devices/iopin.sym} 480 -270 0 0 {name=pnew46 lab=VGND}
C {devices/opin.sym} 480 -150 0 0 {name=pnew47 lab=bias1}
C {devices/opin.sym} 480 -90 0 0 {name=pnew48 lab=bias4}
C {devices/opin.sym} 480 -30 0 0 {name=pnew49 lab=bias2}
C {devices/opin.sym} 480 30 0 0 {name=pnew50 lab=bias3}
C {devices/opin.sym} 480 90 0 0 {name=pnew51 lab=bias}
T {Only gates are driven by bias outputs.
No current load on beta-multiplier nodes.
Bodies and resistor substrates are explicit.} 220 380 0 0 0.23 0.23 {}
