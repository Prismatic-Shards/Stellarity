scoreboard players add @s stellarity.item.elektra_shield.animation 1

execute rotated as @s run tp @s ~ ~ ~ ~ ~

# Invulnerability
# Knockback resistance is applied in 'use.mcfunction'
  effect give @s minecraft:resistance infinite 100 true

## SFX
  # Particles
    execute positioned ^ ^1 ^ rotated ~165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    execute positioned ^ ^1 ^ rotated ~-165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    execute positioned ^-0.12 ^1 ^-0.5 rotated ~165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    execute positioned ^0.12 ^1 ^-0.5 rotated ~-165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    execute positioned ^-0.24 ^1 ^-1 rotated ~165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    execute positioned ^0.24 ^1 ^-1 rotated ~-165 0 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0
    particle minecraft:dust{color:[0.957, 0.957, 0.957], scale:1.0} ~ ~1.1 ~ 0.25 0.35 0.25 0.5 8 force @a[distance=..32]
    particle minecraft:dust{color:[0.302, 0.765, 1.0], scale:1.0} ~ ~1.1 ~ 0.25 0.35 0.25 0.5 8 force @a[distance=..32]
    # Sounds
      execute if score @s stellarity.item.elektra_shield.animation matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.5 2
      execute if score @s stellarity.item.elektra_shield.animation matches 1 run playsound minecraft:entity.illusioner.mirror_move player @a[distance=0..] ~ ~ ~ 1 1
      execute if score @s stellarity.item.elektra_shield.animation matches 1 run playsound minecraft:entity.bat.takeoff player @a[distance=0..] ~ ~ ~ 1 1

    # Damage
      execute as @e[type=!#kohara:invalid_targets,distance=0.01..1.8,nbt={HurtTime:0s}] at @s run function stellarity:item/elektra_shield/dash/damage
      execute as @e[type=minecraft:shulker_bullet,distance=..1.8] at @s run function stellarity:item/elektra_shield/dash/damage

    # Reset fall damage (every tick, as it accumulates FOR WHATEVER REASON)
      summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.elektra_shield","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:2,show_particles:0b,show_icon:0b}]},Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1,custom_particle:{type:"block","block_state":"air"}}

    # End dash if in front of a block or after 4 ticks
      execute unless block ^ ^ ^0.875 #kohara:non_solid run function stellarity:item/elektra_shield/dash/end
      execute unless block ^ ^ ^1.75 #kohara:non_solid run function stellarity:item/elektra_shield/dash/end
      execute if score @s stellarity.item.elektra_shield.animation matches 4.. run function stellarity:item/elektra_shield/dash/end
