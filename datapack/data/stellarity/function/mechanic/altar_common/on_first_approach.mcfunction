# Triggered the first time a player approaches any Altar (Sacred or Accursed)

execute if score @s stellarity.altar_approached matches 1.. run return 0
scoreboard players set @s stellarity.altar_approached 1

advancement grant @s only stellarity:mechanic/altar/first_approach

playsound stellarity:mechanic.altar_common.approach master @s ~ ~ ~ 1.0 1.0
playsound stellarity:altar_common.approach master @s ~ ~ ~ 1.0 1.0
