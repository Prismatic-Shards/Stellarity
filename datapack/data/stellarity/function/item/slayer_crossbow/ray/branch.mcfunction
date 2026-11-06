execute if score #hit stellarity.misc matches 0 as @e[type=!#kohara:invalid_targets,tag=!laser,dx=0,sort=nearest] run function stellarity:item/slayer_crossbow/ray/damage
scoreboard players add #distance2 stellarity.misc 1
function stellarity:item/slayer_crossbow/ray/particles

execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/9percent if score #distance2 stellarity.misc matches 0..150 positioned ^ ^ ^0.2 rotated ~-7.5 ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch
execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/9percent if score #distance2 stellarity.misc matches 0..150 positioned ^ ^ ^0.2 rotated ~7.5 ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch
execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/9percent if score #distance2 stellarity.misc matches 0..150 positioned ^ ^ ^0.2 rotated ~ ~-7.5 if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch
execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/9percent if score #distance2 stellarity.misc matches 0..150 positioned ^ ^ ^0.2 rotated ~ ~7.5 if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch

execute if score #hit stellarity.misc matches 0 if predicate kohara:chance/75percent if score #distance2 stellarity.misc matches ..150 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #kohara:non_solid run function stellarity:item/slayer_crossbow/ray/branch
execute if score #distance2 stellarity.misc matches 151 run scoreboard players reset #distance2 stellarity.misc
