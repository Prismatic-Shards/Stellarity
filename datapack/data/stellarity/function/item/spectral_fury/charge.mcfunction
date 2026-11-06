# This advancement triggers every tick btw
  advancement revoke @s only stellarity:event/item/charge_spectral_fury

execute unless score @s stellarity.item.spectral_fury.charge matches 31.. run scoreboard players add @s stellarity.item.spectral_fury.charge 1
execute if score @s stellarity.item.spectral_fury.charge matches 30 run function stellarity:item/spectral_fury/full_charge

scoreboard players set @s stellarity.item.spectral_fury.until_charge_reset 2
