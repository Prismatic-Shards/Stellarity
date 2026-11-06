# Timers
  scoreboard players add @s stellarity.item.prismatic_punch.particle_cycle 1
  scoreboard players add @s stellarity.misc 1
  scoreboard players remove @s stellarity.item.prismatic_punch.piercing_cooldown 1

# Detonation
  execute unless score @s stellarity.item.prismatic_punch.piercing_cooldown matches 1.. anchored eyes if entity @n[type=!#kohara:invalid_targets,dx=0,predicate=!stellarity:item/holding/prismatic_punch] run function stellarity:item/prismatic_punch/detonate/start
  execute unless score #exploded stellarity.misc matches 1 unless score @s stellarity.item.prismatic_punch.piercing_cooldown matches 1.. anchored eyes if entity @n[type=!#kohara:invalid_targets,distance=..2.5,predicate=!stellarity:item/holding/prismatic_punch] run function stellarity:item/prismatic_punch/detonate/start

# Accelerating projectile
# Starting velocity: 16 blocks/second
# Acceleration: 4.8 blocks/second squared
# Final velocity: 120 blocks/second
  execute if score @s stellarity.misc matches 1 run scoreboard players set @s stellarity.item.prismatic_punch.teleport 80
  execute store result storage stellarity:temp prismatic_punch.distance float 0.01 run scoreboard players get @s stellarity.item.prismatic_punch.teleport
  execute store result storage stellarity:temp prismatic_punch.distance_quarter float 0.0025 run scoreboard players get @s stellarity.item.prismatic_punch.teleport
  execute store result storage stellarity:temp prismatic_punch.distance_half float 0.005 run scoreboard players get @s stellarity.item.prismatic_punch.teleport
  execute store result storage stellarity:temp prismatic_punch.distance_3_quarters float 0.0075 run scoreboard players get @s stellarity.item.prismatic_punch.teleport
  function stellarity:item/prismatic_punch/move with storage stellarity:temp prismatic_punch
  scoreboard players add @s[scores={stellarity.item.prismatic_punch.teleport=..600}] stellarity.item.prismatic_punch.teleport 24

execute if score @s stellarity.misc matches 2.. run function stellarity:item/prismatic_punch/blast_particles

execute if score @s stellarity.misc matches 100.. run function stellarity:item/prismatic_punch/detonate/start_absolute
