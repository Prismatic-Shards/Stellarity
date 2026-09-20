attribute @s attack_damage modifier remove stellarity:champion_armor.combo
attribute @s attack_speed modifier remove stellarity:champion_armor.combo

execute unless score @s stellarity.item.armors.champion_armor.combo matches 1.. run function stellarity:item/armor/champion/sounds/0
execute if score @s stellarity.item.armors.champion_armor.combo matches 1 run function stellarity:item/armor/champion/sounds/1
execute if score @s stellarity.item.armors.champion_armor.combo matches 2 run function stellarity:item/armor/champion/sounds/2
execute if score @s stellarity.item.armors.champion_armor.combo matches 3 run function stellarity:item/armor/champion/sounds/3
execute if score @s stellarity.item.armors.champion_armor.combo matches 4 run function stellarity:item/armor/champion/sounds/4

execute if predicate {"condition":"minecraft:any_of","terms":[{"condition":"minecraft:inverted","term":{"condition":"minecraft:entity_scores","entity":"this","scores":{"stellarity.item.armors.champion_armor.until_combo_reset":{"min":1}}}},{"condition":"minecraft:entity_scores","entity":"this","scores":{"stellarity.item.armors.champion_armor.until_combo_reset":{"max":30}}}]} run function stellarity:item/armor/champion/increase_damage

tag @s add stellarity.item.armors.champion_armor.remove_scheduled
schedule function stellarity:item/armor/champion/remove_adv/schedule 1t append