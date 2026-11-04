scoreboard players set *set difficulty 1

scoreboard players set *wormHealth difficulty 3000
data modify storage stellarity_desert_scourge:const difficulty set value {max_health:300f,head_attack:20f,body_attack:12.5f,shield_attack:40f,mini_worm_attack:10f}

tellraw @a {"translate": "difficulty.hard","color": "red"}
scoreboard players reset @s stellarity_desert_scourge.difficulty