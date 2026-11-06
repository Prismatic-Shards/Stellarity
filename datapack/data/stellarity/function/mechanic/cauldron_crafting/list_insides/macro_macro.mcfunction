$execute unless data storage stellarity:temp {cauldron_crafting:{ingredients:["$(id)_$(times)"]}} run scoreboard players set #found stellarity.misc 1
$execute unless data storage stellarity:temp {cauldron_crafting:{ingredients:["$(id)_$(times)"]}} run data modify storage stellarity:temp cauldron_crafting.ingredients append value "$(id)_$(times)"
