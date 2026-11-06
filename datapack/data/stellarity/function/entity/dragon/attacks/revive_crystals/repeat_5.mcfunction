scoreboard players add #times stellarity.misc 1

execute as @e[type=marker,tag=stellarity.crystal,limit=1,sort=random] at @s run function stellarity:entity/dragon/attacks/revive_crystals/respawn_crystal

execute unless score #times stellarity.misc = #total_times stellarity.misc run function stellarity:entity/dragon/attacks/revive_crystals/repeat_5
