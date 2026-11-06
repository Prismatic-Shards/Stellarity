scoreboard players remove @s stellarity.item.armors.champion_armor.until_combo_reset 1
execute if score @s stellarity.item.armors.champion_armor.until_combo_reset matches 0 run function stellarity:item/armor/champion/reset
