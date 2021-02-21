package require openlane

prep -design vsdPLLSoC -tag vsdPLLSoC -overwrite


run_synthesis

init_floorplan

add_macro_placement PADFRAME 0 0 N
add_macro_placement PLL 1700 2590 N
add_macro_placement POR 2500 1495 MX

manual_macro_placement f

remove_pins -input $::env(CURRENT_DEF)
remove_empty_nets -input $::env(CURRENT_DEF)


li1_hack_start
global_routing
detailed_routing
li1_hack_end

run_magic

