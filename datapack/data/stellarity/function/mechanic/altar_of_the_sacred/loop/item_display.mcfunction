execute if block ~ ~ ~ shroomlight run setblock ~ ~ ~ crying_obsidian
execute unless entity @s[team=stellarity.yellow_glow] run team join stellarity.yellow_glow @s
data modify entity @s Glowing set value 1b
execute unless block ~ ~ ~ minecraft:crying_obsidian run function stellarity:mechanic/altar_of_the_sacred/drop_self
