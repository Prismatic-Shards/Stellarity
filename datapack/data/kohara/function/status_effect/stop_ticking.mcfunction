scoreboard players set #should_remove kohara.misc 0
execute store result score #should_remove kohara.misc run function #kohara:status_effects/tick_removal_check

execute if score #should_remove kohara.misc matches 0 run tag @s remove kohara.status_effect.tick
