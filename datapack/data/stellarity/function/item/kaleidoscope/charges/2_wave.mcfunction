scoreboard players add #wave stellarity.misc 1
execute rotated ~15 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000018 0 force @a[distance=..64]
execute rotated ~22.5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000028 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 24.. rotated ~15 ~ run function stellarity:item/kaleidoscope/charges/2_wave
execute if score #wave stellarity.misc matches 24.. run scoreboard players reset #wave stellarity.misc
