scoreboard players add #stellarity.ice_collapse.height stellarity.misc 1

execute if score #stellarity.ice_collapse.height stellarity.misc matches ..13 if block ~ ~1 ~ #minecraft:air positioned ~ ~1 ~ run function stellarity:mechanic/ice_collapse/raycast/step

execute if score #stellarity.ice_collapse.height stellarity.misc matches 14.. run function stellarity:mechanic/ice_collapse/raycast/spawn_selected
execute if score #stellarity.ice_collapse.height stellarity.misc matches ..13 unless block ~ ~1 ~ #minecraft:air run function stellarity:mechanic/ice_collapse/raycast/spawn_selected
