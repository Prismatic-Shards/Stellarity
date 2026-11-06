data modify storage stellarity:temp OnGround set from entity @s OnGround

execute if data storage stellarity:temp {OnGround:0b} run particle end_rod ~ ~0.35 ~ .2 .2 .2 0.011 1 force @a[distance=..64]
execute if data storage stellarity:temp {OnGround:1b} run function stellarity:sfx/boss_drop/on_ground
