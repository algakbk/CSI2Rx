# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/wt [current_project]
set_property parent.project_path /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll.xci
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_board.xdc]
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll.xdc]
set_property used_in_implementation false [get_files -all /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_ooc.xdc]
set_property is_locked true [get_files /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1 -new_name dvi_pll -ip [get_ips dvi_pll]]

if { $cached_ip eq {} } {

synth_design -top dvi_pll -part xc7a100tcsg324-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix dvi_pll_ dvi_pll.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dvi_pll_stub.v
 lappend ipCachedFiles dvi_pll_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dvi_pll_stub.vhdl
 lappend ipCachedFiles dvi_pll_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dvi_pll_sim_netlist.v
 lappend ipCachedFiles dvi_pll_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dvi_pll_sim_netlist.vhdl
 lappend ipCachedFiles dvi_pll_sim_netlist.vhdl

 config_ip_cache -add -dcp dvi_pll.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips dvi_pll]
}

rename_ref -prefix_all dvi_pll_

write_checkpoint -force -noxdef dvi_pll.dcp

catch { report_utilization -file dvi_pll_utilization_synth.rpt -pb dvi_pll_utilization_synth.pb }

if { [catch {
  file copy -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll.dcp /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll.dcp /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll_stub.v /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll_stub.vhdl /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll_sim_netlist.v /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.runs/dvi_pll_synth_1/dvi_pll_sim_netlist.vhdl /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.ip_user_files/ip/dvi_pll]} {
  catch { 
    file copy -force /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.v /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.ip_user_files/ip/dvi_pll
  }
}

if {[file isdir /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.ip_user_files/ip/dvi_pll]} {
  catch { 
    file copy -force /home/baktiiar/workspace/github/CSI2Rx/project/IPcore/dvi_pll_1/dvi_pll_stub.vhdl /home/baktiiar/workspace/github/CSI2Rx/project/ov4689/ov4689.ip_user_files/ip/dvi_pll
  }
}
