tag @s add stellarity.rotated

scoreboard players add @s stellarity.misc4 1
execute store result storage stellarity:temp shrapnel.rotation.x float 0.1 run random value 0..3600
execute store result storage stellarity:temp shrapnel.rotation.y float 0.1 run random value -750..750

function stellarity:item/call_of_the_void/shrapnel/rotation/macro_check with storage stellarity:temp shrapnel.rotation
