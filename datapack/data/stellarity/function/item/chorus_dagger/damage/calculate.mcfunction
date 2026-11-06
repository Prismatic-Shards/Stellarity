execute store result score #temp stellarity.misc run attribute @s minecraft:attack_damage get 1000

scoreboard players set #150 stellarity.misc 150
scoreboard players set #100 stellarity.misc 100

scoreboard players operation #temp stellarity.misc *= #150 stellarity.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc

execute store result storage stellarity:temp chorus_dagger.damage double 0.001 run scoreboard players get #temp stellarity.misc
