# End raycast
scoreboard players set #hit stellarity.misc 1

# End the command early if there is already a portal marker present nearby
execute if entity @e[type=marker,tag=stellarity.end_portal,distance=..5] \
	run return 1

# Pawticwes
execute positioned ~ ~0.25 ~ run function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/end_portal_fill",despawn_value:30,state:spread,spread_initial:0,spread_radius:0,id:end_portal_fill}
playsound stellarity:block.end_portal_frame.fill block @a[distance=0..] ~ ~ ~ 1 1

# Check for whether there is an End Portal block anywhere around the frame.
# This is roughly the same as if we checked for whether the Portal was opened.
scoreboard players set #check stellarity.misc 0

execute if block ~1 ~ ~ end_portal run scoreboard players set #check stellarity.misc 1
execute if block ~ ~ ~1 end_portal run scoreboard players set #check stellarity.misc 1
execute if block ~-1 ~ ~ end_portal run scoreboard players set #check stellarity.misc 1
execute if block ~ ~ ~-1 end_portal run scoreboard players set #check stellarity.misc 1

# If it wasn't opened, skip executing the rest of the function.
# Probably saves 0.00000001% of the tick or whatever.
# Nah jk, there is just absolutely 0 need to run them
execute if score #check stellarity.misc matches 0 run return 0

# A wild portal appears
execute if score #check stellarity.misc matches 1 run function stellarity:sfx/end_portal/raycast/checks/start_animation_place_marker
