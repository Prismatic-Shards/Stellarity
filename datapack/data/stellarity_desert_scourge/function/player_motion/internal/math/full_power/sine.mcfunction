#> player_motion:internal/math/full_power/sine
$execute store result score $n_full_exp player_motion.internal.math run data get storage stellarity_desert_scourge:player_motion_trig arr[$(angle)] $(y)
execute store result score $sub_power player_motion.internal.math run scoreboard players operation $n_full_exp player_motion.internal.math /= #constant.100 player_motion.internal.const