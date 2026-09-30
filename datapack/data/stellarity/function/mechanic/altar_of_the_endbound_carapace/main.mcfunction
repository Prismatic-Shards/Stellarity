execute as @a[distance=..8,tag=!stellarity.heard_altar_approach.carapace] at @s run playsound stellarity:altar_common.approach master @s ~ ~ ~ 1 1
execute as @a[distance=..8,tag=!stellarity.heard_altar_approach.carapace] run tag @s add stellarity.heard_altar_approach.carapace

execute if predicate kohara:chance/20percent at @s run particle dragon_breath ~ ~0.5 ~ 0.3 0.2 0.3 0.01 2
execute if predicate kohara:chance/10percent at @s run particle portal ~ ~0.8 ~ 0.3 0.3 0.3 0.1 3

scoreboard players add @s stellarity.misc.loop.1s 1
execute if score @s stellarity.misc.loop.1s matches 20.. run function stellarity:mechanic/altar_of_the_endbound_carapace/loop_1s

execute if entity @p[distance=..8,predicate=kohara:player/is_sneaking] as @e[type=item,distance=..3,nbt=!{PickupDelay:0s}] run data modify entity @s PickupDelay set value 0s
