scoreboard players add #wave stellarity.misc 1
execute rotated ~20 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000048 0 force @a[distance=..64]
execute rotated ~15 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000038 0 force @a[distance=..64]
execute rotated ~10 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.000000000000028 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:item/kaleidoscope/charges/3_wave
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
