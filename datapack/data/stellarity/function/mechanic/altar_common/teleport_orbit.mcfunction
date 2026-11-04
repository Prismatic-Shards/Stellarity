# Dynamic orbital distribution for any number of altar items
    scoreboard players set #current_slot stellarity.misc 1
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s add stellarity.altar.need_orbit
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.in_craft] run tag @s add stellarity.altar.need_orbit
    function stellarity:mechanic/altar_common/orbit_step with storage stellarity:temp altar.angle
    tag @e[type=item,tag=stellarity.altar.need_orbit] remove stellarity.altar.need_orbit
