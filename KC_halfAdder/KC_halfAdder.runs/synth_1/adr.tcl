# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Project/warmup/vivado/KC_halfAdder/KC_halfAdder.cache/wt [current_project]
set_property parent.project_path D:/Project/warmup/vivado/KC_halfAdder/KC_halfAdder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:kc705:part0:1.5 [current_project]
set_property ip_output_repo d:/Project/warmup/vivado/KC_halfAdder/KC_halfAdder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib D:/Project/warmup/vivado/KC_halfAdder/adr.vhd
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Project/warmup/vivado/KC_halfAdder/KC.xdc
set_property used_in_implementation false [get_files D:/Project/warmup/vivado/KC_halfAdder/KC.xdc]


synth_design -top adr -part xc7k325tffg900-2


write_checkpoint -force -noxdef adr.dcp

catch { report_utilization -file adr_utilization_synth.rpt -pb adr_utilization_synth.pb }