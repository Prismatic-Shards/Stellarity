# Re-packs slots only when item count changes to prevent rotational jitter
    scoreboard players operation #current_altar stellarity.altar_id = @s stellarity.altar_id

# Clear slot tags on items belonging to this altar
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slotted
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot1
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot2
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot3
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot4
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot5
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot6
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot7
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.slot8

# Assign slot 1 through 8 sequentially
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot1"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot2"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot3"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot4"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot5"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot6"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot7"}
    execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.slotted,limit=1] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run function stellarity:mechanic/altar_common/assign_slot {slot:"slot8"}
