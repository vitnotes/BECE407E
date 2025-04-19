create_clock -name CLK_100M -period 10 -waveform {0 5} [get_ports "clk"]

set_clock_transition -rise 0.1 [ get_clocks "CLK_100M" ]

set_clock_transition -fall 0.1 [ get_clocks "CLK_100M" ]

set_clock_uncertainity 0.01 [ get_ports "clk" ]


set_input_delay -max 1.0 [get_ports "clk"] -clock CLK_100M

set_input_delay -max 1.0 [get_ports "reset"] -clock CLK_100M

set_input_delay -max 1.0 [get_ports "data_bus"] -clock CLK_100M

set_output_delay -max 1.0 [get_ports "data_bus"] -clock CLK_100M


set_output_delay -max 1.0 [get_ports "adr_bus"] -clock CLK_100M

set_output_delay -max 1.0 [get_ports "rd_mem"] -clock CLK_100M

set_output_delay -max 1.0 [get_ports "wr_mem"] -clock CLK_100M