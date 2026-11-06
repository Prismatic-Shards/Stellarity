tag @s add stellarity.sandstorm_trident.activated

scoreboard players operation #temp stellarity.item.sandstorm_trident.id = @s stellarity.item.sandstorm_trident.id

execute if score @s stellarity.item.sandstorm_trident.trail_pos matches ..5 as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel] if score @s stellarity.item.sandstorm_trident.id = #temp stellarity.item.sandstorm_trident.id run kill @s
execute if score @s stellarity.item.sandstorm_trident.trail_pos matches ..5 run return fail

execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel] \
if score @s stellarity.item.sandstorm_trident.id = #temp stellarity.item.sandstorm_trident.id run tag @s add stellarity.wind_tunnel.activated
execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel] \
if score @s stellarity.item.sandstorm_trident.id = #temp stellarity.item.sandstorm_trident.id run data merge entity @s {Duration:300,Age:0}

tag @e[type=area_effect_cloud,tag=stellarity.wind_tunnel,scores={stellarity.item.sandstorm_trident.trail_pos=40}] add stellarity.wind_tunnel.end

kill @n[type=marker,tag=stellarity.sandstorm_trident]
