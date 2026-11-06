# Guard: do nothing if an ascending soot is already active
execute if entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending] run return 0

# Initiates ascending starlight soot animation to summon Empress of Light
# Deduct 1 starlight soot from stack
execute store result score #count stellarity.misc run data get entity @s Item.count 1

execute if score #count stellarity.misc matches 2.. run scoreboard players remove #count stellarity.misc 1
execute if score #count stellarity.misc matches 2.. store result entity @s Item.count int 1 run scoreboard players get #count stellarity.misc
execute if score #count stellarity.misc matches 2.. run summon item ~ ~0.5 ~ {Item:{id:"minecraft:sugar",count:1,components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"},"minecraft:item_model":"stellarity:starlight_soot"}},Tags:["stellarity.altar_of_the_sacred.ascending","stellarity.altar.skip","stellarity.checked"],NoGravity:1b,Glowing:1b,PickupDelay:32767s}

execute if score #count stellarity.misc matches 1 run tag @s add stellarity.altar_of_the_sacred.ascending
execute if score #count stellarity.misc matches 1 run tag @s add stellarity.altar.skip
execute if score #count stellarity.misc matches 1 run tag @s add stellarity.checked
execute if score #count stellarity.misc matches 1 run data merge entity @s {NoGravity:1b,Glowing:1b,PickupDelay:32767s}

# Apply yellow glow to ascending entity
execute as @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..3] run team join stellarity.yellow_glow @s

# Set 35-tick (1.75s) ascending sequence
execute as @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..2,limit=1] run scoreboard players set @s stellarity.misc 35

# Audio and visual start
playsound stellarity:mechanic.altar_of_the_sacred.ambient_loop block @a[distance=0..] ~ ~ ~ 1.0 1.1
playsound block.amethyst_block.chime block @a[distance=0..] ~ ~ ~ 1.0 1.2
particle end_rod ~ ~0.5 ~ 0.2 0.2 0.2 0.05 15
