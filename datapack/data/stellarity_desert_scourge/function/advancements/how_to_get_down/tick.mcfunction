scoreboard players add @s sandTornadoAdvancementTimer 1
execute unless score @s sandTornadoTimer matches 1.. if predicate stellarity_desert_scourge:player/on_ground run scoreboard players reset @s sandTornadoAdvancementTimer
execute if score @s sandTornadoAdvancementTimer matches 400.. run function stellarity_desert_scourge:advancements/how_to_get_down/get