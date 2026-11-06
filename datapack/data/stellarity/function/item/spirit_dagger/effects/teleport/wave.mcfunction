scoreboard players add #wave stellarity.misc 1
execute rotated ~22.5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000015 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 20.. rotated ~18 ~ run function stellarity:item/spirit_dagger/effects/teleport/wave
particle minecraft:dust{color:[1.0, 0.906, 0.047], scale:1.2} ^ ^ ^2 0.3 0.3 0.3 0 2 force @a[distance=..192]
particle minecraft:dust{color:[0.757, 0.337, 0.812], scale:1.2} ^ ^ ^2 0.3 0.3 0.3 0 2 force @a[distance=..192]
particle minecraft:dust{color:[0.592, 0.882, 0.894], scale:1.2} ^ ^ ^2 0.3 0.3 0.3 0 2 force @a[distance=..192]

execute if score #wave stellarity.misc matches 20.. run scoreboard players reset #wave stellarity.misc
