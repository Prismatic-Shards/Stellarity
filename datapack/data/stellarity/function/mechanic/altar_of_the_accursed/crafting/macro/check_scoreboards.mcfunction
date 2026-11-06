$execute unless score #stellarity.config stellarity.config.$(scoreboard) matches 0 run function stellarity:mechanic/altar_of_the_accursed/crafting/macro/$(macro) {loot:"$(loot)", parent:"$(parent)"}
 
$execute if score #stellarity.config stellarity.config.$(scoreboard) matches 0 run function stellarity:mechanic/altar_of_the_accursed/item_disabled