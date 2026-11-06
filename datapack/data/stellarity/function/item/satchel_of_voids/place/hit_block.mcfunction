scoreboard players set #hit stellarity.misc 1

scoreboard players set @s stellarity.item.satchel_of_voids.cooldown 30

execute store result storage stellarity:temp satchel_of_voids.y float 1 run data get entity @s Pos[1]
execute positioned ~ ~ ~ run function stellarity:item/satchel_of_voids/place/summon_sigil with storage stellarity:temp satchel_of_voids
