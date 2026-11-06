title @s actionbar {"translate":"item.stellarity.harvester.ability.hint","color":"dark_purple"}
execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:item/harvester/effects/ability_absorb

$scoreboard players add @s stellarity.item.harvester.progress.$(ability) 1
