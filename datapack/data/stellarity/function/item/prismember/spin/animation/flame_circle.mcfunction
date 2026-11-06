scoreboard players add #wave stellarity.misc 1
execute rotated ~22.5 0 run particle flame ^ ^ ^ ^ ^ ^10000000000000 0.00000000000002 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 16.. rotated ~22.5 ~ run function stellarity:item/prismember/spin/animation/flame_circle
execute if score #wave stellarity.misc matches 16.. run scoreboard players reset #wave stellarity.misc
