
O
*Debug cores have already been implemented
153*	chipscopeZ16-240h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcku0402default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcku0402default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1ca406495
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.051 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 199b6f45b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:10 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 16334b03d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 16334b03d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 16334b03d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:23 ; elapsed = 00:00:18 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 20014d052
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:27 ; elapsed = 00:00:21 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
32default:default2
nets2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
}ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_ddr_cal_addr_decode/u_ddr_cal_cplx/cplx_cal}ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_cal_top/u_ddr_cal/u_ddr_cal_addr_decode/u_ddr_cal_cplx/cplx_cal2default:default2
72default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
_ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_ui/u_ddr_ui_wr_data/app_wdf_rdy_r_ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_ui/u_ddr_ui_wr_data/app_wdf_rdy_r2default:default2
72default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
eddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_ui/u_ddr_ui_wr_data/app_wdf_rdy_r_copy2eddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_ddr_ui/u_ddr_ui_wr_data/app_wdf_rdy_r_copy22default:default2
72default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
32default:default2
nets2default:default2
212default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
212default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1122default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout              |           21  |              0  |                     3  |           0  |           1  |  00:00:01  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |           21  |              0  |                     3  |           0  |           5  |  00:00:01  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
Q
<Phase 2.2 Physical Synthesis In Placer | Checksum: f9eaec0c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:15 ; elapsed = 00:00:55 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 18b04c718
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:56 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 18b04c718
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:56 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: b43aad43
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:00:59 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
K
6Phase 3.3 Area Swap Optimization | Checksum: e7a97ecc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:01:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 11c23d164
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:01:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
3.5 2default:default2$
IO Cut Optimizer2default:defaultZ18-101h px? 
F
1Phase 3.5 IO Cut Optimizer | Checksum: 14f668464
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:22 ; elapsed = 00:01:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 197913b6f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:26 ; elapsed = 00:01:03 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.7 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px? 
L
7Phase 3.7 Small Shape Clustering | Checksum: 13d202d58
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:29 ; elapsed = 00:01:05 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
r

Phase %s%s
101*constraints2
3.8 2default:default2#
DP Optimization2default:defaultZ18-101h px? 
E
0Phase 3.8 DP Optimization | Checksum: 1972d5b60
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:40 ; elapsed = 00:01:12 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.9 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px? 
R
=Phase 3.9 Flow Legalize Slice Clusters | Checksum: 1430bdeac
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:41 ; elapsed = 00:01:13 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
3.10 2default:default2#
Slice Area Swap2default:defaultZ18-101h px? 
E
0Phase 3.10 Slice Area Swap | Checksum: abc768ff
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:44 ; elapsed = 00:01:16 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.11 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px? 
L
7Phase 3.11 Commit Slice Clusters | Checksum: 127641ea8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:52 ; elapsed = 00:01:20 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
3.12 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.12 Re-assign LUT pins | Checksum: e013bf91
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:54 ; elapsed = 00:01:22 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.13 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
U
@Phase 3.13 Pipeline Register Optimization | Checksum: 12436730a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:54 ; elapsed = 00:01:22 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.14 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.14 Fast Optimization | Checksum: 13ac60bf2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:07 ; elapsed = 00:01:31 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 13ac60bf2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:01:32 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
U
@Post Placement Optimization Initialization | Checksum: e8940066
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-46h px? 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: e8940066
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:24 ; elapsed = 00:01:42 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.0812default:defaultZ30-746h px? 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: eb7d4551
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:38 ; elapsed = 00:01:57 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
M
8Phase 4.1 Post Commit Optimization | Checksum: eb7d4551
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:39 ; elapsed = 00:01:57 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: eb7d4551
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:40 ; elapsed = 00:01:58 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 10af2b30a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:41 ; elapsed = 00:01:59 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
L
7Phase 4.4 Final Placement Cleanup | Checksum: 958a8064
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:42 ; elapsed = 00:01:59 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: 958a8064
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:42 ; elapsed = 00:02:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: 627d8ded
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:42 ; elapsed = 00:02:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1062default:default2
192default:default2
1002default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:482default:default2
00:02:042default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:052default:default2
00:00:022default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2`
LE:/Capstone_Alinx_MEM_FIFO_TEST/DDR_TEST/DDR_TEST.runs/impl_1/top_placed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:082default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
^
%s4*runtcl2B
.Executing : report_io -file top_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.115 . Memory (MB): peak = 3526.414 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2r
^Executing : report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
2default:defaulth px? 
{
%s4*runtcl2_
KExecuting : report_control_sets -verbose -file top_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.119 . Memory (MB): peak = 3526.414 ; gain = 0.000
*commonh px? 


End Record