#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HC
set_option -package FTG256C
set_option -speed_grade -6

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 100
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr auto
set_option -compiler_compatible 0
set_option -dup false

set_option -default_enum_encoding default

#simulation options


#timing analysis options
set_option -num_critical_paths 3


#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0
set_option -vhdl2008 1

set_option -seqshift_no_replicate 0

#-- add_file options
add_file -vhdl {C:/lscc/diamond/3.13/cae_library/synthesis/vhdl/machxo2.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/NN22Control00_top.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/NN22Control00_main.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/main_pll.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/ram_a.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/ram_b.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/uart_fifo.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/uart_tx_with_fifo.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/uart_rx.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/aux_adc_rx.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/spi_rxtx_with_fifo.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/spi_txrx_ram.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/ext_fifo.vhd}
add_file -vhdl -lib "work" {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/ext_fifo_int_fifo.vhd}

#-- top module name
set_option -top_module NN22Control_top

#-- set result format/file last
project -result_file {D:/Dropbox/NN2022/Lattice/NN22Control00g5-ExtFifo-VCCS-VBoost-7000HC/impl1/NN22Control00_impl1.edi}

#-- error message log file
project -log_file {NN22Control00_impl1.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
