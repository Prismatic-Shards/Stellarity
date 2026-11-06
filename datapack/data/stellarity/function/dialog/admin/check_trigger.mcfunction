execute if entity @s[scores={stellarity.dialog.admin=420}] run function stellarity:dialog/admin/config/open
execute if entity @s[scores={stellarity.dialog.admin=430}] run function stellarity:dialog/admin/config/entity/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=440}] run function stellarity:dialog/admin/config/item/open
execute if entity @s[scores={stellarity.dialog.admin=450}] run function stellarity:dialog/admin/config/item/weapon/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=451}] run function stellarity:dialog/admin/config/item/trinket/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=452}] run function stellarity:dialog/admin/config/item/spellbook/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=453}] run function stellarity:dialog/admin/config/item/armor/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=454}] run function stellarity:dialog/admin/config/item/other/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=455}] run function stellarity:dialog/admin/config/item/consumables/open
execute if entity @s[scores={stellarity.dialog.admin=460}] run function stellarity:dialog/admin/config/mechanic/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=470}] run function stellarity:dialog/admin/config/item/consumables/fish/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=471}] run function stellarity:dialog/admin/config/item/consumables/food/prepare_dialog
execute if entity @s[scores={stellarity.dialog.admin=472}] run function stellarity:dialog/admin/config/item/consumables/potions/prepare_dialog

scoreboard players set @s stellarity.dialog.admin 0 
scoreboard players enable @s stellarity.dialog.admin