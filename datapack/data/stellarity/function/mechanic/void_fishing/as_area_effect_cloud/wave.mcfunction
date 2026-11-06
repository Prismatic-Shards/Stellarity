scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle dragon_breath ^ ^ ^0.25 ^ ^ ^10000000000000 0.0000000000000133 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:mechanic/void_fishing/as_area_effect_cloud/wave
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
