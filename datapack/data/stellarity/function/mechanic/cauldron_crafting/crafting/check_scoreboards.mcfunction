$execute if score #stellarity.config stellarity.config.$(scoreboard) matches 1 run function stellarity:mechanic/cauldron_crafting/crafting/results/$(macro) {loot:"$(loot)", breath:$(breath)}

$execute if score #stellarity.config stellarity.config.$(scoreboard) matches 0 run function stellarity:mechanic/cauldron_crafting/item_disabled