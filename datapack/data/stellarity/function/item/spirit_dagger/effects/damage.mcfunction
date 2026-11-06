# Increases damage by 0.25/level of Sweeping Edge
scoreboard players set #damage kohara.misc 50
scoreboard players operation #damage kohara.misc += #sweeping stellarity.misc

tag @p[predicate=stellarity:item/holding/spirit_dagger/both] add kohara.attacker

# Deal extra knockback
execute unless score #knockback stellarity.misc matches 0 run function stellarity:item/spirit_dagger/effects/knockback/apply
# Set enemies on fire
execute unless score #fire_aspect stellarity.misc matches 0 run function stellarity:item/spirit_dagger/effects/fire
# Slow down arthropods
# Probably the most useless effect here
execute unless score #bane stellarity.misc matches 0 if entity @s[type=#minecraft:arthropod] at @s run function stellarity:item/spirit_dagger/effects/bane_of_spiders

# Not using its own damage type, because it has 100% AP
function kohara:damage/calculate {armor_penetration:100,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"kohara:armor_piercing",tag:"stellarity.damage.spirit_dagger"}
