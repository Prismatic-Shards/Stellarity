execute if entity @s[predicate=stellarity:item/holding/harvester] run function stellarity:item/harvester/main

execute if items entity @s weapon.mainhand bread[minecraft:custom_data~{"stellarity:item":"loaf_of_plenty",stellarity.loaf_of_plenty_final:1b},minecraft:food={nutrition:1,saturation:1}] run item modify entity @s weapon.mainhand stellarity:loaf_of_plenty_make_infinite

scoreboard players reset @s stellarity.misc.loop.3t


# Abyss audio loop below Y = -1
    execute if predicate stellarity:location/in_abyss run function stellarity:mechanic/abyss/loop
    execute unless predicate stellarity:location/in_abyss if score @s stellarity.abyss.sound_loop matches 1.. run function stellarity:mechanic/abyss/stop

execute if score #stellarity.void_focus stellarity.void_focus.active matches 1.. run function stellarity:mechanic/void_focus/active_tick

execute if score #stellarity.sandstorm stellarity.weather.active matches 1.. if predicate stellarity:location/in_biome/in_sandstorm_biome run function stellarity:mechanic/sandstorm/loop
execute unless predicate stellarity:location/in_biome/in_sandstorm_biome if score @s stellarity.sandstorm.sound_loop matches 1.. run function stellarity:mechanic/sandstorm/stop
execute if score #stellarity.sandstorm stellarity.weather.active matches ..0 if score @s stellarity.sandstorm.sound_loop matches 1.. run function stellarity:mechanic/sandstorm/stop

execute if score #stellarity.blizzard stellarity.weather.active matches 1.. if predicate stellarity:location/in_biome/in_blizzard_biome run function stellarity:mechanic/blizzard/loop
execute unless predicate stellarity:location/in_biome/in_blizzard_biome if score @s stellarity.blizzard.sound_loop matches 1.. run function stellarity:mechanic/blizzard/stop
execute if score #stellarity.blizzard stellarity.weather.active matches ..0 if score @s stellarity.blizzard.sound_loop matches 1.. run function stellarity:mechanic/blizzard/stop

execute if score #stellarity.acid_rain stellarity.weather.active matches 1.. if predicate stellarity:location/in_biome/in_acid_rain_biome run function stellarity:mechanic/acid_rain/loop
execute unless predicate stellarity:location/in_biome/in_acid_rain_biome if score @s stellarity.acid_rain.sound_loop matches 1.. run function stellarity:mechanic/acid_rain/stop
execute if score #stellarity.acid_rain stellarity.weather.active matches ..0 if score @s stellarity.acid_rain.sound_loop matches 1.. run function stellarity:mechanic/acid_rain/stop


