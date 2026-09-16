execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/animations/eol_death/play_exclusive
scoreboard players reset #ambient stellarity.misc

tag @s add stellarity.empress_of_light.death_animation
tag @s remove stellarity.empress_of_light.phase_2
tag @s remove stellarity.empress_of_light.can_attack

execute at @s run function stellarity:entity/empress_of_light/attacks/clear_all

data merge entity @s {Invulnerable:1b}

function #kohara:status_effects/clear_all

effect give @s invisibility infinite 0 true
effect clear @s regeneration

playsound entity.allay.death hostile @a[distance=0..] ~ ~1 ~ 1.5 1.15
playsound entity.vex.death hostile @a[distance=0..] ~ ~1 ~ 1.5 1.15
playsound minecraft:entity.blaze.death hostile @a[distance=0..] ~ ~ ~ 0.2 0

execute as @a run function stellarity:entity/dragon/music/reset
