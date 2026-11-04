scoreboard players operation #OUT bdlib.math.power *= #IN bdlib.math.power
scoreboard players remove #POWER bdlib.math.power 1
execute if score #POWER bdlib.math.power matches 1.. run function stellarity_desert_scourge:bdlib/math/power/_loop