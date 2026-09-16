execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_flying/play_exclusive
summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5, Tags: ["stellarity.empress_of_light.teleport","smithed.entity","smithed.strict"],custom_particle:{type:"block","block_state":"air"}}
execute as @n[type=area_effect_cloud,tag=stellarity.empress_of_light.teleport] at @s rotated as @p rotated ~ 0 run tp ~ ~ ~

execute as @n[type=area_effect_cloud,tag=stellarity.empress_of_light.teleport] at @s run function stellarity:entity/empress_of_light/attacks/teleport_as_area_effect_cloud

execute as @s at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Attack cooldown
  execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 10
  execute if entity @s[tag=stellarity.empress_of_light.nighttime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 8

execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 7
execute if entity @s[tag=stellarity.empress_of_light.daytime,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 5

execute if entity @s[tag=stellarity.empress_of_light.radiant,tag=stellarity.empress_of_light.phase_1] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 6
execute if entity @s[tag=stellarity.empress_of_light.radiant,tag=stellarity.empress_of_light.phase_2] run scoreboard players set @s stellarity.empress_of_light.attack_cooldown 4
