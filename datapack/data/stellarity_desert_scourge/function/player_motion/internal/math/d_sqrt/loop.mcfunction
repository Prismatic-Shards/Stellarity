#> player_motion:internal/math/d_sqrt/loop
scoreboard players operation $out player_motion.internal.math.sqrt += $temp player_motion.internal.math.sqrt
scoreboard players operation $out player_motion.internal.math.sqrt /= #constant.2 player_motion.internal.const

scoreboard players operation $temp player_motion.internal.math.sqrt = $d player_motion.internal.math
scoreboard players operation $temp player_motion.internal.math.sqrt /= $out player_motion.internal.math.sqrt

execute if score $out player_motion.internal.math.sqrt > $temp player_motion.internal.math.sqrt run function stellarity_desert_scourge:player_motion/internal/math/d_sqrt/loop