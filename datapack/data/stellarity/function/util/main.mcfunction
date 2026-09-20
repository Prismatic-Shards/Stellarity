execute as @e[type=area_effect_cloud,tag=stellarity.area_effect_cloud] at @s run function stellarity:util/as_area_effect_cloud_stellarity_specific

execute as @e[type=block_display,tag=stellarity.bloom] at @s unless entity @n[type=!#kohara:invalid_targets,distance=..5,scores={stellarity.status_effects.bloom.time=1..}] run function stellarity:util/status_effects/bloom/flower/delete
