execute unless predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players set #effect.duration stellarity.misc 60
execute if predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players set #effect.duration stellarity.misc 80
function stellarity:util/status_effects/holy_flames/apply

scoreboard players set #damage kohara.misc 30
scoreboard players operation #damage kohara.misc += #charge stellarity.misc

tag @p[predicate=stellarity:item/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:15,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
