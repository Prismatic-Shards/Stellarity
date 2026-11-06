# Age
scoreboard players add @s stellarity.misc 1

# Rotation
tp @s ~ ~ ~ ~2.5 ~

# 1st particle circle
execute rotated ~ 0 run particle end_rod ^ ^ ^6 0 0 0 0 1 normal
execute rotated ~ 0 run particle minecraft:dust{color:[1.0, 0.867, 0.0], scale:1.25} ^ ^ ^6 0.1 0.1 0.1 0 2 force @a[distance=..32]

execute rotated ~120 0 run particle end_rod ^ ^ ^6 0 0 0 0 1 normal
execute rotated ~120 0 run particle minecraft:dust{color:[1.0, 0.867, 0.0], scale:1.25} ^ ^ ^6 .1 .1 .1 0 2 force @a[distance=..32]

execute rotated ~240 0 run particle end_rod ^ ^ ^6 0 0 0 0 1 normal
execute rotated ~240 0 run particle minecraft:dust{color:[1.0, 0.867, 0.0], scale:1.25} ^ ^ ^6 0.1 0.1 0.1 0 2 force @a[distance=..32]

# 2nd particle circle
execute as @n[type=marker,tag=stellarity.book_of_light.aura_2] at @s run function stellarity:item/spellbooks/light/aura_secondary_loop

# Area particles
particle minecraft:dust{color:[1.0, 0.867, 0.0], scale:0.8} ^ ^ ^ 3 0.3 3 0 3 normal
particle minecraft:trial_spawner_detection ^ ^-0.5 ^ 3.5 0 4 0 1 normal

# Ambient sounds
execute if score @s stellarity.misc matches 1 run playsound minecraft:block.beacon.ambient player @a[distance=0..] ~ ~.92 ~ 1 1
execute if score @s stellarity.misc matches 101 run playsound minecraft:block.beacon.ambient player @a[distance=0..] ~ ~.92 ~ 1 1
execute if score @s stellarity.misc matches 201 run playsound minecraft:block.beacon.ambient player @a[distance=0..] ~ ~.92 ~ 1 1
execute if score @s stellarity.misc matches 301 run playsound minecraft:block.beacon.ambient player @a[distance=0..] ~ ~.92 ~ 1 1

# Pulse
scoreboard players add @s stellarity.misc2 1
execute if score @s stellarity.misc2 matches 40 run function stellarity:item/spellbooks/light/pulse
execute if score @s stellarity.misc2 matches 40 run scoreboard players reset @s stellarity.misc2

# Aura timeout
execute if score @s stellarity.misc matches 401.. as @a run attribute @s minecraft:knockback_resistance modifier remove stellarity:book_of_light
execute if score @s stellarity.misc matches 401.. run kill @e[type=marker,limit=2,sort=nearest,tag=stellarity.book_of_light]
