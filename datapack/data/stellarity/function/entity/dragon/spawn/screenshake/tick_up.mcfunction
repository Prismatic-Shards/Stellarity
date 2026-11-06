execute unless score @s stellarity.dragon.screenshake matches 120.. run \
scoreboard players add @s stellarity.dragon.screenshake 1

execute store result storage stellarity:temp dragon.screenshake float 0.00087 run scoreboard players get @s stellarity.dragon.screenshake
function stellarity:entity/dragon/spawn/screenshake/teleport with storage stellarity:temp dragon
