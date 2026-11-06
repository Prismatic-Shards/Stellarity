execute store result score #fabric stellarity.misc run loot spawn ~ ~ ~ loot stellarity:waystone_compatibility/fabric
execute store result score #forge stellarity.misc run loot spawn ~ ~ ~ loot stellarity:waystone_compatibility/forge

kill @n[type=item]

scoreboard players set #double stellarity.misc 0
execute if score #fabric stellarity.misc matches 1 run scoreboard players set #double stellarity.misc 1
execute if score #forge stellarity.misc matches 1 run scoreboard players set #double stellarity.misc 1

execute if score #fabric stellarity.misc matches 1 run data merge storage stellarity:temp {waystone_compatibility:{"id":"fwaystones:end_stone_brick_waystone","blockstate":"active=false,generated=false,mossy=false,waterlogged=false"}}
execute if score #forge stellarity.misc matches 1 run data merge storage stellarity:temp {waystone_compatibility:{"id":"waystones:waystone","blockstate":"origin=player,waterlogged=false"}}

execute if score #double stellarity.misc matches 0 run setblock ~ ~ ~ lodestone
execute if score #double stellarity.misc matches 1 run function stellarity:post_gen/waystone_place with storage stellarity:temp waystone_compatibility

kill @s[type=marker]
