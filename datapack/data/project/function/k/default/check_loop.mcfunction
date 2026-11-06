# Project created via BDEngine

execute as @e[tag=project_root,type=block_display] if entity @s[tag=animation_loop] at @s run function project:k/default/keyframe_0
execute as @e[tag=project_root,type=block_display] unless entity @s[tag=animation_loop] at @s run function project:_/stop_anim