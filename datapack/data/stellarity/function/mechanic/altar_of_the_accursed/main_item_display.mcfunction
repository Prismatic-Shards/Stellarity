execute unless entity @s[team=stellarity.purple_glow] run team join stellarity.purple_glow @s
data modify entity @s Glowing set value 1b
execute unless block ~ ~ ~ minecraft:end_portal_frame run function stellarity:mechanic/altar_of_the_accursed/drop_self