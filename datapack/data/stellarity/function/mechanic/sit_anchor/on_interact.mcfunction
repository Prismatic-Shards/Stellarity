# When anchor interaction trigger is clicked by player
data remove entity @s interaction
execute as @p[distance=..3.5] at @s positioned ~ ~-1.0 ~ run function stellarity:mechanic/sit_anchor/sit_here
kill @s
