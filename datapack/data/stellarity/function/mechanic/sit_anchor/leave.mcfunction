# Dismount sitting player

kill @e[type=block_display,tag=stellarity.anchor_seat,distance=..2.0]
tag @s remove stellarity.sitting_anchor
tag @s remove is_sitting
tag @s remove stellarity.sit_needs_heal
scoreboard players reset @s stellarity.sit_timer
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 1.25
tp @s ~ ~0.1 ~
