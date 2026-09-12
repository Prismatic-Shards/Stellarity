scoreboard players set #lavender stellarity.misc 0

function stellarity:mechanic/altar_of_the_accursed/crafting/items/special/endonomicon_cause_parse_errors/lavender

execute if score #lavender stellarity.misc matches 0 run loot spawn ~ ~-0.4 ~ loot stellarity:item/book/endonomicon

function stellarity:mechanic/altar_of_the_accursed/crafting/global_effects

advancement grant @a[distance=..5] only stellarity:altar_of_the_accursed/an_introduction_to_dark_magic
