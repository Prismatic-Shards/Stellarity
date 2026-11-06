execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:9}
tag @e[type=minecraft:marker,tag=stellarity.exit_portal,tag=!stellarity.portal_activated] add stellarity.portal_activated

function stellarity:util/tellraw/command {string:"kill_ender_dragon.success",fallback:"Killed the Ender Dragon"}

function kohara:send_command_feedback/off
