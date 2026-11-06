scoreboard players add @s stellarity.item.sandstorm_trident.trail_pos 1 

# tellraw @a {"score": {"name": "@s","objective": "stellarity.item.sandstorm_trident.trail_pos"}}

particle minecraft:poof ~ ~ ~ 0 0 0 0.05 2

tp @n[type=marker,tag=stellarity.sandstorm_trident] ~ ~ ~
data modify entity @s Motion set from entity @n[type=marker,tag=stellarity.sandstorm_trident] data."stellarity:motion"

summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["stellarity.wind_tunnel","stellarity.area_effect_cloud","smithed.entity","smithed.strict"],custom_particle:{type:"block","block_state":"air"}}
scoreboard players operation @e[type=area_effect_cloud,tag=stellarity.wind_tunnel,distance=..1] stellarity.item.sandstorm_trident.trail_pos = @s stellarity.item.sandstorm_trident.trail_pos
scoreboard players operation @e[type=area_effect_cloud,tag=stellarity.wind_tunnel,distance=..1] stellarity.item.sandstorm_trident.id = @s stellarity.item.sandstorm_trident.id
