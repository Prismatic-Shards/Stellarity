scoreboard players add #wave stellarity.misc 1
execute rotated ~12 0 run particle dragon_breath ^ ^ ^ ^ ^ ^10000000000000 0.000000000000005 0 force @a[distance=..128]
execute unless score #wave stellarity.misc matches 30.. rotated ~12 ~ run function stellarity:entity/dragon/beam_thingy/spawn_wave
execute if score #wave stellarity.misc matches 30.. run scoreboard players reset #wave stellarity.misc
