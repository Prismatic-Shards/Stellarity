# Abort immediately if crafting convergence sequence is already running
execute if score @s stellarity.altar.craft_progress matches 1.. run return 0

execute as @e[type=item,distance=..2.5,tag=!stellarity.altar_of_the_accursed.skip] run \
function stellarity:mechanic/altar_of_the_accursed/crafting/input/main

# Counting all active input items (entities)
execute store result score @s stellarity.misc if entity @e[type=item,distance=..2.5,tag=!stellarity.altar_of_the_accursed.skip]

execute if score @s stellarity.misc matches 1.. run \
function stellarity:mechanic/altar_of_the_accursed/crafting/checks
