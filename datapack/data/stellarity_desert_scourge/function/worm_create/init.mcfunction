scoreboard players set *amount math 16

execute summon item_display run function stellarity_desert_scourge:worm_create/head

scoreboard players set *part math 1
function stellarity_desert_scourge:worm_create/body_loop

execute summon item_display run function stellarity_desert_scourge:worm_create/tail

execute summon interaction run function stellarity_desert_scourge:worm_create/sand_tornado_spawn

scoreboard players add *cloud mobID 1