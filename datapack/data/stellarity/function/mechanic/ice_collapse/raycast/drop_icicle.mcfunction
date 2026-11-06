scoreboard players set #stellarity.ice_collapse.type stellarity.misc 3
scoreboard players set #stellarity.ice_collapse.height stellarity.misc 0
execute if block ~ ~ ~ #minecraft:air run function stellarity:mechanic/ice_collapse/raycast/step
