execute as @e[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/remove/this
particle end_rod ~ ~1 ~ 0 0 0 0.6 150 normal
particle firework ~ ~1 ~ 0 0 0 0.6 150 normal

playsound entity.allay.death hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8
playsound entity.vex.death hostile @a[distance=0..] ~ ~1 ~ 1.5 0.7
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=0..] ~ ~ ~ 1 0.8

kill @e[type=marker,tag=stellarity.empress_of_light.tracker]
execute as @e[type=block_display,tag=stellarity.empress_of_light.wing] on passengers run kill @s
kill @e[type=block_display,tag=stellarity.empress_of_light.wing]
execute at @s run function stellarity:entity/empress_of_light/attacks/clear_all
kill @s

scoreboard players set #empress_of_light.is_alive stellarity.misc 0
scoreboard players set #empress_of_light.is_radiant stellarity.misc 0
scoreboard players reset #timer1
scoreboard players reset #ambient stellarity.misc

bossbar set stellarity:empress_of_light players

execute as @a run function stellarity:entity/empress_of_light/music/reset

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.nighttime] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.death","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#AF4BFF"},"\n"]
execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.daytime] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.death","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#ffea2f"},"\n"]
execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 if entity @s[tag=stellarity.empress_of_light.radiant] run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.death","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#ff4b4b"},"\n"]