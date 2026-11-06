execute if entity @s[scores={stellarity.status_effects.voided.time=0..}] run playsound stellarity:effect.voided.deactivate player @a ~ ~ ~ 0.75 1

scoreboard players reset @s stellarity.status_effects.voided.time
scoreboard players reset @s stellarity.status_effects.voided.level
scoreboard players reset @s stellarity.status_effects.voided.particle
scoreboard players reset @s[type=player] stellarity.status_effects.voided.sound_loop

stopsound @s player stellarity:effect.voided.loop

attribute @s max_health modifier remove stellarity:voided

function kohara:status_effect/stop_ticking
