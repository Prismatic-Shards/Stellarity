execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=fox,tag=!stellarity.duskberry_raycast_entity,dx=0,sort=nearest] run function stellarity:item/duskberry/raycast_entity/check_hit_entity
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..50 positioned ^ ^ ^0.1 run function stellarity:item/duskberry/raycast_entity/ray
