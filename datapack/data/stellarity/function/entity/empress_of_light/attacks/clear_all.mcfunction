# Visual effects for disappearing swords/projectiles
execute as @e[distance=..128,type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s run particle minecraft:flash{color:-2299603} ~ ~ ~ 0 0 0 0 1 force
execute as @e[distance=..128,type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s run particle dust{color:[1.0,0.85,0.2],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 0 8 force

# Swords
kill @e[distance=..128,type=item_display,tag=stellarity.empress_of_light.ethereal_lance]
kill @e[distance=..128,type=!vindicator,tag=stellarity.empress_of_light.ethereal_lance]
kill @e[distance=..128,type=area_effect_cloud,tag=stellarity.empress_of_light.ethereal_lance.pick_point]

# Bolts
kill @e[distance=..128,type=marker,tag=stellarity.empress_of_light.prismatic_bolt]
kill @e[distance=..128,type=marker,tag=stellarity.empress_of_light.prismatic_bolt_2]

# Evercomets
kill @e[distance=..128,type=marker,tag=stellarity.empress_of_light.evercomets]

# Teleport clouds
kill @e[distance=..128,type=area_effect_cloud,tag=stellarity.empress_of_light.teleport]
