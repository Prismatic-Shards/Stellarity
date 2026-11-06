scoreboard players remove @s stellarity.status_effects.bloom.time 1
scoreboard players remove @s[scores={stellarity.status_effects.bloom.cooldown=1..}] stellarity.status_effects.bloom.cooldown 1

execute anchored eyes rotated ~ 0 positioned ^ ^.35 ^ as @n[type=block_display,tag=stellarity.bloom] run function stellarity:util/status_effects/bloom/flower/loop
scoreboard players operation @n[type=block_display,tag=stellarity.bloom] stellarity.misc = @s stellarity.status_effects.bloom.damage

execute if score @s stellarity.status_effects.bloom.damage matches 500.. run function stellarity:util/status_effects/bloom/damage

execute if score @s stellarity.status_effects.bloom.time matches 0 run function stellarity:util/status_effects/bloom/damage
