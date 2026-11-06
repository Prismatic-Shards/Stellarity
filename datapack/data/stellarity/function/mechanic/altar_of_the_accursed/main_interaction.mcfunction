data modify storage stellarity:temp dragonblade_interaction set from entity @s
execute if data storage stellarity:temp dragonblade_interaction.interaction run function stellarity:mechanic/altar_of_the_accursed/dragonblade
execute if data storage stellarity:temp dragonblade_interaction.attack run function stellarity:mechanic/altar_of_the_accursed/dragonblade

execute if predicate kohara:chance/40percent run particle witch ~ ~ ~ 0.2 0.5 0.2 0 1 normal
execute if predicate kohara:chance/25percent run particle end_rod ~ ~ ~ 0.2 0.5 0.2 0 1 normal
