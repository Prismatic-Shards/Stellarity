# ste_cos:fresh_visual/earthquake_tick

scoreboard players add #earthquake_snd ste_cos.flags 1
execute if score #earthquake_snd ste_cos.flags matches 20.. run scoreboard players set #earthquake_snd ste_cos.flags 0
execute if score #earthquake_snd ste_cos.flags matches 1 in minecraft:the_end positioned 0 65 0 as @a[distance=..200] at @s run playsound block.basalt.fall ambient @s ~ ~ ~ 0.35 0.5

execute in minecraft:the_end positioned 0 65 0 as @a[distance=..200] at @s if predicate stellarity:chance/30_percent run particle dust{color:[0.75,0.2,0.95],scale:0.8} ~ ~0.05 ~ 1.5 0.02 1.5 0 2 force
