tag @s add stellarity.in_wind_tunnel
scoreboard players operation #id stellarity.misc = @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] stellarity.item.sandstorm_trident.id
scoreboard players operation #current_segment stellarity.misc = @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] stellarity.item.sandstorm_trident.trail_pos
scoreboard players remove #current_segment stellarity.misc 1

# execute at @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated] run 
  summon block_display ~ ~ ~ {block_state:{id:"minecraft:air"},Tags:["stellarity.sandstorm_trident","smithed.entity","smithed.strict"],start_interpolation:-1,teleport_duration:1}

ride @s mount @n[type=block_display,tag=stellarity.sandstorm_trident]

scoreboard players operation @n[type=block_display,tag=stellarity.sandstorm_trident] stellarity.item.sandstorm_trident.id = #id stellarity.misc

execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel.end] \
if score @s stellarity.item.sandstorm_trident.id = #id stellarity.misc \
run function stellarity:item/sandstorm_trident/wind_tunnel/movement/prepare_block

execute as @n[type=block_display,tag=stellarity.sandstorm_trident] at @s facing entity @n[type=area_effect_cloud,tag=stellarity.scheduled,tag=stellarity.wind_tunnel.end] eyes run tp @s ~ ~ ~ ~ ~
tag @n[type=area_effect_cloud,tag=stellarity.scheduled,tag=stellarity.wind_tunnel.end] remove stellarity.scheduled

scoreboard players set #ticks_per_segment stellarity.misc 3
scoreboard players operation @n[type=block_display,tag=stellarity.sandstorm_trident] stellarity.misc2 *= #ticks_per_segment stellarity.misc

# execute as @n[type=block_display,tag=stellarity.sandstorm_trident] at @s run tp @s ~ ~-1 ~

playsound minecraft:item.elytra.flying player @p[distance=..1] ~ ~ ~ 0.3 1.1
