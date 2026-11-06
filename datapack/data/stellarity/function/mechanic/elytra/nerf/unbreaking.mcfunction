scoreboard players set #100 stellarity.misc 100
scoreboard players set #1 stellarity.misc 1
scoreboard players set #temp2 stellarity.misc 100
scoreboard players operation #unbreaking stellarity.misc += #1 stellarity.misc
scoreboard players operation #temp2 stellarity.misc /= #unbreaking stellarity.misc
scoreboard players operation #temp stellarity.misc *= #temp2 stellarity.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
