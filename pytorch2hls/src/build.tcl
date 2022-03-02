set kernel_file [lindex $argv 0]
set weight_file [lindex $argv 1]
set work_dir    [lindex $argv 2]
set out_dir     [lindex $argv 3]
set kernel_name [lindex $argv 4]

set tcl_dir             [file dirname [info script]]
set project_directory   $tcl_dir/../$work_dir
set project_name        "mynet_hls"

cd $project_directory
open_project $project_name

set_top $kernel_name
add_files [glob ../$kernel_file]
add_files [glob ../$weight_file]

open_solution "soulution1"
set_part {xc7a100tcsg324-1}
create_clock -period 10 -name default

csynth_design
#-dump_cfg -dump_post_cfg

#file copy -force $project_name/soulution1/syn/verilog ../$out_dir
