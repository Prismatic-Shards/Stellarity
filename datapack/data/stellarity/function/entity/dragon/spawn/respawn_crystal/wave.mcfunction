scoreboard players add #wave stellarity.misc 1
execute rotated ~15 0 run particle dragon_breath ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000001 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 24.. rotated ~15 ~ run function stellarity:entity/dragon/spawn/respawn_crystal/wave
execute if score #wave stellarity.misc matches 24.. run scoreboard players reset #wave stellarity.misc
