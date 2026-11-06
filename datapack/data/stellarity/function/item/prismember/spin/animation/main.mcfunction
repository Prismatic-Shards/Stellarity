scoreboard players add @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run function stellarity:item/prismember/spin/animation/1
execute if score @s stellarity.misc matches 3 run function stellarity:item/prismember/spin/animation/2

execute positioned ^ ^0.7 ^1.5 run function stellarity:item/prismember/spin/animation/spin_particle
execute rotated ~-45 ~ positioned ^ ^0.7 ^1.5 run function stellarity:item/prismember/spin/animation/spin_particle

tp @s ~ ~ ~ ~-90 ~

kill @s[scores={stellarity.misc=4..}]
