# Advance shockwave radius
scoreboard players add @s stellarity.misc 1
execute store result storage stellarity:temp shockwave.rad int 1 run scoreboard players get @s stellarity.misc

# Calculate min and max distance for hit detection
execute store result storage stellarity:temp shockwave.min_dist float 1 run scoreboard players get @s stellarity.misc
scoreboard players remove @s stellarity.misc 1
execute store result storage stellarity:temp shockwave.prev_dist float 1 run scoreboard players get @s stellarity.misc
scoreboard players add @s stellarity.misc 1

# Render particles & check damage
function stellarity:entity/shulking/attacks/shockwave/circle_particles with storage stellarity:temp shockwave
function stellarity:entity/shulking/attacks/shockwave/check_damage with storage stellarity:temp shockwave

# Lifetime
scoreboard players remove @s stellarity.live_time 1
execute if score @s stellarity.live_time matches ..0 run kill @s
