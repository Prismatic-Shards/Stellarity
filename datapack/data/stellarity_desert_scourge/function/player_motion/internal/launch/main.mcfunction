#> player_motion:internal/launch/main
# Launches players in the input direction

execute \
    store result storage stellarity_desert_scourge:player_motion_math motion[0] double 0.0001 \
    store result storage stellarity_desert_scourge:player_motion_math motion_x double 0.0001 run \
    scoreboard players operation $motion_x player_motion.internal.math = @s player_motion.internal.motion.x
execute \
    store result storage stellarity_desert_scourge:player_motion_math motion[1] double 0.0001 \
    store result storage stellarity_desert_scourge:player_motion_math motion_y double 0.0001 run \
    scoreboard players operation $motion_y player_motion.internal.math = @s player_motion.internal.motion.y
execute \
    store result storage stellarity_desert_scourge:player_motion_math motion[2] double 0.0001 \
    store result storage stellarity_desert_scourge:player_motion_math motion_z double 0.0001 run \
    scoreboard players operation $motion_z player_motion.internal.math = @s player_motion.internal.motion.z

execute in minecraft:overworld run function stellarity_desert_scourge:player_motion/internal/math/main
attribute @s minecraft:knockback_resistance modifier add stellarity_desert_scourge:pm_no_kb -1 add_multiplied_total
function stellarity_desert_scourge:player_motion/internal/launch/gamemode/get
gamemode creative
tp ~ ~10000 ~
execute at @s run function stellarity_desert_scourge:player_motion/internal/summon/main with storage stellarity_desert_scourge:player_motion_math
tp ~ ~ ~
function stellarity_desert_scourge:player_motion/internal/launch/gamemode/restore
attribute @s minecraft:knockback_resistance modifier remove stellarity_desert_scourge:pm_no_kb

scoreboard players set $function_called player_motion.internal.dummy 0
tag @s remove player_motion.launch

# Reset scoreboards
scoreboard players reset @s player_motion.internal.motion.x
scoreboard players reset @s player_motion.internal.motion.y
scoreboard players reset @s player_motion.internal.motion.z