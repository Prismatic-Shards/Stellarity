# Check damage only for players on the ground within the wave edge
$execute as @a[distance=$(prev_dist)..$(rad),gamemode=!creative,gamemode=!spectator] at @s if block ~ ~-0.15 ~ #kohara:solid run function stellarity:entity/shulking/attacks/shockwave/hit_player
