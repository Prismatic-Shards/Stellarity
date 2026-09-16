scoreboard players add #wave stellarity.misc 1

execute rotated ~2.5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.00000000000021 0 force @a[distance=..128]
execute rotated ~3.75 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.00000000000033 0 force @a[distance=..128]

execute unless score #wave stellarity.misc matches 144.. rotated ~2.5 ~ run function stellarity:mechanic/altar_of_the_accursed/activate/wave
execute if score #wave stellarity.misc matches 144.. run scoreboard players reset #wave stellarity.misc
