# Reset match tracker for this step
    scoreboard players set #slot_matched stellarity.misc 0

# Try slotted items matching the current slot counter first
    execute if score #current_slot stellarity.misc matches 1 as @e[type=item,tag=stellarity.altar.slot1,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 2 as @e[type=item,tag=stellarity.altar.slot2,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 3 as @e[type=item,tag=stellarity.altar.slot3,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 4 as @e[type=item,tag=stellarity.altar.slot4,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 5 as @e[type=item,tag=stellarity.altar.slot5,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 6 as @e[type=item,tag=stellarity.altar.slot6,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 7 as @e[type=item,tag=stellarity.altar.slot7,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle
    execute if score #current_slot stellarity.misc matches 8 as @e[type=item,tag=stellarity.altar.slot8,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle

# Fallback: if no slotted item matched for this slot, pick any remaining item with need_orbit
    execute if score #slot_matched stellarity.misc matches 0 as @e[type=item,tag=stellarity.altar.need_orbit,limit=1] run function stellarity:mechanic/altar_common/orbit_single with storage stellarity:temp altar.angle

# Advance slot counter
    scoreboard players add #current_slot stellarity.misc 1

# Recurse for remaining items rotated by base angle
    $execute rotated ~-$(base) ~ if entity @e[type=item,tag=stellarity.altar.need_orbit] run function stellarity:mechanic/altar_common/orbit_step with storage stellarity:temp altar.angle
