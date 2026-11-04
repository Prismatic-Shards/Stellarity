##        BDLIB
##    vector/lerp/init
##
## INPUT - #X1, #Y1, #Z1, #X2, #Y2, #Z2, #STEP (bdlib.vector)
##   1.0 = 100
##   #STEP - 1.0 = 1000
## OUTPUT - #V.X, #V.Y, #V.Z (bdlib.vector), vector.out (storage stellarity_desert_scourge:bdlib_temp)
##   1.0 = 100

scoreboard players operation #STEP bdlib.math.lerp = #STEP bdlib.vector
data modify storage stellarity_desert_scourge:bdlib_temp vector.out set value [0d, 0d, 0d]

scoreboard players operation #FROM bdlib.math.lerp = #X1 bdlib.vector
scoreboard players operation #TO bdlib.math.lerp = #X2 bdlib.vector
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[0] double 0.01 store result score #V.X bdlib.vector run function stellarity_desert_scourge:bdlib/math/lerp/init
scoreboard players operation #FROM bdlib.math.lerp = #Y1 bdlib.vector
scoreboard players operation #TO bdlib.math.lerp = #Y2 bdlib.vector
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[1] double 0.01 store result score #V.Y bdlib.vector run function stellarity_desert_scourge:bdlib/math/lerp/init
scoreboard players operation #FROM bdlib.math.lerp = #Z1 bdlib.vector
scoreboard players operation #TO bdlib.math.lerp = #Z2 bdlib.vector
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[2] double 0.01 store result score #V.Z bdlib.vector run function stellarity_desert_scourge:bdlib/math/lerp/init