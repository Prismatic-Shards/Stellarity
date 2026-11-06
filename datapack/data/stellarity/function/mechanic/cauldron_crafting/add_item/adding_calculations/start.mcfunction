scoreboard players operation #count2 stellarity.misc = #count stellarity.misc
scoreboard players set #to_add stellarity.misc 0
scoreboard players set #max_to_add stellarity.misc 6
scoreboard players operation #max_to_add stellarity.misc -= @s stellarity.mechanics.cauldron_crafting.items_inside

function stellarity:mechanic/cauldron_crafting/add_item/adding_calculations/iter

scoreboard players operation #count stellarity.misc -= #to_add stellarity.misc
