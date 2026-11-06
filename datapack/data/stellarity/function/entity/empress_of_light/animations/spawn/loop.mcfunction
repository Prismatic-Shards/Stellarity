scoreboard players add @s stellarity.empress_of_light.animation 1

tp @s[scores={stellarity.empress_of_light.animation=..100}] ~ ~0.04 ~ ~ ~
tp @s[scores={stellarity.empress_of_light.animation=101..}] ~ ~0.02 ~ ~2 ~

# Variant Tags
  execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.empress_of_light.animation matches 1 \
  unless predicate stellarity:entity/empress_of_light/is_daytime run \
  tag @s add stellarity.empress_of_light.nighttime

  execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.empress_of_light.animation matches 1 \
  if predicate stellarity:entity/empress_of_light/is_daytime run \
  tag @s add stellarity.empress_of_light.daytime

  execute if score #empress_of_light.is_radiant stellarity.misc matches 1 run \
  tag @s add stellarity.empress_of_light.radiant

execute if score @s stellarity.empress_of_light.animation matches 1 as @a[distance=..60] run function stellarity:entity/empress_of_light/animations/spawn/stopsound
execute if score @s stellarity.empress_of_light.animation matches 1 run playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=0..] ~ ~ ~ .5 0

execute if score @s stellarity.empress_of_light.animation matches ..60 run particle portal ~ ~ ~ 0 0 0 3 12 force @a[distance=..50]

execute if score @s stellarity.empress_of_light.animation matches 60 run function stellarity:entity/empress_of_light/animations/spawn/flash
execute if score @s stellarity.empress_of_light.animation matches 80 run function stellarity:entity/empress_of_light/animations/spawn/flash
execute if score @s stellarity.empress_of_light.animation matches 90 run function stellarity:entity/empress_of_light/animations/spawn/flash
execute if score @s stellarity.empress_of_light.animation matches 95 run function stellarity:entity/empress_of_light/animations/spawn/flash

execute if score @s stellarity.empress_of_light.animation matches 96 run particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]
execute if score @s stellarity.empress_of_light.animation matches 101 positioned ~ ~ ~ run function stellarity:entity/empress_of_light/animations/spawn/summon_boss_mob
execute if score @s stellarity.empress_of_light.animation matches 105 run particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]

execute if score @s stellarity.empress_of_light.animation matches 125 as @n[type=vindicator,tag=stellarity.empress_of_light] at @s run playsound minecraft:entity.vex.charge hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8

execute if score @s stellarity.empress_of_light.animation matches 101..145 as @n[type=vindicator,tag=stellarity.empress_of_light] at @s run tp @s ~ ~-0.015 ~
execute if score @s stellarity.empress_of_light.animation matches 145..155 as @n[type=vindicator,tag=stellarity.empress_of_light] at @s run tp @s ~ ~-0.01 ~

execute if entity @s[scores={stellarity.empress_of_light.animation=101..},tag=stellarity.empress_of_light.nighttime] run function stellarity:entity/empress_of_light/animations/spawn/aurora/night
execute if entity @s[scores={stellarity.empress_of_light.animation=101..},tag=stellarity.empress_of_light.daytime] run function stellarity:entity/empress_of_light/animations/spawn/aurora/day
execute if entity @s[scores={stellarity.empress_of_light.animation=101..},tag=stellarity.empress_of_light.radiant] run function stellarity:entity/empress_of_light/animations/spawn/aurora/radiant

execute if score @s stellarity.empress_of_light.animation matches 165 run data merge entity @n[type=vindicator,tag=stellarity.empress_of_light] {Invulnerable:0b}
execute if score @s stellarity.empress_of_light.animation matches 165 run tag @n[type=vindicator,tag=stellarity.empress_of_light] add stellarity.empress_of_light.can_attack
execute if score @s stellarity.empress_of_light.animation matches 170 run kill @s
