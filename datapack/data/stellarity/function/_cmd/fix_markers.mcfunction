tag @e[type=minecraft:marker,tag=stellarity.altar_of_the_accursed,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.altar_of_the_sacred,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.end_portal,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.exit_portal,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.dragons_den_chest,tag=!stellarity.marker] add stellarity.marker

function stellarity:util/tellraw/command {string:"fix_markers.success",fallback:"Fixed all loaded Stellarity markers"}

function kohara:send_command_feedback/off
