execute if score @s stellarity.shulking.phase matches ..5 run scoreboard players set @s stellarity.shulking.fangs_cd 220
execute if score @s stellarity.shulking.phase matches 6.. run scoreboard players set @s stellarity.shulking.fangs_cd 130

playsound stellarity:entity.shulking.attack hostile @a ~ ~ ~ 2 1
function stellarity:entity/shulking/attacks/fangs/start
