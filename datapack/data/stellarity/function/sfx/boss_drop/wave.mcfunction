scoreboard players add #wave stellarity.misc 1
execute rotated ~40 0 run particle end_rod ^ ^0.35 ^ ^ ^ ^10000000000000 0.000000000000006 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 9.. rotated ~40 ~ run function stellarity:sfx/boss_drop/wave
execute if score #wave stellarity.misc matches 9.. run scoreboard players reset #wave stellarity.misc
