scoreboard players add @s stellarity.empress_of_light.animation 1

tp @s ~ ~0.05 ~

particle end_rod ~ ~ ~ 0 0 0 0.35 2

execute at @s run function stellarity:entity/empress_of_light/attacks/clear_all

execute if score @s stellarity.empress_of_light.animation matches 1 run playsound entity.vex.death hostile @a[distance=0..] ~ ~ ~ 2.2 1

scoreboard players add #timer1 stellarity.misc 1
execute if score #timer1 stellarity.misc matches 4 run particle explosion_emitter ~ ~1 ~ 0 0 0 1 1 force
execute if score #timer1 stellarity.misc matches 4 run scoreboard players reset #timer1

execute if score @s[tag=!stellarity.empress_of_light.full_daytime,tag=!stellarity.empress_of_light.radiant] stellarity.empress_of_light.animation matches 60 run function stellarity:entity/empress_of_light/core/loot/nighttime
execute if score @s[tag=stellarity.empress_of_light.full_daytime,tag=!stellarity.empress_of_light.radiant] stellarity.empress_of_light.animation matches 60 run function stellarity:entity/empress_of_light/core/loot/daytime
execute if score @s[tag=stellarity.empress_of_light.radiant] stellarity.empress_of_light.animation matches 60 run function stellarity:entity/empress_of_light/core/loot/radiant

execute if score @s stellarity.empress_of_light.animation matches 60 run function stellarity:entity/empress_of_light/animations/death/end
