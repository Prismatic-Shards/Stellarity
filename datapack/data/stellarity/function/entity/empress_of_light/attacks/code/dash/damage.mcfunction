execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 220
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 260
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 300

execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 280
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 320
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 380

tag @n[type=vindicator] add kohara.attacker

execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 run function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/dash",tag:"stellarity.damage.empress_of_light.dash"}
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 run function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/dash",tag:"stellarity.damage.empress_of_light.dash"}
