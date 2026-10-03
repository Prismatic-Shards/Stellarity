# Trigger auto-teleport if owner holding both daggers is within 7 blocks of the spirit
execute if entity @p[predicate=stellarity:item/holding/spirit_dagger/both,distance=..7] at @s as @e[tag=stellarity.spirit_dagger.spirit,distance=..2] run tag @s add stellarity.spirit_dagger.dying
execute if entity @s[tag=stellarity.spirit_dagger.dying] at @s as @p[predicate=stellarity:item/holding/spirit_dagger/both,distance=..7] run function stellarity:item/spirit_dagger/effects/teleport
