scoreboard players set @s stellarity.misc.loop.1s 0

# Tag and prepare input items on the altar
execute as @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_endbound_carapace.skip,nbt={OnGround:1b}] run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/input/main

# Count input item entities
execute store result score @s stellarity.misc if entity @e[type=item,distance=..1.5]

# All shulker tool recipes require exactly 3 item stacks (Template + 4 Shells + Netherite Tool)
execute if score @s stellarity.misc matches 3 run function stellarity:mechanic/altar_of_the_endbound_carapace/crafting/checks
