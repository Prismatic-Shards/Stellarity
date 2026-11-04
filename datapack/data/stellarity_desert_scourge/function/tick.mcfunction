execute as @a[tag=!id,limit=1] run function stellarity_desert_scourge:set_player_id

execute as @e[type=marker,tag=worm.point] at @s run function stellarity_desert_scourge:worm_create/point/tick

execute as @e[type=item_display,tag=worm] at @s run function stellarity_desert_scourge:worm_ai/tick

execute as @e[type=interaction,tag=sand.tornado] at @s run function stellarity_desert_scourge:sand_tornado/tick

execute as @e[type=item_display,tag=mini.worm.attack] at @s run function stellarity_desert_scourge:mini_worm/tick


execute as @a at @s run function stellarity_desert_scourge:player_tick