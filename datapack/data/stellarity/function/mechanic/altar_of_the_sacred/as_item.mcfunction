data modify storage stellarity:temp altar_of_the_sacred.item set from entity @s Item

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"treasure_head"}}}}} run \
function stellarity:mechanic/altar_of_the_sacred/reroll

scoreboard players set #is_starlight_soot stellarity.misc 0
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity.item":"starlight_soot"}}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{stellarity:{item:"starlight_soot"}}}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{tag:{"stellarity.item":"starlight_soot"}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{tag:{"stellarity:item":"starlight_soot"}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if data storage stellarity:temp {altar_of_the_sacred:{item:{tag:{stellarity:{item:"starlight_soot"}}}}} run scoreboard players set #is_starlight_soot stellarity.misc 1
execute if entity @s[tag=stellarity.starlight_soot] run scoreboard players set #is_starlight_soot stellarity.misc 1

execute if predicate stellarity:entity/empress_of_light/is_daytime if score #stellarity.config stellarity.config.enable_empress_of_light matches 1 \
if score #stellarity.config stellarity.config.enable_daytime_empress_of_light matches 1 unless score #difficulty stellarity.misc matches 0 \
unless score #empress_of_light.is_alive stellarity.misc matches 1 \
unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] \
unless entity @e[type=vindicator,tag=stellarity.empress_of_light] \
if score #is_starlight_soot stellarity.misc matches 1 run \
function stellarity:mechanic/altar_of_the_sacred/spawn_empress

execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #stellarity.config stellarity.config.enable_empress_of_light matches 1 \
if score #stellarity.config stellarity.config.enable_nighttime_empress_of_light matches 1 unless score #difficulty stellarity.misc matches 0 \
unless score #empress_of_light.is_alive stellarity.misc matches 1 \
unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] \
unless entity @e[type=vindicator,tag=stellarity.empress_of_light] \
if score #is_starlight_soot stellarity.misc matches 1 run \
function stellarity:mechanic/altar_of_the_sacred/spawn_empress

execute unless predicate stellarity:entity/empress_of_light/is_daytime if predicate stellarity:location/in_the_end if score #stellarity.config stellarity.config.enable_empress_of_light matches 1 \
if score #stellarity.config stellarity.config.enable_nighttime_empress_of_light matches 1 unless score #difficulty stellarity.misc matches 0 \
unless score #empress_of_light.is_alive stellarity.misc matches 1 \
unless entity @e[type=marker,tag=stellarity.empress_of_light.spawn_animation] \
unless entity @e[type=vindicator,tag=stellarity.empress_of_light] \
if score #is_starlight_soot stellarity.misc matches 1 run \
function stellarity:mechanic/altar_of_the_sacred/spawn_empress

execute if score #stellarity.config stellarity.config.enable_shulking matches 1 unless score #difficulty stellarity.misc matches 0 unless entity @n[type=allay,tag=stellarity.shulking,distance=..100] \
if data storage stellarity:temp {altar_of_the_sacred:{item:{components:{"minecraft:custom_data":{"stellarity:item":"shulker_body"}}}}} if predicate stellarity:location/in_the_end run \
function stellarity:mechanic/altar_of_the_sacred/spawn_shulking

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:iron_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/iron

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:gold_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/gold

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:emerald"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/emerald

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:diamond"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/diamond

execute if data storage stellarity:temp {altar_of_the_sacred:{item:{id:"minecraft:netherite_ingot"}}} run \
function stellarity:mechanic/altar_of_the_sacred/bless/materials/netherite
