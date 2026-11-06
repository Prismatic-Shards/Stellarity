execute unless score @s stellarity.item.tamaris.execute_cooldown matches 1.. if predicate kohara:player/is_sneaking run function stellarity:item/tamaris/execute/animation/progress
execute if score @s stellarity.item.tamaris.animation.progress matches 1.. unless predicate kohara:player/is_sneaking run scoreboard players reset @s stellarity.item.tamaris.animation.progress

execute if score @s[tag=!stellarity.item.tamaris.no_warn] stellarity.item.tamaris.execute_cooldown matches 1.. run title @s actionbar [{"translate":"item.stellarity.tamaris.disabled","color":"red"},{"text":" ("},{"score":{"name":"@s","objective":"stellarity.item.tamaris.execute_cooldown"},"color":"#FFAA00"},{"text":"t)"}]

execute as @e[type=!#kohara:invalid_targets,tag=stellarity.item.tamaris.executable,distance=0.01..20] at @s anchored eyes rotated ~ 0 run function stellarity:item/tamaris/execute/indicator
