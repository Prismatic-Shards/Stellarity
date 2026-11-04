$damage @s $(body_attack) mob_attack by @e[type=item_display,tag=save.mob,distance=..1.5,limit=1] from @e[type=item_display,tag=save.mob,distance=..1.5,limit=1]
tag @s add dont.clear.death.count
scoreboard players set @s wormAttackCD 10