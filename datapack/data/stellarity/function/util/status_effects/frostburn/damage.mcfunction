scoreboard players set #damage kohara.misc 10

scoreboard players set #mul stellarity.misc 2
execute if entity @s[type=#minecraft:freeze_hurts_extra_types] run scoreboard players operation #damage kohara.misc *= #mul stellarity.misc

scoreboard players reset @s stellarity.dot.frostburn.progress

particle minecraft:dust_color_transition{from_color:[0.36470588235294116,0.9019607843137255,0.8980392156862745],to_color:[1.0,1.0,1.0],scale:1.4} ~ ~1 ~ .3 .55 .3 0.05 14 force @a[distance=..32]

execute unless entity @s[type=player] run playsound minecraft:entity.player.hurt_freeze neutral @a ~ ~ ~

tag @p[distance=0.01..] add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:dot/frostburn",tag:"stellarity.damage.dot.frostburn"}
