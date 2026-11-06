scoreboard players add #wave stellarity.misc 1
execute rotated ~5 0 run particle dust{color:[1.0, 1.0, 1.0],scale:1.0} ^ ^.25 ^9 0 0 0 1 1 force @a[distance=..32]
execute unless score #wave stellarity.misc matches 72.. rotated ~5 ~ run function stellarity:item/harvester/abilities/arctic_wind/projection_outer
execute if score #wave stellarity.misc matches 72.. run scoreboard players reset #wave stellarity.misc
