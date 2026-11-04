# Ticks the 1-second crafting convergence animation
    scoreboard players remove @s stellarity.altar.craft_progress 1

# Finish craft when countdown reaches 0
    execute if score @s stellarity.altar.craft_progress matches ..0 run return run function stellarity:mechanic/altar_common/craft_finish

# Safety check: if all ingredient items disappeared (e.g. killed, picked up, or voided), reset crafting state
    execute unless entity @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft] run scoreboard players reset @s stellarity.altar.craft_progress
    execute unless entity @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft] run data remove storage stellarity:temp altar.craft
    execute unless entity @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft] run return 0

# pull
    tp @s ~ ~ ~ ~7.5 ~

# Update radius 
    execute if score @s stellarity.altar.craft_progress matches 20 run data modify storage stellarity:temp altar.angle.radius set value "0.85"
    execute if score @s stellarity.altar.craft_progress matches 19 run data modify storage stellarity:temp altar.angle.radius set value "0.80"
    execute if score @s stellarity.altar.craft_progress matches 18 run data modify storage stellarity:temp altar.angle.radius set value "0.76"
    execute if score @s stellarity.altar.craft_progress matches 17 run data modify storage stellarity:temp altar.angle.radius set value "0.72"
    execute if score @s stellarity.altar.craft_progress matches 16 run data modify storage stellarity:temp altar.angle.radius set value "0.68"
    execute if score @s stellarity.altar.craft_progress matches 15 run data modify storage stellarity:temp altar.angle.radius set value "0.63"
    execute if score @s stellarity.altar.craft_progress matches 14 run data modify storage stellarity:temp altar.angle.radius set value "0.59"
    execute if score @s stellarity.altar.craft_progress matches 13 run data modify storage stellarity:temp altar.angle.radius set value "0.55"
    execute if score @s stellarity.altar.craft_progress matches 12 run data modify storage stellarity:temp altar.angle.radius set value "0.50"
    execute if score @s stellarity.altar.craft_progress matches 11 run data modify storage stellarity:temp altar.angle.radius set value "0.45"
    execute if score @s stellarity.altar.craft_progress matches 10 run data modify storage stellarity:temp altar.angle.radius set value "0.40"
    execute if score @s stellarity.altar.craft_progress matches 9 run data modify storage stellarity:temp altar.angle.radius set value "0.35"
    execute if score @s stellarity.altar.craft_progress matches 8 run data modify storage stellarity:temp altar.angle.radius set value "0.30"
    execute if score @s stellarity.altar.craft_progress matches 7 run data modify storage stellarity:temp altar.angle.radius set value "0.25"
    execute if score @s stellarity.altar.craft_progress matches 6 run data modify storage stellarity:temp altar.angle.radius set value "0.20"
    execute if score @s stellarity.altar.craft_progress matches 5 run data modify storage stellarity:temp altar.angle.radius set value "0.16"
    execute if score @s stellarity.altar.craft_progress matches 4 run data modify storage stellarity:temp altar.angle.radius set value "0.12"
    execute if score @s stellarity.altar.craft_progress matches 3 run data modify storage stellarity:temp altar.angle.radius set value "0.08"
    execute if score @s stellarity.altar.craft_progress matches 2 run data modify storage stellarity:temp altar.angle.radius set value "0.04"
    execute if score @s stellarity.altar.craft_progress matches 1 run data modify storage stellarity:temp altar.angle.radius set value "0.01"

data modify storage stellarity:temp altar.angle.height set value "-0.1"

# Count in-craft items and calculate angle
    scoreboard players set #altar_items stellarity.misc 0
    execute store result score #altar_items stellarity.misc if entity @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft]
    execute if score #altar_items stellarity.misc matches 1.. run scoreboard players set #altar_base_angle stellarity.misc 360
    execute if score #altar_items stellarity.misc matches 1.. run scoreboard players operation #altar_base_angle stellarity.misc /= #altar_items stellarity.misc
    execute store result storage stellarity:temp altar.angle.base int 1 run scoreboard players get #altar_base_angle stellarity.misc

# Re-assign slots for in-craft items
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slotted
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot1
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot2
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot3
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot4
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot5
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot6
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot7
    tag @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] remove stellarity.altar.slot8

execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot1"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot2"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot3"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot4"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot5"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot6"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot7"}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot8"}

# Teleport towards center
    function stellarity:mechanic/altar_common/teleport_orbit with storage stellarity:temp altar.angle

# Prevent items from interacting
    execute as @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:20s}

# Swirling particles & sound
    particle portal ~ ~0.45 ~ 0.08 0.08 0.08 0.05 6
    particle reverse_portal ~ ~0.45 ~ 0.25 0.1 0.25 0.05 4
    execute if score @s stellarity.altar.craft_progress matches 10 run playsound block.respawn_anchor.charge block @a ~ ~0.5 ~ 0.5 1.4
