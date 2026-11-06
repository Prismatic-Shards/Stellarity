execute unless block ~ ~ ~ #kohara:non_solid run function stellarity:item/satchel_of_voids/place/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..50 positioned ^ ^ ^0.1 run function stellarity:item/satchel_of_voids/place/ray
