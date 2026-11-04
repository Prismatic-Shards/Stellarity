##        BDLIB
##    math/power/init
##
## INPUT - #IN, #POWER (bdlib.math.power)
## OUTPUT - #OUT (bdlib.math.power)

scoreboard players set #OUT bdlib.math.power 1
execute if score #POWER bdlib.math.power matches 1.. run function stellarity_desert_scourge:bdlib/math/power/_loop

return run scoreboard players get #POWER bdlib.math.power