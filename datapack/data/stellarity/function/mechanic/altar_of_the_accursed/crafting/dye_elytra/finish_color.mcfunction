$particle minecraft:dust{color:$(particle_color), scale:1.6} ~ ~0.5 ~ 0.25 0.2 0.25 0.08 32 normal
particle minecraft:wax_on ~ ~0.5 ~ 0.2 0.2 0.2 0.05 12 normal
particle minecraft:enchant ~ ~0.5 ~ 0.3 0.2 0.3 0.6 15 normal

playsound minecraft:ui.cartography_table.take_result block @a[distance=0..] ~ ~0.45 ~ 0.8 1.1
playsound minecraft:ui.loom.take_result block @a[distance=0..] ~ ~0.45 ~ 0.8 1.1

advancement grant @p only stellarity:altar_of_the_accursed/dye_elytra

execute as @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra,limit=1] run function stellarity:mechanic/altar_of_the_accursed/crafting/dye_elytra/apply_color with storage stellarity:temp altar.craft

execute as @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra,limit=1] run data merge entity @s {PickupDelay:0s,NoGravity:0b,Age:0s}
tag @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] add stellarity.altar.skip
tag @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] add stellarity.altar_of_the_accursed.skip
tag @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] remove stellarity.altar.in_craft
tag @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] remove stellarity.altar.captured
