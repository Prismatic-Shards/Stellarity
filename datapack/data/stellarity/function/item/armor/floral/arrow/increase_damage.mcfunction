tag @s add stellarity.floral_armor.damage
tag @s add stellarity.floral_arrow
tag @s add stellarity.arrow

execute store result score #damage stellarity.misc run data get entity @s damage 100

scoreboard players set #110 stellarity.misc 110
scoreboard players set #100 stellarity.misc 100

scoreboard players operation #damage stellarity.misc *= #110 stellarity.misc
scoreboard players operation #damage stellarity.misc /= #100 stellarity.misc

execute store result entity @s damage float 0.01 run scoreboard players get #damage stellarity.misc
