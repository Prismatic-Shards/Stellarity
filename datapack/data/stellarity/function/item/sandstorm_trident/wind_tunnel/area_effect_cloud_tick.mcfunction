scoreboard players add @s stellarity.misc 1

execute if entity @s[tag=!stellarity.wind_tunnel.activated] run particle dust{color:[0.722, 0.239, 0.859],scale:1} ~ ~ ~ 0.15 0.15 0.15 0 1 force @a[distance=..128]
execute if entity @s[tag=stellarity.wind_tunnel.activated] run function stellarity:item/sandstorm_trident/wind_tunnel/sfx/ring_tick

execute if entity @s[tag=stellarity.wind_tunnel.activated,scores={stellarity.misc=30..}] run function stellarity:item/sandstorm_trident/wind_tunnel/sfx/ring
scoreboard players reset @s[scores={stellarity.misc=30..}] stellarity.misc

execute if entity @s[tag=stellarity.wind_tunnel.activated] as @n[type=!#kohara:invalid_targets,predicate=!kohara:player/is_sneaking,distance=..2.5] at @s run function stellarity:item/sandstorm_trident/wind_tunnel/movement/tick

scoreboard players add @s stellarity.misc2 1
execute at @s[scores={stellarity.misc2=2}] facing entity @n[type=trident,tag=stellarity.sandstorm_trident] eyes run tp @s ~ ~ ~ ~ ~

execute if predicate kohara:chance/1percent run playsound minecraft:entity.breeze.slide player @p ~ ~ ~ 0.5 1
