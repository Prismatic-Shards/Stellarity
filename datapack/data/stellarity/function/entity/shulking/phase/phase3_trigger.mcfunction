# Advance phase
scoreboard players set @s stellarity.shulking.phase 3

# Audio
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 1.0

# Jump to opposite wall (West wall = 2)
scoreboard players set @s stellarity.shulking.wall 2
function stellarity:entity/shulking/movement/dash_start

# Spawn 5 large shulker minions
execute at @p[distance=..50] run summon shulker ~3 ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~-3 ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~3 {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~-3 {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}

# Heavy barrage of bullets from ceiling
execute at @a[distance=..50,gamemode=!creative,gamemode=!spectator] positioned ~ ~12 ~ run summon shulker_bullet ~ ~ ~
execute at @a[distance=..50,gamemode=!creative,gamemode=!spectator] positioned ~ ~12 ~ run summon shulker_bullet ~1 ~ ~
execute at @a[distance=..50,gamemode=!creative,gamemode=!spectator] positioned ~ ~12 ~ run summon shulker_bullet ~-1 ~ ~
