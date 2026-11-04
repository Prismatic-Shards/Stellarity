#> player_motion:internal/math/xz_unitvector/sine
$execute store result score $temp player_motion.internal.math run data get storage stellarity_desert_scourge:player_motion_trig arr[$(angle)] $(z)
scoreboard players operation $temp player_motion.internal.math /= #constant.100 player_motion.internal.const