scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run playsound minecraft:entity.wither.shoot block @a[distance=0..] ~ ~ ~
execute if score @s stellarity.misc matches 1 run playsound minecraft:block.glass.break block @a[distance=0..] ~ ~ ~ 1 0.8

execute if score @s stellarity.misc matches 1..40 run particle enchant ~ ~1 ~ 0 0 0 4 6 force
execute if score @s stellarity.misc matches 1..40 run particle portal ~ ~1 ~ 0 0 0 4 6 force

execute if score @s stellarity.misc matches 70.. run function stellarity:structure/end_city/crystal/spawn_chest
