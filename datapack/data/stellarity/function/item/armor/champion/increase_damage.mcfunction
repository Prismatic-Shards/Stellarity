# Damage
  execute unless score @s stellarity.item.armors.champion_armor.combo matches 1.. run attribute @s attack_damage modifier add stellarity:champion_armor.combo 0.06 add_multiplied_base
  attribute @s[scores={stellarity.item.armors.champion_armor.combo=1}] attack_damage modifier add stellarity:champion_armor.combo 0.12 add_multiplied_base
  attribute @s[scores={stellarity.item.armors.champion_armor.combo=2}] attack_damage modifier add stellarity:champion_armor.combo 0.18 add_multiplied_base
  attribute @s[scores={stellarity.item.armors.champion_armor.combo=3}] attack_damage modifier add stellarity:champion_armor.combo 0.24 add_multiplied_base
  attribute @s[scores={stellarity.item.armors.champion_armor.combo=4}] attack_damage modifier add stellarity:champion_armor.combo 0.3 add_multiplied_base

attribute @s[scores={stellarity.item.armors.champion_armor.combo=4}] sweeping_damage_ratio modifier add stellarity:champion_armor.combo 0.2 add_value

execute unless score @s stellarity.item.armors.champion_armor.combo matches 4.. run scoreboard players add @s stellarity.item.armors.champion_armor.combo 1

scoreboard players set @s stellarity.item.armors.champion_armor.until_combo_reset 40
