scoreboard players add #times stellarity.misc 1
execute store result storage stellarity:temp cauldron_crafting.macro.times int 1 run scoreboard players get #times stellarity.misc

function stellarity:mechanic/cauldron_crafting/list_insides/macro_macro with storage stellarity:temp cauldron_crafting.macro

execute unless score #found stellarity.misc matches 1 run function stellarity:mechanic/cauldron_crafting/list_insides/macro_loop
