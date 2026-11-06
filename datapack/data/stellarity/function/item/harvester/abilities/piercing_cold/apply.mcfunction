scoreboard players set #effect.duration stellarity.misc 120
scoreboard players operation #effect.level stellarity.misc = @s stellarity.status_effects.jinx.level
scoreboard players add #effect.level stellarity.misc 1

function stellarity:util/status_effects/jinx/apply
