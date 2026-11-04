scoreboard players operation *tempID wormTarget = @s wormTarget
execute if score @s wormTarget matches -2147483648..2147483647 as @a[tag=id,distance=..256] if entity @s unless score @s death matches 1.. if score @s playerID = *tempID wormTarget run tag @s add target

execute unless entity @a[tag=id,tag=target,limit=1] run scoreboard players reset @s wormTarget

execute if score @s wormTarget matches -2147483648..2147483647 run function stellarity_desert_scourge:worm_ai/head/tick_has_target
execute unless score @s wormTarget matches -2147483648..2147483647 run function stellarity_desert_scourge:worm_ai/head/set_target

execute unless score @s wormTarget matches -2147483648..2147483647 run function stellarity_desert_scourge:worm_ai/head/kill_no_loot

tag @a[tag=id,tag=target,limit=1] remove target
scoreboard players reset *tempID wormTarget