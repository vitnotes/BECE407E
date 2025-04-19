set_attr library slow.lib
read_hdl { AddingCPU.v DataPath.v Controller.v IR.v PC.v AC.v ALU.v }

elaborate

read_sdc addingCPU.sdc
#set_attribute syn_generic_effort high
#set_attribute syn_map_effort high
#set_attribute syn_opt_effort high

syn_generic -to_mapped -effort medium
#syn_map
#syn_opt

#synthesize -to_mapped -effort medium
write_hdl > addingCPU_netlist.v

write_sdc > addingCPU_constraint_created.sdc
write_sdf > addingCPU_sdf_created.sdf

gui_show

report_timing > addingCPU_timing_created.rep
report_area > addingCPU_area_created.rep
report_power > addingCPU_power_created.rep
report_gates > addingCPU_gates_created.rep
report_qor > addingCPU_quality_created.rep