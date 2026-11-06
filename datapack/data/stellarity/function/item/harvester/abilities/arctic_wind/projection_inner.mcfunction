scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle dust{color:[0.302, 0.749, 0.89],scale:1.0} ^ ^.25 ^4 0 0 0 1 1 force @a[distance=..32]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:item/harvester/abilities/arctic_wind/projection_inner
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
