scoreboard players add #wave stellarity.misc 1

execute rotated ~ 0 run particle dragon_breath ^ ^-0.9 ^18 ^ ^ ^-10000000000000 0.00000000000008 0 force @a[distance=..64]
execute rotated ~ 0 run particle dust_color_transition{from_color:[0.85,0.15,1.0],scale:1.2,to_color:[0.2,0.0,0.5]} ^ ^-0.9 ^18 0 0 0 0 1 force @a[distance=..64]

execute unless score #wave stellarity.misc matches 100.. rotated ~3.6 ~ run function stellarity:entity/dragon/spawn/pulse
execute if score #wave stellarity.misc matches 100.. run scoreboard players reset #wave stellarity.misc
