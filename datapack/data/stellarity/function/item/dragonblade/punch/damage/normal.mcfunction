scoreboard players set #effect.duration stellarity.misc 160
scoreboard players set #effect.level stellarity.misc 1

execute if entity @s[type=!#kohara:boss,tag=!kohara.boss] run function stellarity:util/status_effects/voided/apply
scoreboard players set #mul stellarity.misc 15
scoreboard players operation #enchant stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage kohara.misc 70
scoreboard players operation #damage kohara.misc += #enchant stellarity.misc

tag @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] add kohara.attacker

effect give @s slowness 1 6 true
effect give @s weakness 7 0 false

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:40,ap_damage_type:"kohara:true_damage_respects_resistance",damage_type:"stellarity:dragonblade",tag:"stellarity.damage.dragonblade"}
