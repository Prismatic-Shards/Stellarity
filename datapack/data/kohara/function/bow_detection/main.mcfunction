execute unless score @s kohara.detect.shot_bow matches 1 run scoreboard players set @s kohara.shot_bow 0


scoreboard players set @s[scores={kohara.detect.shot_bow=1,kohara.draw_time=1}] kohara.shot_bow 1
scoreboard players set @s[scores={kohara.detect.shot_bow=1,kohara.draw_time=2}] kohara.shot_bow 2
scoreboard players set @s[scores={kohara.detect.shot_bow=1,kohara.draw_time=3..}] kohara.shot_bow 3

execute if score @s kohara.is_drawing_bow matches 1.. run function kohara:bow_detection/tick_down
