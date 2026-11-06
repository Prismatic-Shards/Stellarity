$scoreboard players remove @n[type=marker,tag=stellarity.cauldron_crafting] stellarity.mechanics.cauldron_crafting.breath_left $(breath)

$loot spawn ~ ~-5 ~ loot $(loot)
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp cauldron_crafting.result.item set from entity @n[type=item] Item
execute positioned ~ ~-5 ~ run kill @n[type=item,distance=..0.0001]

function stellarity:mechanic/cauldron_crafting/crafting/global_effects
