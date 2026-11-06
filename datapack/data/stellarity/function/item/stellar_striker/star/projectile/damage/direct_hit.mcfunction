scoreboard players set #damage kohara.misc 90

tag @p[predicate=stellarity:item/holding/stellar_striker] add kohara.attacker

function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:80,ap_damage_type:"kohara:armor_piercing",damage_type:"kohara:ignores_iframes",tag:"stellarity.damage.stellar_striker"}

tag @s add stellarity.stellar_striker.no_splash
