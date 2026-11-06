execute positioned ~ ~0.8 ~ run kill @e[type=item_display,distance=..1.1]
execute positioned ~ ~0.8 ~ run kill @e[type=interaction,distance=..1.1]

scoreboard players reset @n[type=marker,tag=stellarity.cauldron_crafting] stellarity.mechanics.cauldron_crafting.items_inside
execute as @n[type=marker,tag=stellarity.cauldron_crafting,scores={stellarity.mechanics.cauldron_crafting.breath_left=..0}] run kill @s

execute store result storage stellarity:temp cauldron_crafting.result.x double 0.001 run random value -130..130
execute store result storage stellarity:temp cauldron_crafting.result.z double 0.001 run random value -130..130

function stellarity:mechanic/cauldron_crafting/crafting/spawn_result_item with storage stellarity:temp cauldron_crafting.result

setblock ~ ~ ~ cauldron replace
setblock ~ ~ ~ water_cauldron[level=3] replace

particle end_rod ~ ~.75 ~ 0.25 0.25 0.25 0.01 17
particle poof ~ ~0.45 ~ 0.25 0 0.25 0 10

playsound entity.generic.swim block @a[distance=0..] ~ ~ ~ 0.75 0.7
playsound item.bottle.fill_dragonbreath block @a[distance=0..] ~ ~ ~ 1 0.85
playsound block.brewing_stand.brew block @a[distance=0..] ~ ~ ~ 1 0.8
