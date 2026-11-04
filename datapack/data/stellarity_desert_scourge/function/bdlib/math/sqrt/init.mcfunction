##        BDLIB
##    math/sqrt/#INit
##
## #INPUT - #IN (bdlib.math.sqrt)
##   1.0 = 100
##   0 < #IN < 214748
## OUTPUT - #OUT (bdlib.math.sqrt)
##
## AUTHOR: CloudWolf (https://www.youtube.com/channel/UCZnBqVITQ0dloqUU0fGxY3g)

execute if score #IN bdlib.math.sqrt matches 214748.. run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! Input too large!\n Function - \"bdlib:math/sqrt/init\""}]
execute if score #IN bdlib.math.sqrt matches ..-1 run tellraw @a [{"bold":true,"color":"gold","text":"[BDLib] "},{"bold":false,"color":"red","text":"⚠ ERROR - Incorrect input! Imaginary number!\n Function - \"bdlib:math/sqrt/init\""}]

scoreboard players operation #TEMP bdlib.math.sqrt = #IN bdlib.math.sqrt
scoreboard players operation #IN bdlib.math.sqrt *= #100 bdlib.const

scoreboard players set #OUT bdlib.math.sqrt 1255

function stellarity_desert_scourge:bdlib/math/sqrt/_iteration
function stellarity_desert_scourge:bdlib/math/sqrt/_iteration
function stellarity_desert_scourge:bdlib/math/sqrt/_iteration
function stellarity_desert_scourge:bdlib/math/sqrt/_iteration
execute if score #TEMP bdlib.math.sqrt matches 10000.. run function stellarity_desert_scourge:bdlib/math/sqrt/_iteration
execute if score #TEMP bdlib.math.sqrt matches 100000.. run function stellarity_desert_scourge:bdlib/math/sqrt/_iteration

execute if score #OUT bdlib.math.sqrt matches ..0 run scoreboard players operation #OUT bdlib.math.sqrt *= #-1 bdlib.const
scoreboard players operation #IN bdlib.math.sqrt = #TEMP bdlib.math.sqrt

return run scoreboard players get #OUT bdlib.math.sqrt