# Summon shockwave expander marker at floor
execute at @s run summon marker ~ ~ ~ {Tags:["stellarity.shulking.shockwave","stellarity.temp"]}

execute as @e[type=marker,tag=stellarity.shulking.shockwave,distance=..1] run scoreboard players set @s stellarity.live_time 20
execute as @e[type=marker,tag=stellarity.shulking.shockwave,distance=..1] run scoreboard players set @s stellarity.misc 1

# Audio & visual cue
playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 1.5 0.7
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.8 0.5
particle explosion ~ ~0.2 ~ 0 0 0 1 0 force @a[distance=..64]
