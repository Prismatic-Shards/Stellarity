#> player_motion:internal/math/main

# full_power=sqrt(motion_x²+motion_y²+motion_z²)
    # Normalize
        execute if score $motion_x player_motion.internal.math matches ..-1 run \
            scoreboard players operation $motion_x player_motion.internal.math *= #constant.-1 player_motion.internal.const

        execute if score $motion_y player_motion.internal.math matches ..-1 run \
            scoreboard players operation $motion_y player_motion.internal.math *= #constant.-1 player_motion.internal.const

        execute if score $motion_z player_motion.internal.math matches ..-1 run \
            scoreboard players operation $motion_z player_motion.internal.math *= #constant.-1 player_motion.internal.const

    # SuperSwordTW's method. Credit: https://github.com/SuperSwordTW/Distance-Trig-Calc-3d
        execute if score $motion_y player_motion.internal.math matches 0 run \
            scoreboard players operation $motion_y player_motion.internal.math >< $motion_x player_motion.internal.math

        execute if score $motion_y player_motion.internal.math matches 0 run \
            scoreboard players operation $motion_y player_motion.internal.math >< $motion_z player_motion.internal.math

        execute store result storage stellarity_desert_scourge:player_motion_math magnitude.x int 0.1 run scoreboard players get $motion_x player_motion.internal.math
        execute store result storage stellarity_desert_scourge:player_motion_math magnitude.y int 0.1 run scoreboard players get $motion_y player_motion.internal.math
        execute store result storage stellarity_desert_scourge:player_motion_math magnitude.z int 0.1 run scoreboard players get $motion_z player_motion.internal.math

        function stellarity_desert_scourge:player_motion/internal/math/full_power/trig with storage stellarity_desert_scourge:player_motion_math magnitude

# unitvector
    execute as d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f positioned 0.0 0.0 0.0 run function stellarity_desert_scourge:player_motion/internal/math/unitvector

# n_full_exp=floor(full_power/0.865)
    scoreboard players operation $n_full_exp player_motion.internal.math /= #constant.fpc player_motion.internal.const

# eyelevel=y(eyes)-y(player)
    function stellarity_desert_scourge:player_motion/internal/math/eyelevel

# xz_unitvector=sqrt(x_unitvector²+z_unitvector²)
    # Normalize
        execute if score $x_unitvector player_motion.internal.math matches ..-1 run \
            scoreboard players operation $x_unitvector player_motion.internal.math *= #constant.-1 player_motion.internal.const

        execute if score $z_unitvector player_motion.internal.math matches ..-1 run \
            scoreboard players operation $z_unitvector player_motion.internal.math *= #constant.-1 player_motion.internal.const

    # SuperSwordTW's method. Credit: https://github.com/SuperSwordTW/Distance-Trig-Calc-2d
        execute if score $z_unitvector player_motion.internal.math matches 0 run \
            scoreboard players operation $z_unitvector player_motion.internal.math >< $x_unitvector player_motion.internal.math

        execute store result storage stellarity_desert_scourge:player_motion_math magnitude.x int 0.1 run \
            scoreboard players get $x_unitvector player_motion.internal.math

        execute store result storage stellarity_desert_scourge:player_motion_math magnitude.z int 0.1 run \
            scoreboard players get $z_unitvector player_motion.internal.math

        function stellarity_desert_scourge:player_motion/internal/math/xz_unitvector/trig with storage stellarity_desert_scourge:player_motion_math magnitude


# sub power operations
    # sub_power=floor(full_power%0.8)
        scoreboard players operation $sub_power player_motion.internal.math %= #constant.fpc player_motion.internal.const
    # d12=1-sub_power
        scoreboard players set $d12 player_motion.internal.math 10000
        execute store result score $d player_motion.internal.math run \
            scoreboard players operation $d12 player_motion.internal.math -= $sub_power player_motion.internal.math

    # d=-(y_unitvector*eyelevel+sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|))
        # d=d12*12
            scoreboard players operation $d player_motion.internal.math *= #constant.12 player_motion.internal.const

        # temp=xz_unitvector*eyelevel
            scoreboard players operation $temp player_motion.internal.math *= $eyelevel player_motion.internal.math

            scoreboard players operation $temp player_motion.internal.math /= #constant.100 player_motion.internal.const

        # d=d²=(d12*12)²
            scoreboard players operation $d player_motion.internal.math /= #constant.10 player_motion.internal.const

            scoreboard players operation $d player_motion.internal.math *= $d player_motion.internal.math

        # temp=temp²=(xz_unitvector*eyelevel)² --> el_times_sin_all_squared
            scoreboard players operation $temp player_motion.internal.math *= $temp player_motion.internal.math

            execute store result score $el_times_sin_all_squared player_motion.internal.math run \
                scoreboard players operation $temp player_motion.internal.math /= #constant.100 player_motion.internal.const

        # d=d-temp=(d12*12)²-(xz_unitvector*eyelevel)²
            scoreboard players operation $d player_motion.internal.math -= $temp player_motion.internal.math

        # d=|d|=|(d12*12)²-(xz_unitvector*eyelevel)²|
            execute if score $d player_motion.internal.math matches ..-1 run \
                scoreboard players operation $d player_motion.internal.math *= #constant.-1 player_motion.internal.const

        # d=sqrt(d)=sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|)
            function stellarity_desert_scourge:player_motion/internal/math/d_sqrt
            scoreboard players operation $d player_motion.internal.math = $out player_motion.internal.math.sqrt

            scoreboard players operation $d player_motion.internal.math *= #constant.10 player_motion.internal.const

        # temp=y_unitvector*eyelevel --> el_times_cos
            scoreboard players operation $temp player_motion.internal.math = $y_unitvector player_motion.internal.math
            scoreboard players operation $temp player_motion.internal.math *= $eyelevel player_motion.internal.math

            execute store result score $el_times_cos player_motion.internal.math run \
                scoreboard players operation $temp player_motion.internal.math /= #constant.100 player_motion.internal.const

        # d=-(d+temp=y_unitvec*eyelevel+sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|))
            execute store result storage stellarity_desert_scourge:player_motion_math d double -0.0001 run \
                scoreboard players operation $d player_motion.internal.math += $temp player_motion.internal.math


# full power operations
    # d12=1-fpc
        scoreboard players set $d12 player_motion.internal.math 10000

        execute store result score $d player_motion.internal.math run \
            scoreboard players operation $d12 player_motion.internal.math -= #constant.fpc player_motion.internal.const

    # full_d=-(y_unitvector*eyelevel+sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|))
        # d=d12*12
            scoreboard players operation $d player_motion.internal.math = $d12 player_motion.internal.math

            scoreboard players operation $d player_motion.internal.math *= #constant.12 player_motion.internal.const

        # d=d²=(d12*12)²
            scoreboard players operation $d player_motion.internal.math /= #constant.10 player_motion.internal.const

            scoreboard players operation $d player_motion.internal.math *= $d player_motion.internal.math

        # d=d-el_times_sin_all_squared=(d12*12)²-(xz_unitvector*eyelevel)²
            scoreboard players operation $d player_motion.internal.math -= $el_times_sin_all_squared player_motion.internal.math

        # d=|d|=|(d12*12)²-(xz_unitvector*eyelevel)²|
            execute if score $d player_motion.internal.math matches ..-1 run \
                scoreboard players operation $d player_motion.internal.math *= #constant.-1 player_motion.internal.const

        # d=sqrt(d)=sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|)
            function stellarity_desert_scourge:player_motion/internal/math/d_sqrt

            scoreboard players operation $d player_motion.internal.math = $out player_motion.internal.math.sqrt

            scoreboard players operation $d player_motion.internal.math *= #constant.10 player_motion.internal.const

        # d=-(d+el_times_cos=y_unitvec*eyelevel+sqrt(|(d12*12)²-(xz_unitvector*eyelevel)²|))
            execute store result storage stellarity_desert_scourge:player_motion_math full_d double -0.0001 run \
                scoreboard players operation $d player_motion.internal.math += $el_times_cos player_motion.internal.math