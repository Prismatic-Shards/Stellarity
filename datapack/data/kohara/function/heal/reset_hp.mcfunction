execute if score @s kohara.health_reset matches 1.. run attribute @s minecraft:max_health modifier remove kohara:heal
execute if score @s kohara.health_reset matches 1.. run tag @s remove kohara.healed

scoreboard players add @s kohara.health_reset 1
