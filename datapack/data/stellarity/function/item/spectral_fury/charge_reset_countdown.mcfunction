scoreboard players remove @s stellarity.item.spectral_fury.until_charge_reset 1
execute if score @s stellarity.item.spectral_fury.until_charge_reset matches 0 run function stellarity:item/spectral_fury/charge_reset
