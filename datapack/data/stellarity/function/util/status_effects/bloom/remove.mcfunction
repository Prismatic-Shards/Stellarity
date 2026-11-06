scoreboard players reset @s stellarity.status_effects.bloom.time
scoreboard players reset @s stellarity.status_effects.bloom.damage
scoreboard players reset @s stellarity.status_effects.bloom.cooldown

execute as @n[type=block_display,tag=stellarity.bloom] at @s run function stellarity:util/status_effects/bloom/flower/delete

function kohara:status_effect/stop_ticking
