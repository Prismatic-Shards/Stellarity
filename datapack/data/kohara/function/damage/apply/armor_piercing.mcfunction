execute store result score #silent kohara.misc run data get entity @s[type=!player] Silent
execute unless score #armor_penetration kohara.misc matches 100 run data modify entity @s[type=!player] Silent set value 1b

$execute if score #armor_penetration kohara.misc matches 100 run damage @s $(damage_ap) $(type)$(attacker)
$execute unless score #armor_penetration kohara.misc matches 100 run damage @s $(damage_ap) $(type)

execute if entity @s[type=player] unless score #armor_penetration kohara.misc matches 100 run function kohara:damage/apply/stopsound

execute unless score #silent kohara.misc matches 1 run data modify entity @s[type=!player] Silent set value 0b
