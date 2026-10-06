# Age
scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 10.. unless entity @s[tag=stellarity.spirit_dagger.spirit_ready] run tag @s add stellarity.spirit_dagger.spirit_ready
execute if score @s stellarity.misc matches 10.. at @s as @e[tag=stellarity.spirit_dagger.spirit,distance=..2] unless entity @s[tag=stellarity.spirit_dagger.spirit_ready] run tag @s add stellarity.spirit_dagger.spirit_ready

# Attack-based teleport (only when blades/spirit are fully charged)
execute at @s as @e[tag=stellarity.spirit_dagger.spirit,tag=stellarity.spirit_dagger.spirit_ready,distance=..2,type=interaction] if data entity @s attack run function stellarity:item/spirit_dagger/spirit/on_attack
execute at @s as @e[tag=stellarity.spirit_dagger.spirit,tag=!stellarity.spirit_dagger.spirit_ready,distance=..2,type=interaction] if data entity @s attack run data remove entity @s attack

# Auto-teleport if owner is within 7 blocks (only when blades/spirit are fully charged)
execute if entity @s[tag=stellarity.spirit_dagger.spirit_ready] run function stellarity:item/spirit_dagger/spirit/auto_teleport

# 25 seconds of lifespan
execute if score @s stellarity.misc matches 501.. run function stellarity:item/spirit_dagger/spirit/timeout

# Particles
teleport @s ~ ~ ~ ~5 ~
particle minecraft:dust{color:[0.988, 0.988, 0.988], scale:1.3} ^ ^.75 ^0.75 0 0 0 0 1 normal
particle minecraft:dust{color:[0.988, 0.988, 0.988], scale:1.3} ^ ^.75 ^-0.75 0 0 0 0 1 normal

particle dragon_breath ~ ~.75 ~ .3 .3 .3 0.01 1 normal
particle minecraft:dust{color:[0.757, 0.337, 0.812], scale:1.0} ~ ~.75 ~ .35 .35 .35 0 1 normal
