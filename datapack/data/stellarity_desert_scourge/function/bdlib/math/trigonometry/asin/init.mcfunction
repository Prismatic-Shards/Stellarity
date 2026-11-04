##        BDLIB
##    math/trigonometry/asin/init
##
## INPUT - #IN (bdlib.math.asin)
##   1.0 = 1000
##   -1000 < #IN < 1000
## OUTPUT - #OUT (bdlib.math.asin)
##   1.0 = 1000

execute store result storage stellarity_desert_scourge:bdlib_temp math.asin.index int 1 run scoreboard players add #IN bdlib.math.asin 1000
execute store result score #OUT bdlib.math.asin run function stellarity_desert_scourge:bdlib/math/trigonometry/asin/_macros with storage stellarity_desert_scourge:bdlib_temp math.asin

execute if score #IN bdlib.math.asin matches ..-1 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! -1.0 < #IN < 1.0!\n Function - \"bdlib:math/trigonometry/asin/init\""}]
execute if score #IN bdlib.math.asin matches 2000.. run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! -1.0 < #IN < 1.0!\n Function - \"bdlib:math/trigonometry/asin/init\""}]
return run scoreboard players get #OUT bdlib.math.asin