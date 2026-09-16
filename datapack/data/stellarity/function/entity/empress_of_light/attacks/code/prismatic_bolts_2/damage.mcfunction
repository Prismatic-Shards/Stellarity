execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 90
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 120
execute unless predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 160

execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 110
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 140
execute if predicate stellarity:entity/empress_of_light/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 180

execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 130
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 170
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 210

tag @s add stellarity.damage.empress_of_light.prismatic_bolts

scoreboard players set #effect.duration stellarity.misc 120
function stellarity:util/status_effects/prismatic_inferno/apply

function kohara:damage/calculate {armor_penetration:10,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/projectile",tag:"stellarity.damage.empress_of_light.ethereal_lance"}
