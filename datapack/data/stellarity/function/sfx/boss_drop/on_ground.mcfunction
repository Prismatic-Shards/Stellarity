scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 5 run particle end_rod ~ ~0.35 ~ .2 .2 .2 0.011 1 force @a[distance=..64]
execute if score @s stellarity.misc matches 5.. run scoreboard players reset @s stellarity.misc


scoreboard players add @s stellarity.misc2 1
execute if score @s stellarity.misc2 matches 40 run function stellarity:sfx/boss_drop/wave
execute if score @s stellarity.misc2 matches 40.. run scoreboard players reset @s stellarity.misc2

scoreboard players add @s stellarity.misc3 1
execute if score @s[nbt={OnGround:1b}] stellarity.misc3 matches 3 run particle enchant ~ ~.35 ~ 0 0 0 1 2 force @a[distance=..32]
execute if score @s stellarity.misc3 matches 3.. run scoreboard players reset @s stellarity.misc3
