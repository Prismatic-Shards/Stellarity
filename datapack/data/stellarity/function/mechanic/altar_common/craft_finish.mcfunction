# flash
    particle minecraft:flash{color:-6152010} ~ ~-.4 ~ 0 0 0 0 0 force
    particle end_rod ~ ~-.4 ~ 0 0 0 0.15 32 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 1.0 1.0
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1.0 1.1
playsound stellarity:misc.victory_core_bling block @a[distance=0..] ~ ~-.4 ~ 0.85 1.0

# elytra dye or trim
    execute unless data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} unless data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft]
    execute if data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft,tag=!stellarity.altar_of_the_accursed.minecraft.elytra]
    execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft,tag=!stellarity.altar_of_the_accursed.minecraft.elytra]

# recover captured items
    execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.15,0.0]}
    tag @e[type=item,distance=..3.0,tag=stellarity.altar.captured] remove stellarity.altar.captured
    tag @e[type=item,distance=..3.0] remove stellarity.altar.init

# 3. spawn
    function stellarity:mechanic/altar_common/craft_spawn_output with storage stellarity:temp altar.craft

playsound stellarity:mechanic.altar_of_the_accursed.ready ambient @a[distance=0..] ~ ~0.5 ~ 9 0.9 1.0

# 4. advancement grant & cleanup
    advancement grant @a[distance=..6] only stellarity:altar_of_the_accursed/cursed_crafting
    scoreboard players reset @s stellarity.altar.craft_progress
    scoreboard players set @s stellarity.altar.idle_timer 0
    data remove storage stellarity:temp altar.craft
