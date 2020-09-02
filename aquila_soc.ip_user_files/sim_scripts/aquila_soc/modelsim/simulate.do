onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_22 -L xlconstant_v1_1_5 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.aquila_soc xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {aquila_soc.udo}

run -all

quit -force
