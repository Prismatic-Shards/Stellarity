## Called by 'loops/player_loop.mcfunction'

execute if entity @s[predicate=stellarity:item/armor/shulker/wearing_any_piece] run function stellarity:item/armor/shulker/main

execute if entity @s[predicate=stellarity:item/armor/wearing_full_hallowed_armor] run function stellarity:item/armor/hallowed/loop
execute if entity @s[tag=stellarity.holy_protection,predicate=!stellarity:item/armor/wearing_full_hallowed_armor] run function stellarity:item/armor/hallowed/holy_protection/force_remove

execute if entity @s[predicate=stellarity:item/armor/wearing_full_champion_armor,scores={stellarity.item.armors.champion_armor.until_combo_reset=1..}] run function stellarity:item/armor/champion/reset_countdown

execute if entity @s[predicate=stellarity:item/armor/floral/wearing_any_piece] run function stellarity:item/armor/floral/main
