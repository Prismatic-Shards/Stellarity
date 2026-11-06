$scoreboard players remove @n[type=marker,tag=stellarity.cauldron_crafting] stellarity.mechanics.cauldron_crafting.breath_left $(breath)

$data modify storage stellarity:temp cauldron_crafting.result.item set value {id:"$(item)",count:1b}

function stellarity:mechanic/cauldron_crafting/crafting/global_effects
