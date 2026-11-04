$damage @s $(head_attack) mob_attack by @e[type=item_display,tag=save.mob,distance=..1.5,limit=1] from @e[type=item_display,tag=save.mob,distance=..1.5,limit=1]

execute if score @s damageBlocked matches 1.. run function stellarity_desert_scourge:worm_ai/head/attacks/attack_shield with storage stellarity_desert_scourge:const difficulty
execute unless score @s damageBlocked matches 1.. run tag @s add dont.clear.death.count

scoreboard players set @s wormAttackCD 10