#Check if an entity was detected.

execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#kohara:invalid_targets,tag=!vdvray,dx=0,sort=nearest] run function stellarity:item/stellar_striker/star/projectile/raycast/check_hit_entity
execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#kohara:invalid_targets,tag=!vdvray,distance=..2] at @s run function stellarity:item/stellar_striker/star/projectile/raycast/hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #kohara:air unless block ~ ~ ~ #kohara:liquids run function stellarity:item/stellar_striker/star/projectile/raycast/hit_block
scoreboard players add #distance stellarity.misc 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches 451.. run function stellarity:item/stellar_striker/star/projectile/raycast/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..450 positioned ^ ^ ^0.1 run function stellarity:item/stellar_striker/star/projectile/raycast/ray
