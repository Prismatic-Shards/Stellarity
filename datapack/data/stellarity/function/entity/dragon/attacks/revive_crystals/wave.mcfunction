scoreboard players add #wave stellarity.misc 1
execute rotated ~5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.00000000000008 0 force @a[distance=..200]
execute unless score #wave stellarity.misc matches 72.. rotated ~5 ~ run function stellarity:entity/dragon/attacks/revive_crystals/wave
execute if score #wave stellarity.misc matches 72.. run scoreboard players reset #wave stellarity.misc
