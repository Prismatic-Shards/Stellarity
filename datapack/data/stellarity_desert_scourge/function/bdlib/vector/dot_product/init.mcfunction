##        BDLIB
##    vector/dot_product/init
##
## INPUT - #X1, #Y1, #Z1, #X2, #Y2, #Z2 (bdlib.vector)
##   1.0 = 100
## OUTPUT - #OUT (bdlib.vector)

scoreboard players operation #X1 bdlib.vector *= #X2 bdlib.vector
scoreboard players operation #X1 bdlib.vector /= #100 bdlib.const
scoreboard players operation #Y1 bdlib.vector *= #Y2 bdlib.vector
scoreboard players operation #Y1 bdlib.vector /= #100 bdlib.const
scoreboard players operation #Z1 bdlib.vector *= #Z2 bdlib.vector
scoreboard players operation #Z1 bdlib.vector /= #100 bdlib.const

scoreboard players operation #OUT bdlib.vector = #X1 bdlib.vector
scoreboard players operation #OUT bdlib.vector += #Y1 bdlib.vector
scoreboard players operation #OUT bdlib.vector += #Z1 bdlib.vector

return run scoreboard players get #OUT bdlib.vector