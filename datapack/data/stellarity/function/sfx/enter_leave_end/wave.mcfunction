scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle dragon_breath ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000002 0 force @a[distance=..64]
execute rotated ~15 0 run particle dragon_breath ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000001 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:sfx/enter_leave_end/wave
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
