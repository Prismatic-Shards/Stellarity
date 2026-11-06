# Falling animation
execute as @e[type=item_display,tag=stellarity.empress_of_light.falling] at @s if block ~ ~-0.25 ~ #minecraft:air run tp @s ~ ~-0.2 ~
execute as @e[type=item_display,tag=stellarity.empress_of_light.falling] at @s unless block ~ ~-0.25 ~ #minecraft:air run function stellarity:entity/empress_of_light/animations/death/corpse_land

# Subtle ambient dream particles around corpse
execute as @e[type=item_display,tag=stellarity.empress_of_light.corpse] at @s run particle dust{color:[1.0,0.9,0.4],scale:0.8} ~ ~0.2 ~ 0.4 0.1 0.4 0 1

# Player interaction check (clearing interaction immediately to prevent tick loop)
execute as @e[type=interaction,tag=stellarity.empress_of_light.corpse_hitbox] if data entity @s interaction on target run function stellarity:entity/empress_of_light/animations/death/corpse_interact
execute as @e[type=interaction,tag=stellarity.empress_of_light.corpse_hitbox] run data remove entity @s interaction
execute as @e[type=interaction,tag=stellarity.empress_of_light.corpse_hitbox] run data remove entity @s attack
