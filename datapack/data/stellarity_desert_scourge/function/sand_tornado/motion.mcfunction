tp @s
scoreboard players set @s sandTornadoTimer 1
execute store result storage stellarity_desert_scourge:temp motion.rotation float 0.01 run random value 0..36000
function stellarity_desert_scourge:sand_tornado/motion_macros with storage stellarity_desert_scourge:temp motion

execute if entity @s[advancements={stellarity_desert_scourge:how_to_get_down=false}] unless score @s sandTornadoAdvancementTimer matches 0.. run scoreboard players set @s sandTornadoAdvancementTimer 1
