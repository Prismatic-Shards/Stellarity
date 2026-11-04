execute store result storage stellarity_desert_scourge:temp kill_mob.index int 1 run scoreboard players operation *temp mobID = @s mobID

execute as @e[type=item_display,tag=worm] if score @s mobID = *temp mobID run kill @s
execute as @e[type=interaction,tag=sand.tornado,tag=boss] if score @s mobID = *temp mobID run function stellarity_desert_scourge:sand_tornado/kill
execute as @e[type=vex,tag=worm.hitbox] if score @s mobID = *temp mobID at @s run function stellarity_desert_scourge:worm_ai/head/kill_no_loot1

scoreboard players reset @a[distance=..128] musicTimer_stellarity_ds
stopsound @a[distance=..128] * stellarity_desert_scourge:music.desert_scourge 

function stellarity_desert_scourge:worm_ai/head/kill_no_loot2 with storage stellarity_desert_scourge:temp kill_mob
data remove storage stellarity_desert_scourge:temp kill_mob