scoreboard players operation *part wormPart = @s wormPart
scoreboard players operation *part wormPart %= #3 bdlib.const
execute if score *part wormPart matches 0 run particle minecraft:explosion_emitter

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.75 2
particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0.375 0.375 1 40 force
particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:4,to_color:[0.824,0.757,0.580]} ~ ~.1 ~ 0.75 0.75 0.75 1 20 force

execute summon marker run function stellarity_desert_scourge:worm_ai/loot/init

execute as @e[type=vex,tag=worm.hitbox,predicate=stellarity_desert_scourge:id_system/part] at @s run function stellarity_desert_scourge:worm_ai/body/death2
kill @s