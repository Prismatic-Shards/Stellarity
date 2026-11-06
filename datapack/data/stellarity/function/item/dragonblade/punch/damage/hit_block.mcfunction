scoreboard players set #effect.duration stellarity.misc 240
scoreboard players set #effect.level stellarity.misc 1

execute if entity @s[type=!#kohara:boss,tag=!kohara.boss] run function stellarity:util/status_effects/voided/apply
scoreboard players set #mul stellarity.misc 40
scoreboard players operation #enchant stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage kohara.misc 240
scoreboard players operation #damage kohara.misc += #enchant stellarity.misc

tag @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] add kohara.attacker

execute if score #damage kohara.misc matches 320.. run advancement grant @p[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] only stellarity:dragons_den/kaliyah

effect give @s slowness 2 6 true
effect give @s weakness 11 0 false

function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:40,ap_damage_type:"kohara:true_damage_respects_resistance",damage_type:"stellarity:dragonblade",tag:"stellarity.damage.dragonblade"}
