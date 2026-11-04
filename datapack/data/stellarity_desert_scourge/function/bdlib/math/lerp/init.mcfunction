##        BDLIB
##    math/lerp/init
##
## INPUT - #FROM, #TO, #STEP (bdlib.math.lerp)
##   1.0 = 100
##   #STEP - 1.0 = 1000
## OUTPUT - #OUT (bdlib.math.lerp)
##   1.0 = 100
##
##
## from + (to - from) * step

scoreboard players operation #TEMP bdlib.math.lerp = #TO bdlib.math.lerp
scoreboard players operation #TEMP bdlib.math.lerp -= #FROM bdlib.math.lerp
scoreboard players operation #TEMP bdlib.math.lerp *= #STEP bdlib.math.lerp
scoreboard players operation #TEMP bdlib.math.lerp /= #1000 bdlib.const
scoreboard players operation #OUT bdlib.math.lerp = #FROM bdlib.math.lerp
scoreboard players operation #OUT bdlib.math.lerp += #TEMP bdlib.math.lerp
return run scoreboard players get #OUT bdlib.math.lerp