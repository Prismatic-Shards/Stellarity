# Release all items orbiting this altar
execute at @s as @e[type=item,distance=..3.0] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.15,0.0]}
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.captured
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.init
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slotted
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot1
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot2
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot3
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot4
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot5
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot6
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot7
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.slot8
execute at @s as @e[type=item,distance=..3.0] run tag @s remove stellarity.altar.in_craft
execute at @s as @e[type=item,distance=..3.0] run scoreboard players reset @s stellarity.altar_id
execute at @s run tp @e[type=item,distance=..3.0] ~ ~0.5 ~

kill @s

kill @n[type=item,nbt={Item:{id:"minecraft:crying_obsidian"}}]
execute positioned ~ ~1 ~ run kill @n[type=marker,distance=..0.01,tag=stellarity.altar_of_the_sacred]

execute as @p store result score #has_altar stellarity.misc run clear @s[gamemode=creative] chiseled_quartz_block[custom_data={"stellarity:item":"altar_of_the_sacred"}] 0
execute unless score #has_altar stellarity.misc matches 1.. run loot spawn ~ ~ ~ loot stellarity:block/altar_of_the_sacred

execute align xyz positioned ~.5 ~0.5 ~.5 run playsound minecraft:block.amethyst_cluster.break block @a[distance=0..] ~ ~ ~ 1 0.5

execute align xyz positioned ~.5 ~0.5 ~.5 run particle block{block_state:"minecraft:chiseled_quartz_block"} ~ ~ ~ 0.4 0.4 0.4 1 40
execute align xyz positioned ~.5 ~0.5 ~.5 run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 21 normal
