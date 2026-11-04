# releases all items
    scoreboard players operation #current_altar stellarity.altar_id = @s stellarity.altar_id

# Abort Empress summon if starlight soot is ascending
    execute if entity @e[type=item,distance=..6.0,tag=stellarity.altar_of_the_sacred.ascending] at @s run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1.0 1.2
    execute if entity @e[type=item,distance=..6.0,tag=stellarity.altar_of_the_sacred.ascending] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.25 0.25 0.25 0.05 20
    scoreboard players set #empress_of_light.is_alive stellarity.misc 0
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar_of_the_sacred.ascending] run team leave @s
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar_of_the_sacred.ascending] run tag @s remove stellarity.altar_of_the_sacred.ascending
    execute as @e[type=item,distance=..6.0] run tag @s remove stellarity.altar.skip

# target items 
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.18,0.0]}
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run team leave @s
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s add stellarity.altar.released
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.init
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run scoreboard players reset @s stellarity.altar_id
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.captured

# tags
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slotted
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot1
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot2
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot3
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot4
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot5
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot6
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot7
    tag @e[type=item,distance=..6.0] remove stellarity.altar.slot8
    tag @e[type=item,distance=..6.0] remove stellarity.altar.init

# reset any active craft progress
    scoreboard players reset @s stellarity.altar.craft_progress
    scoreboard players set @s stellarity.altar.idle_timer 0
    data remove storage stellarity:temp altar.craft
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.in_craft] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.18,0.0]}
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.in_craft] run team leave @s
    execute as @e[type=item,distance=..6.0,tag=stellarity.altar.in_craft] run tag @s add stellarity.altar.released
    tag @e[type=item,distance=..6.0] remove stellarity.altar.in_craft

# PickupDelay
    execute as @e[type=item,distance=..6.0] run data merge entity @s {PickupDelay:0s,NoGravity:0b,Glowing:0b}
    execute as @e[type=item,distance=..6.0] run team leave @s
    execute as @e[type=item,distance=..6.0] run tag @s remove stellarity.altar.captured
    execute as @e[type=item,distance=..6.0] run tag @s remove stellarity.altar.in_craft
    execute as @e[type=item,distance=..6.0] run tag @s remove stellarity.altar.skip
    execute as @e[type=item,distance=..6.0] run tag @s remove stellarity.altar_of_the_accursed.skip
    execute as @e[type=item,distance=..6.0] run tag @s add stellarity.altar.released

# teleport items
    execute as @e[type=item,distance=..5.0] at @p[distance=..6.0,limit=1] run tp @s ~ ~0.5 ~
    playsound minecraft:entity.item.pickup block @a ~ ~0.5 ~ 0.5 1.2
    scoreboard players set @s stellarity.altar_items 0

