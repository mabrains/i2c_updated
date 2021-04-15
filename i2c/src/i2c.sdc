set_units -time ns
set clk_period 15
create_clock [get_ports wb_clk_i]  -name core_clock  -period ${clk_period}
set input_delay_value [expr ${clk_period} * 0.4]
set output_delay_value [expr ${clk_period} * 0.6]
