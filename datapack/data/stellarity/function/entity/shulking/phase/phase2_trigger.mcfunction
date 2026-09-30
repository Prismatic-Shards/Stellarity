# Advance phase
scoreboard players set @s stellarity.shulking.phase 2

# Audio & chat cue
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 1.2
particle dragon_breath ~ ~2 ~ 2 2 2 0.1 60

# Jump to East wall (wall 1)
scoreboard players set @s stellarity.shulking.wall 1
function stellarity:entity/shulking/movement/dash_start

# Spawn 3 large shulker minions in center
execute at @p[distance=..50] run summon shulker ~2 ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~-2 ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}
execute at @p[distance=..50] run summon shulker ~ ~ ~3 {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["stellarity.shulking.minion","smithed.entity"]}

# Trigger initial ceiling bullet rain
function stellarity:entity/shulking/attacks/bullets/shoot
