##        BDLIB
##    vector/get_distance/init
##
## INPUT - #X, #Y, #Z (bdlib.vector)
##   1.0 = 100
## OUTPUT - #OUT (bdlib.vector)
##
## AUTHOR: https://github.com/SuperSwordTW/Distance-Trig-Calc-3d/tree/main

execute if score #Y bdlib.vector matches 0 run scoreboard players operation #Y bdlib.vector >< #X bdlib.vector
execute if score #Y bdlib.vector matches 0 run scoreboard players operation #Y bdlib.vector >< #Z bdlib.vector
execute if score #X bdlib.vector matches ..-1 run scoreboard players operation #X bdlib.vector *= #-1 bdlib.const
execute if score #Y bdlib.vector matches ..-1 run scoreboard players operation #Y bdlib.vector *= #-1 bdlib.const
execute if score #Z bdlib.vector matches ..-1 run scoreboard players operation #Z bdlib.vector *= #-1 bdlib.const
execute store result storage stellarity_desert_scourge:bdlib_temp vector.get_distance.x float 0.01 run scoreboard players get #X bdlib.vector
execute store result storage stellarity_desert_scourge:bdlib_temp vector.get_distance.y float 0.01 run scoreboard players get #Y bdlib.vector
execute store result storage stellarity_desert_scourge:bdlib_temp vector.get_distance.z float 0.01 run scoreboard players get #Z bdlib.vector
function stellarity_desert_scourge:bdlib/vector/get_distance/_trig with storage stellarity_desert_scourge:bdlib_temp vector.get_distance
return run scoreboard players get #OUT bdlib.vector