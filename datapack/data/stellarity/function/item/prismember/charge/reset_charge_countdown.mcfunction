scoreboard players remove @s stellarity.item.prismember.until_charge_reset 1
execute if score @s stellarity.item.prismember.until_charge_reset matches 0 run function stellarity:item/prismember/charge/reset_charge
