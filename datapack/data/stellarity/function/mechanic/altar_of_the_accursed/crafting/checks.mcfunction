execute if score @s stellarity.misc matches 2 \
if entity @e[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] \
run function stellarity:mechanic/altar_of_the_accursed/crafting/dye_elytra/checks

# Elytra trim crafting on the altar (Elytra + Trim Template + Trim Material)
execute if score @s stellarity.misc matches 3 \
if entity @e[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] \
if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] \
if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] \
run function stellarity:mechanic/altar_of_the_accursed/crafting/items/trim_elytra

function stellarity:mechanic/altar_of_the_accursed/crafting/items/tools
function stellarity:mechanic/altar_of_the_accursed/crafting/items/armor
function stellarity:mechanic/altar_of_the_accursed/crafting/items/weapons
function stellarity:mechanic/altar_of_the_accursed/crafting/items/general
function stellarity:mechanic/altar_of_the_accursed/crafting/items/void_pendant

function #stellarity:altar_of_the_accursed_extra_recipes
