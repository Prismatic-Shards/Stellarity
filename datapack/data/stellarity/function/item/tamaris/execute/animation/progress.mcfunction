scoreboard players add @s stellarity.item.tamaris.animation.progress 1

execute if score @s stellarity.item.tamaris.animation.progress matches 1 run title @s actionbar " "

## DEBUG
  # And fun tbh
  #execute if score @s stellarity.item.tamaris.animation.progress matches 1 as @n[type=!#kohara:invalid_targets,distance=0.1..100,tag=stellarity.item.tamaris.executable] at @s run tp ~50 ~ ~

  execute if score @s stellarity.item.tamaris.animation.progress matches 2 run function stellarity:item/tamaris/execute/animation/playsound

execute if score @s stellarity.item.tamaris.animation.progress matches 5 run function stellarity:item/tamaris/execute/animation/teleport_particles

execute if score @s stellarity.item.tamaris.animation.progress matches 5 run scoreboard players set @s stellarity.item.tamaris.execute_cooldown 20
execute if score @s stellarity.item.tamaris.animation.progress matches 5 run tag @s add stellarity.item.tamaris.no_warn
# Executing things as entity in question
  execute if score @s stellarity.item.tamaris.animation.progress matches 5 as @n[type=!#kohara:invalid_targets,distance=0.1..100,tag=stellarity.item.tamaris.executable] at @s run function stellarity:item/tamaris/execute/animation/as_entity/kill

execute if score @s stellarity.item.tamaris.animation.progress matches 5 run scoreboard players reset @s stellarity.item.tamaris.animation.progress
