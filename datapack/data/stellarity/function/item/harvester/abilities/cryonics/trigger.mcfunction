advancement revoke @s only stellarity:event/item/harvester/cryonics_trigger

execute unless score @s stellarity.item.harvester.cryonics.cooldown matches 1.. run function stellarity:item/harvester/abilities/cryonics/start
