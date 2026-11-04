playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.75 2
particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0.1 2 force
particle block{block_state:"minecraft:sand"} ~ ~ ~ 0.375 0.375 0.375 1 40 force
particle dust_color_transition{from_color:[0.878,0.847,0.682],scale:4,to_color:[0.824,0.757,0.580]} ~ ~.1 ~ 0.75 0.75 0.75 1 20 force

execute summon marker run function stellarity_desert_scourge:worm_ai/loot/init_head

execute as @a[distance=..128] at @s run function stellarity_desert_scourge:music/stop

execute store result storage stellarity_desert_scourge:temp kill_mob.index int 1 run scoreboard players operation *temp mobID = @s mobID
execute as @e[type=interaction,tag=sand.tornado,tag=boss] if score @s mobID = *temp mobID run function stellarity_desert_scourge:sand_tornado/kill
function stellarity_desert_scourge:worm_ai/head/kill_no_loot2 with storage stellarity_desert_scourge:temp kill_mob
data remove storage stellarity_desert_scourge:temp kill_mob
scoreboard players reset *temp mobID

function stellarity_desert_scourge:worm_ai/loot/init

kill @s
