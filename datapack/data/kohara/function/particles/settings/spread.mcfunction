execute store result storage kohara:temp particles.distance float 0.00001 run scoreboard players get @s kohara.particles.spread.distance
execute store result storage kohara:temp particles.rotation1 int 1 run scoreboard players get @s kohara.particles.spread.x
execute store result storage kohara:temp particles.rotation2 int 1 run scoreboard players get @s kohara.particles.spread.y

function kohara:particles/settings/rotate_teleport with storage kohara:temp particles
