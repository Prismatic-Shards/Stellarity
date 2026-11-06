execute if block ~ ~ ~ sweet_berry_bush positioned ~ ~ ~ run function stellarity:item/duskberry/raycast/hit_block
scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..50 positioned ^ ^ ^0.1 run function stellarity:item/duskberry/raycast/ray
