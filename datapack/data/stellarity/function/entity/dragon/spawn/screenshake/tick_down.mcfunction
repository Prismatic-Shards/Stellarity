execute if score @s stellarity.dragon.screenshake matches 0.. run \
scoreboard players remove @s stellarity.dragon.screenshake 3

execute if score @s stellarity.dragon.screenshake matches ..0 run \
scoreboard players set @s stellarity.dragon.screenshake 0

execute store result storage stellarity:temp dragon.screenshake float 0.0006 run scoreboard players get @s stellarity.dragon.screenshake
function stellarity:entity/dragon/spawn/screenshake/teleport with storage stellarity:temp dragon

tag @s[scores={stellarity.dragon.screenshake=0}] remove stellarity.dragon.screenshake
