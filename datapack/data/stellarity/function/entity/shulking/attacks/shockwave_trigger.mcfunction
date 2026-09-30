execute if score @s stellarity.shulking.phase matches ..5 run scoreboard players set @s stellarity.shulking.shockwave_cd 160
execute if score @s stellarity.shulking.phase matches 6.. run scoreboard players set @s stellarity.shulking.shockwave_cd 90

playsound stellarity:entity.shulking.attack hostile @a ~ ~ ~ 2 1
function stellarity:entity/shulking/attacks/shockwave/start
