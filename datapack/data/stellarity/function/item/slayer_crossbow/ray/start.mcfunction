tag @s add laser
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
scoreboard players set #distance2 stellarity.misc 0
execute if entity @s[tag=!stellarity.multishot] run function stellarity:item/slayer_crossbow/ray/iter
execute if entity @s[tag=stellarity.multishot] run function stellarity:item/slayer_crossbow/ray/iter_multishot
tag @s remove laser
