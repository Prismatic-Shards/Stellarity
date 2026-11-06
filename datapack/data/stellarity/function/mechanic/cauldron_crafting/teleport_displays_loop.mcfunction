execute as @e[type=item_display,distance=..1.5,tag=stellarity.brewing.need_tp,limit=1] at @s run tp @s ^ ^0.65 ^1
tag @e[type=item_display,distance=..1.5,tag=stellarity.brewing.need_tp,limit=1] remove stellarity.brewing.need_tp
$execute rotated ~-$(base) ~ if entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.need_tp] run function stellarity:mechanic/cauldron_crafting/teleport_displays_loop with storage stellarity:temp cauldron_crafting.angle
