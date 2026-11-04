summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["axe.attack"]}
item replace entity @e[type=armor_stand,tag=axe.attack,limit=1] weapon.mainhand with minecraft:netherite_axe
$damage @s $(shield_attack) mob_attack by @e[type=armor_stand,tag=axe.attack,limit=1] from @e[type=armor_stand,tag=axe.attack,limit=1]
kill @e[type=armor_stand,tag=axe.attack,limit=1]

scoreboard players set $strength player_motion.api.launch 24000
execute at @e[type=item_display,tag=save.mob,distance=..1.5,limit=1] facing entity @s feet rotated ~20 ~30 run function stellarity_desert_scourge:player_motion/api/launch_looking