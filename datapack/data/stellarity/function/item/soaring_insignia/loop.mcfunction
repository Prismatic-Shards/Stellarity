execute if entity @s[predicate=kohara:player/is_sneaking] at @s unless block ~ ~ ~ #kohara:liquids run function stellarity:item/soaring_insignia/checks_sneaking
execute if entity @s[tag=stellarity.insignia.flying] run function stellarity:item/soaring_insignia/gravity_0
execute if entity @s[predicate=!kohara:player/is_sneaking,tag=stellarity.insignia.flying] run function stellarity:item/soaring_insignia/hover

execute if data entity @s[tag=stellarity.insignia.flying] {OnGround:1b} unless entity @s[predicate=kohara:player/is_sneaking,x_rotation=-90..-15] run function stellarity:item/soaring_insignia/stop_flight

execute at @s if block ~ ~ ~ #kohara:liquids run function stellarity:item/soaring_insignia/stop_flight
