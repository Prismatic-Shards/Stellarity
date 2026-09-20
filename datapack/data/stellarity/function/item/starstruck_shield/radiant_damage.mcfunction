scoreboard players set #damage kohara.misc 30

scoreboard players set #effect.duration stellarity.misc 80
function stellarity:util/status_effects/holy_flames/apply

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:carcanet",tag:"stellarity.damage.carcanet"}
