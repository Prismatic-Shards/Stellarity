# Detect players stepped into fangs
execute as @e[type=evoker_fangs,tag=stellarity.shulking.fang] at @s as @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] run function stellarity:entity/shulking/attacks/fangs/hit_player
