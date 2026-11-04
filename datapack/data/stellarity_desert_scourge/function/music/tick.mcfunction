execute if score @s musicTimer_stellarity_ds matches 0 run playsound stellarity_desert_scourge:music.desert_scourge master @s

scoreboard players add @s musicTimer_stellarity_ds 1
execute if score @s musicTimer_stellarity_ds matches 4851.. run scoreboard players set @s musicTimer_stellarity_ds 0

execute unless entity @e[type=item_display,tag=worm.ai.head,distance=..128] run function stellarity_desert_scourge:music/stop