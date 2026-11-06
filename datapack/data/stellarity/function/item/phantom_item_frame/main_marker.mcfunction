execute at @s if entity @a[distance=..16] if entity @s[tag=!stellarity.invisible] run function stellarity:item/phantom_item_frame/particles

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 4.. run function stellarity:item/phantom_item_frame/marker_tick
