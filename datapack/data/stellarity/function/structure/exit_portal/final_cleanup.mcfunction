
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:bedrock
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_portal
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:wall_torch
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:torch
execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_stone

function stellarity:structure/exit_portal/purge_sky

execute in minecraft:the_end positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/activated/generate

