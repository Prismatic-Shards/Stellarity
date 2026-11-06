
execute if entity @s[tag=!stellarity.placed] run function stellarity:item/phantom_item_frame/place

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 4.. run function stellarity:item/phantom_item_frame/tick
