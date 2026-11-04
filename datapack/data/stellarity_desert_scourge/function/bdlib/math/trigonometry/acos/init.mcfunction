##        BDLIB
##    math/trigonometry/acos/init
##
## INPUT - #IN (bdlib.math.acos)
##   1.0 = 1000
##   -1000 < #IN < 1000
## OUTPUT - #OUT (bdlib.math.acos)
##   1.0 = 1000

execute store result storage stellarity_desert_scourge:bdlib_temp math.acos.index int 1 run scoreboard players add #IN bdlib.math.acos 1000
execute store result score #OUT bdlib.math.acos run function stellarity_desert_scourge:bdlib/math/trigonometry/acos/_macros with storage stellarity_desert_scourge:bdlib_temp math.acos

execute if score #IN bdlib.math.acos matches ..-1 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! -1.0 < #IN < 1.0!\n Function - \"bdlib:math/trigonometry/acos/init\""}]
execute if score #IN bdlib.math.acos matches 2000.. run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! -1.0 < #IN < 1.0!\n Function - \"bdlib:math/trigonometry/acos/init\""}]
return run scoreboard players get #OUT bdlib.math.acos