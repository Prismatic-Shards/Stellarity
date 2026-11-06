damage @s 14.0 kohara:simulated_explosion by @p[predicate=stellarity:item/holding/trinket/crest] from @p[predicate=stellarity:item/holding/trinket/crest]

effect give @s slowness 8 0 true

scoreboard players set #effect.duration stellarity.misc 160
scoreboard players set #effect.level stellarity.misc 1

function stellarity:util/status_effects/jinx/apply
