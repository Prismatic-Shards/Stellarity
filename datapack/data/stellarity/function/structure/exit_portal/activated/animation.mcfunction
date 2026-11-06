### Timer ###
  scoreboard players add @s stellarity.dragon.respawn_animation_progress 1

stopsound @a[predicate=stellarity:location/dragons_den/in_biome] music

# - bossbar disable
  execute if score @s stellarity.dragon.respawn_animation_progress matches 1 run bossbar set stellarity:crystal_count players
  # - save dragon kill count
    execute if score @s stellarity.dragon.respawn_animation_progress matches 1 as @s run scoreboard players add @s stellarity.dragon.times_killed 1
    execute if score @s stellarity.dragon.respawn_animation_progress matches 1 as @e[type=marker,tag=stellarity.dragon_marker] at @s run tp @s ~ ~2.25 ~

  scoreboard players operation @e[type=marker,tag=stellarity.dragon_marker,limit=1] stellarity.dragon.respawn_animation_progress = @s stellarity.dragon.respawn_animation_progress
  execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run function stellarity:entity/dragon/death/loop_as_marker

# - death delay
  execute if score @s stellarity.dragon.respawn_animation_progress matches 180 run function stellarity:entity/dragon/death/finish
