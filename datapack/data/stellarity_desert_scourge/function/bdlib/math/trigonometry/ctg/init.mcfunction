##        BDLIB
##    math/trigonometry/ctg/init
##
## INPUT - #IN (bdlib.math.ctg)
##   1° = 1
##   EXCEPTIONS - 0, 90, 180, ...
## OUTPUT - #OUT (bdlib.math.ctg)

execute store result storage stellarity_desert_scourge:bdlib_temp math.ctg.index int 1 run scoreboard players operation #IN bdlib.math.ctg %= #180 bdlib.const
execute store result score #OUT bdlib.math.ctg run function stellarity_desert_scourge:bdlib/math/trigonometry/ctg/_macros with storage stellarity_desert_scourge:bdlib_temp math.ctg

execute if score #IN bdlib.math.ctg matches 0 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! ctg(0°) is undefined!\n Function - \"bdlib:math/trigonometry/ctg/init\""}]
execute if score #IN bdlib.math.ctg matches 90 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! ctg(90°) is undefined!\n Function - \"bdlib:math/trigonometry/ctg/init\""}]
return run scoreboard players get #OUT bdlib.math.ctg