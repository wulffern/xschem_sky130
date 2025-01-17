v {xschem version=3.1.0 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
B 2 790 -700 1590 -300 {flags=graph
y1=0.49765
y2=0.760306
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.56529
x2=-4.97001
divx=5
subdivx=8
node=e1
color=4
dataset=0
unitx=n
logx=1
logy=0
}
T {Warning: in this case models linked
to opencircuitdesign pdks/ install} 110 -260 0 0 0.4 0.4 {}
N 560 -220 610 -220 { lab=#net1}
N 560 -220 560 -190 { lab=#net1}
N 650 -470 650 -440 { lab=0}
N 650 -320 650 -250 { lab=E1}
N 560 -130 720 -130 { lab=0}
C {devices/code_shown.sym} 40 -530 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
dc i0 5n 5u 0.05u
* tran 1n 2u
plot vc1#branch / vb1#branch
plot e1
write test_bipolar.raw

.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {sky130_fd_pr/pnp_05v5.sym} 630 -220 0 0 {name=Q1
spiceprefix=X
}
C {devices/ammeter.sym} 650 -160 0 0 {name=Vc1 net_name=true}
C {devices/ammeter.sym} 560 -160 0 0 {name=Vb1 net_name=true}
C {devices/lab_pin.sym} 720 -130 0 1 {name=p3 lab=0}
C {devices/lab_pin.sym} 650 -280 0 0 {name=p4 lab=E1}
C {devices/isource.sym} 650 -410 0 0 {name=I0 value=0}
C {devices/lab_pin.sym} 650 -470 0 0 {name=p1 lab=0}
C {devices/ammeter.sym} 650 -350 0 0 {name=Ve1 net_name=true}
C {sky130_fd_pr/corner.sym} 230 -180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 995 -225 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
