#> player_motion:internal/math/d_sqrt
scoreboard players operation $out player_motion.internal.math.sqrt = $d player_motion.internal.math
scoreboard players set $temp player_motion.internal.math.sqrt 1

execute if score $out player_motion.internal.math.sqrt > $temp player_motion.internal.math.sqrt run function stellarity_desert_scourge:player_motion/internal/math/d_sqrt/loop