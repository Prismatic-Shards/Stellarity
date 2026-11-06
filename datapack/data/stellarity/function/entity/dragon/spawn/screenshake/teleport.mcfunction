execute if entity @s[nbt={abilities:{flying:1b}}] run return 0

scoreboard players add #screenshake_tick stellarity.misc 1
execute if score #screenshake_tick stellarity.misc matches 2.. run scoreboard players set #screenshake_tick stellarity.misc 0

execute if score #screenshake_tick stellarity.misc matches 1 run tp @s ~ ~0.015 ~
execute if score #screenshake_tick stellarity.misc matches 0 run tp @s ~ ~-0.015 ~
