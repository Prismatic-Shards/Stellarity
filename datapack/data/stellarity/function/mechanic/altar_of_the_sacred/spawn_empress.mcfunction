execute store result score #count stellarity.misc run data get entity @s Item.count 1

scoreboard players set #1 stellarity.misc 1
scoreboard players operation #count stellarity.misc -= #1 stellarity.misc

scoreboard players set #empress_of_light.is_radiant stellarity.misc 0

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @p[distance=..16,predicate=stellarity:item/holding/kaleidoscope] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @s[tag=stellarity.starlight_soot.radiant] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 \
if entity @n[type=item,tag=stellarity.starlight_soot.radiant] \
run scoreboard players set #empress_of_light.is_radiant stellarity.misc 1

execute if score #count stellarity.misc matches 1.. store result entity @s Item.count byte 1 run scoreboard players get #count stellarity.misc
execute if score #count stellarity.misc matches ..0 run kill @s

particle explosion ~ ~ ~ 0 0 0 1 0 force @a[distance=..128]
particle smoke ~ ~ ~ 0 0 0 0.12 14 normal
particle end_rod ~ ~ ~ 0 0 0 0.12 28 normal

playsound minecraft:entity.allay.item_taken block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

scoreboard players set #empress_of_light.is_alive stellarity.misc 1

function stellarity:entity/empress_of_light/summon
