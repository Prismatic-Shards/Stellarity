execute unless data entity @s Passengers[0] run function stellarity:entity/shulking/death/check with entity @s data."stellarity:owner"

# rotate the rods
  scoreboard players add @s stellarity.misc4 3
  execute if score @s stellarity.misc4 matches 360.. run scoreboard players remove @s stellarity.misc4 360
  execute store result storage stellarity:temp shulking_rods.rotation int 1 run scoreboard players get @s stellarity.misc4


function stellarity:entity/shulking/rods/rotate with storage stellarity:temp shulking_rods

execute if score @s stellarity.misc matches ..0 run function stellarity:entity/shulking/attacks/decide
execute unless score @s stellarity.misc matches ..0 run scoreboard players remove @s stellarity.misc 1

execute as @a[distance=..4,gamemode=!creative,gamemode=!spectator] run damage @s 4 mob_attack by @n[type=allay,distance=..1,tag=stellarity.shulking]

execute if predicate stellarity:entity/riding_vehicle run ride @s dismount
