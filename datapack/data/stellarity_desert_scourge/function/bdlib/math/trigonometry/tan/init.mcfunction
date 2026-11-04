##        BDLIB
##    math/trigonometry/tan/init
##
## INPUT - #IN (bdlib.math.tan)
##   1° = 1
##   EXCEPTIONS - 90, 270, 450, ...
## OUTPUT - #OUT (bdlib.math.tan)

execute store result storage stellarity_desert_scourge:bdlib_temp math.tan.index int 1 run scoreboard players operation #IN bdlib.math.tan %= #180 bdlib.const
execute store result score #OUT bdlib.math.tan run function stellarity_desert_scourge:bdlib/math/trigonometry/tan/_macros with storage stellarity_desert_scourge:bdlib_temp math.tan

execute if score #IN bdlib.math.tan matches 90 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! tan(90°) is undefined!\n Function - \"bdlib:math/trigonometry/tan/init\""}]
return run scoreboard players get #OUT bdlib.math.tan