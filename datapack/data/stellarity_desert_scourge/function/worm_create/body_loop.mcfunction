execute summon item_display run function stellarity_desert_scourge:worm_create/body

scoreboard players remove *amount math 1
execute if score *amount math matches 1.. run function stellarity_desert_scourge:worm_create/body_loop