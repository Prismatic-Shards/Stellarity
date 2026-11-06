scoreboard players set #40 stellarity.misc 40

scoreboard players operation #flame_time stellarity.misc = #fire_aspect stellarity.misc
scoreboard players operation #flame_time stellarity.misc *= #40 stellarity.misc

execute store result entity @s Fire short 1 run scoreboard players get #flame_time stellarity.misc
