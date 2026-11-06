execute as @n[type=block_display,tag=stellarity.cryonics] on passengers as @s run kill @s
kill @n[type=block_display,tag=stellarity.cryonics]

particle minecraft:block{block_state: 'minecraft:ice'} ~ ~0.5 ~ 0.5 0.7 0.5 1 40
particle flash{color:-1} ~ ~1 ~

playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 0.8

effect clear @s regeneration
effect clear @s blindness
effect clear @s resistance
effect clear @s fire_resistance

attribute @s knockback_resistance modifier remove stellarity:cryonics
attribute @s fall_damage_multiplier modifier remove stellarity:cryonics
attribute @s jump_strength modifier remove stellarity:cryonics
attribute @s movement_speed modifier remove stellarity:cryonics
attribute @s attack_damage modifier remove stellarity:cryonics
attribute @s attack_speed modifier remove stellarity:cryonics
effect give @s absorption 12 3 true
effect give @s resistance 12 2 true
effect give @s regeneration 45 1 true
effect give @s fire_resistance 45 0 true

particle explosion_emitter ~ ~0.5 ~ 0 0 0 1 1 force
execute as @e[type=!#kohara:invalid_targets,distance=0.01..4] run damage @s 15 kohara:true_damage by @p[tag=stellarity.cryonics]
execute as @e[type=!#kohara:invalid_targets,distance=5.01..7] run damage @s 4 kohara:true_damage by @p[tag=stellarity.cryonics]

scoreboard players set @s stellarity.item.harvester.cryonics.cooldown 60
scoreboard players reset @s stellarity.item.harvester.cryonics.duration

tag @s remove stellarity.cryonics
