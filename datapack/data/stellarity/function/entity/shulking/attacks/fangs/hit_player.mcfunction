# Apply 1s levitation and Voided I debuff
effect give @s levitation 1 1
scoreboard players set #effect.duration stellarity.misc 160
scoreboard players set #effect.level stellarity.misc 1
function stellarity:util/status_effects/voided/apply

particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.evoker.cast_spell hostile @s ~ ~ ~ 1 1.2
