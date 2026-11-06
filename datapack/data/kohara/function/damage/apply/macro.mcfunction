# Armor penetration is handled as a separate damage instance...
$execute if entity @s[type=player] if score #damage_ap kohara.misc matches 1.. run function kohara:damage/apply/armor_piercing {damage_ap:$(damage_ap),attacker:"$(attacker)",type:"$(type_ap)"}

$damage @s $(damage) $(type)$(attacker)

# ...and at 2 different times for mobs and players!
$execute if entity @s[type=!player] if score #damage_ap kohara.misc matches 1.. run function kohara:damage/apply/armor_piercing {damage_ap:$(damage_ap),attacker:"$(attacker)",type:"$(type_ap)"}
