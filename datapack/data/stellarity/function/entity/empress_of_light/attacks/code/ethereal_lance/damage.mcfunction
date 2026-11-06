execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 120
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 140
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 160

execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 140
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 160
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 180

execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 200
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 220
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 240

tag @n[type=item_display] add kohara.attacker

execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 run function kohara:damage/calculate {armor_penetration:15,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/projectile",tag:"stellarity.damage.empress_of_light.ethereal_lance"}
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 run function kohara:damage/calculate {armor_penetration:33,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/projectile",tag:"stellarity.damage.empress_of_light.ethereal_lance"}
