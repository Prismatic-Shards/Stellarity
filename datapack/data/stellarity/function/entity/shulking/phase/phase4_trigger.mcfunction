# Advance phase
scoreboard players set @s stellarity.shulking.phase 4

# Audio
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 0.8

# Spawn 7 victim shulkers near player/center
execute at @p[distance=..50] run summon shulker ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~1.5 ~ ~ {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~-1.5 ~ ~ {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~1.5 {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~-1.5 {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~1 ~ ~1 {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~-1 ~ ~-1 {attributes:[{id:"minecraft:scale",base:1.2}],Tags:["stellarity.shulking.crush_victim","stellarity.shulking.minion","smithed.entity"]}

# Set wall to 0 (Center) and leap into the center crushing them
scoreboard players set @s stellarity.shulking.wall 0
function stellarity:entity/shulking/phase/phase4_crush_land
