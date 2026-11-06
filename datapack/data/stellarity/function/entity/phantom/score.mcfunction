execute store result score #temp stellarity.misc run data get entity @s size
scoreboard players set #1 stellarity.misc 1
scoreboard players operation #temp stellarity.misc += #1 stellarity.misc

scoreboard players operation @s stellarity.phantom.size = #temp stellarity.misc
