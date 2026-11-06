execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] run data remove entity @s Item.components."minecraft:lore"[0]
execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] run data remove entity @s Item.components."minecraft:lore".[0]
execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.elytra] run data remove entity @s Item.components."minecraft:custom_data"."stellarity:elytra_color"

# Consume water bucket (replace with empty bucket)
data modify entity @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.water_bucket] Item.id set value "minecraft:bucket"
tag @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.water_bucket] remove stellarity.altar_of_the_accursed.minecraft.water_bucket

# Consume white dye (decrement count or kill item)
execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.white_dye] run scoreboard players remove @s stellarity.altar_of_the_accursed.count 1
execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.white_dye] if score @s stellarity.altar_of_the_accursed.count matches 1.. run execute store result entity @s Item.count int 1 run scoreboard players get @s stellarity.altar_of_the_accursed.count
execute as @n[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.minecraft.white_dye] if score @s stellarity.altar_of_the_accursed.count matches ..0 run kill @s

# Make uncolored elytra pickable immediately
tag @e[type=item,distance=..2.5] add stellarity.altar_of_the_accursed.skip
tag @e[type=item,distance=..2.5] add stellarity.altar.skip
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.skip] run data merge entity @s {PickupDelay:0s,NoGravity:0b}
tag @e[type=item,distance=..2.5] remove stellarity.altar.captured
tag @e[type=item,distance=..2.5] remove stellarity.altar.init

particle minecraft:flash{color:-1} ~ ~-.4 ~ 0 0 0 0 0 force @a[distance=..32]
particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 force @a[distance=..32]
particle minecraft:splash ~ ~-.4 ~ 0.25 0.25 0.25 1 31 normal

playsound minecraft:entity.generic.splash block @a[distance=0..] ~ ~-.4 ~ 1 2
playsound minecraft:entity.generic.splash block @a[distance=0..] ~ ~-.4 ~ 1 1.2

playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 2
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 0.25 1
