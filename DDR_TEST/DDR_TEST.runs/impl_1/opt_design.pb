
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
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
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1537.980 ; gain = 0.0002default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 23fd3b3c7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1537.980 ; gain = 0.0002default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Generate And Synthesize MIG Cores2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
1608.2302default:default2
0.2032default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
1612.7502default:default2
0.0002default:defaultZ17-268h px? 
?
NRe-using generated and synthesized IP, "%s", from Vivado IP cache entry "%s".
27*mig2.
xilinx.com:ip:ddr4_phy:2.22default:default2$
f8f176e2887842822default:defaultZ66-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1670.2892default:default2
0.0002default:defaultZ17-268h px? 
U
@Phase 1 Generate And Synthesize MIG Cores | Checksum: 1e2d69421
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1670.289 ; gain = 62.3792default:defaulth px? 
?

Phase %s%s
101*constraints2
2 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px? 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px? 
?
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px? 
?
NRe-using generated and synthesized IP, "%s", from Vivado IP cache entry "%s".
146*	chipscope2+
xilinx.com:ip:xsdbm:3.02default:default2$
be255bdd0ba041de2default:defaultZ16-220h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0492default:default2
1681.8522default:default2
0.0002default:defaultZ17-268h px? 
W
BPhase 2 Generate And Synthesize Debug Cores | Checksum: 1c1f08dec
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1681.852 ; gain = 73.9412default:defaulth px? 
i

Phase %s%s
101*constraints2
3 2default:default2
Retarget2default:defaultZ18-101h px? 
y
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
132default:default2
12102default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
<
'Phase 3 Retarget | Checksum: 1717bbe75
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:34 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
11702default:default2
13232default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
6972default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
4 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
42default:default2
42default:defaultZ31-138h px? 
H
3Phase 4 Constant propagation | Checksum: 1fd428920
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:35 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
1062default:default2
6862default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
6402default:defaultZ31-1021h px? 
f

Phase %s%s
101*constraints2
5 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 5 Sweep | Checksum: 2302ab895
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
39452default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
38112default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
6 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2g
Sddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout0_BUFG_inst2default:default2
02default:default2d
Pddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout0_BUFGCE2default:defaultZ31-194h px? 
?
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2g
Sddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout5_BUFG_inst2default:default2
02default:default2d
Pddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout5_BUFGCE2default:defaultZ31-194h px? 
?
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2g
Sddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout6_BUFG_inst2default:default2
02default:default2d
Pddr4_test_inst/your_instance_name/inst/u_ddr4_infrastructure/mmcm_clkout6_BUFGCE2default:defaultZ31-194h px? 
W
!Inserted %s BUFG(s) on clock nets140*opt2
32default:defaultZ31-193h px? 
h
2Optimized connectivity to %s cascaded buffer cells194*opt2
12default:defaultZ31-274h px? 
E
0Phase 6 BUFG optimization | Checksum: 2484ab47c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:37 ; elapsed = 00:00:42 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
12default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
7 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
O
:Phase 7 Shift Register Optimization | Checksum: 28361bfee
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:45 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
8 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 8 Post Processing Netlist | Checksum: 245fdab75
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:46 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
12default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
1822default:defaultZ31-1021h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |            1170  |            1323  |                                            697  |
|  Constant propagation         |             106  |             686  |                                            640  |
|  Sweep                        |               0  |            3945  |                                           3811  |
|  BUFG optimization            |               0  |               1  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               1  |                                            182  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.084 . Memory (MB): peak = 1694.340 ; gain = 0.0002default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 27b887327
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:46 . Memory (MB): peak = 1694.340 ; gain = 86.4302default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px? 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.1232default:default2
0.0002default:defaultZ32-619h px? 
?
$Power model is not available for %s
23*power2?
xiphy_riu_or	?ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2?
genVref.u_hpio_vref	?ddr4_test_inst/your_instance_name/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr_iob/genByte[0].u_ddr_iob_byte/genVref.u_hpio_vref2default:default8Z33-23h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 


*pwropth px? 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px? 
?
?WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
772default:default2
1032default:defaultZ34-162h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
42default:defaultZ34-201h px? 
?
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
732default:default2
42default:default2
2062default:defaultZ34-65h px? 
N
9Ending PowerOpt Patch Enables Task | Checksum: 1d8df63e3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
J
5Ending Power Optimization Task | Checksum: 1d8df63e3
*commonh px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:50 ; elapsed = 00:00:36 . Memory (MB): peak = 3526.414 ; gain = 1832.0742default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
E
0Ending Final Cleanup Task | Checksum: 1d8df63e3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
K
6Ending Netlist Obfuscation Task | Checksum: 2003303c5
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.030 . Memory (MB): peak = 3526.414 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
722default:default2
192default:default2
1002default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:01:402default:default2
00:01:282default:default2
3526.4142default:default2
1988.4342default:defaultZ17-268h px? 
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
00:00:012default:default2 
00:00:00.1112default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0192default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2]
IE:/Capstone_Alinx_MEM_FIFO_TEST/DDR_TEST/DDR_TEST.runs/impl_1/top_opt.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:072default:default2
3526.4142default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2o
[Executing : report_drc -file top_drc_opted.rpt -pb top_drc_opted.pb -rpx top_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2b
Nreport_drc -file top_drc_opted.rpt -pb top_drc_opted.pb -rpx top_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
OE:/Capstone_Alinx_MEM_FIFO_TEST/DDR_TEST/DDR_TEST.runs/impl_1/top_drc_opted.rptOE:/Capstone_Alinx_MEM_FIFO_TEST/DDR_TEST/DDR_TEST.runs/impl_1/top_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record