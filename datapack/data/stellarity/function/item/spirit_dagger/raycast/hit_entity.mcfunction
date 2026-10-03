scoreboard players set #hit stellarity.misc 1

tag @s add stellarity.spirit_dagger.dying
execute at @s as @e[tag=stellarity.spirit_dagger.spirit,distance=..2] run tag @s add stellarity.spirit_dagger.dying

execute at @e[tag=stellarity.spirit_dagger.dying,type=marker,limit=1] as @a[tag=stellarity.spirit_dagger.raycast] run function stellarity:item/spirit_dagger/effects/teleport
execute unless entity @a[tag=stellarity.spirit_dagger.raycast] at @e[tag=stellarity.spirit_dagger.dying,type=marker,limit=1] as @p[scores={stellarity.item.spirit_dagger.consume_time=10}] run function stellarity:item/spirit_dagger/effects/teleport
