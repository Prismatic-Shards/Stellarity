execute if score #hit stellarity.misc matches 0 as @e[type=!#kohara:invalid_targets,tag=!laser,dx=0,sort=nearest] run function stellarity:item/slayer_crossbow/ray/damage

execute if score #distance stellarity.misc matches 1.. run function stellarity:item/slayer_crossbow/ray/particles

scoreboard players add #distance stellarity.misc 1

execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/12percent if score #distance stellarity.misc matches 4..18 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch
execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/36percent if score #distance stellarity.misc matches 19..36 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches 36 run scoreboard players reset #distance2 stellarity.misc
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches 36 run function stellarity:item/slayer_crossbow/ray/branch

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..35 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/iter
