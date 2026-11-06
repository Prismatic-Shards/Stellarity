scoreboard players remove #count2 stellarity.misc 1
scoreboard players add #to_add stellarity.misc 1

execute if score #to_add stellarity.misc >= #max_to_add stellarity.misc run return 0
execute if score #count2 stellarity.misc matches ..0 run return 0

function stellarity:mechanic/cauldron_crafting/add_item/adding_calculations/iter
