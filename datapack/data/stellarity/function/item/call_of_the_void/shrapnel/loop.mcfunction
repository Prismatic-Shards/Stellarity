scoreboard players add @s stellarity.misc 1

execute as @n[type=!#kohara:invalid_targets,dx=0,nbt={HurtTime:0s}] at @s run function stellarity:item/call_of_the_void/shrapnel/damage

execute if score @s stellarity.misc matches 1 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000045 0 force @a[distance=..64]

execute unless block ~ ~ ~ #kohara:non_solid run kill @s

execute if score @s stellarity.misc matches ..5 rotated as @s positioned ^ ^ ^0.6 run function stellarity:item/call_of_the_void/shrapnel/loop
execute if score @s stellarity.misc matches 6.. run kill @s
