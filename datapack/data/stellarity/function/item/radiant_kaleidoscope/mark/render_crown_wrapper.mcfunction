# Update rotation angle
scoreboard players add @s stellarity.item.rk.crown_angle 8
execute if score @s stellarity.item.rk.crown_angle matches 360.. run scoreboard players set @s stellarity.item.rk.crown_angle 0

execute store result storage stellarity:temp rk.rot int 1 run scoreboard players get @s stellarity.item.rk.crown_angle
function stellarity:item/radiant_kaleidoscope/mark/crown_spin with storage stellarity:temp rk
