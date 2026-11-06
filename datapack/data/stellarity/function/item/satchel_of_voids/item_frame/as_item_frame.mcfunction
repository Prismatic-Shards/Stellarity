tag @s add stellarity.satchel_of_voids.checked

execute store result score #is_vertical stellarity.misc run data get entity @s Rotation[1]
execute unless score #is_vertical stellarity.misc matches 0 run return 0

execute if entity @e[type=#kohara:item_frames,tag=stellarity.satchel_of_voids.placed,distance=..1.35] run return 0

# I could move this to the setup altar function for a .1% better performance, 
# but I'd rather just run it twice to keep all the checks here
  execute rotated as @s rotated ~180 ~ unless block ^ ^ ^0.3 crying_obsidian run return 0

execute rotated as @s rotated ~180 ~ positioned ^ ^ ^0.3 align xyz positioned ~.5 ~.5 ~.5 run function stellarity:item/satchel_of_voids/item_frame/setup_altar
