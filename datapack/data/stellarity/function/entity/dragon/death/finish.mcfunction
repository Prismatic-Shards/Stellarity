# Moved from some Far End function I cannot remember
  function stellarity:structure/exit_portal/activated/generate

# Make Dragon Egg magically appear out of thin air
  execute unless score #stellarity.config stellarity.config.always_generate_egg matches 1 if score @s stellarity.dragon.times_killed matches 1 run setblock ~ ~5 ~ minecraft:dragon_egg
  execute if score #stellarity.config stellarity.config.always_generate_egg matches 1 run setblock ~ ~5 ~ minecraft:dragon_egg
  execute if score @s stellarity.dragon.times_killed matches 1 run particle minecraft:poof ~ ~5 ~ 0 0 0 0.3 50 force

# Generate End Gateways
  function stellarity:structure/exit_portal/gateway/choose_location

# Disable bossbar
  bossbar set stellarity:ender_dragon players
  bossbar set stellarity:crystal_count players

execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run function stellarity:entity/dragon/death/finish_as_marker

scoreboard players reset @s stellarity.dragon.respawn_animation_progress
tag @s remove stellarity.portal_activated

# Start timer for The Void Gains Focus
execute unless score #stellarity.void_focus stellarity.void_focus.dragon_timer matches 1.. run scoreboard players set #stellarity.void_focus stellarity.void_focus.dragon_timer 1


execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.dragon.death","with":[{"translate":"entity.minecraft.ender_dragon"}],"color":"#AF4BFF"},"\n"]

## Advancement
## They are in reverse order for a reason I cannot remember,
## but I think it was somewhat important :/
  # 'God Slayer'
    advancement grant @a[distance=..100,advancements={minecraft:end/kill_dragon=true,stellarity:dragons_den/god_slayer=false}] only stellarity:dragons_den/god_slayer
    # 'Free The End'
      advancement grant @a[distance=..100,advancements={minecraft:end/kill_dragon=false}] only minecraft:end/kill_dragon

  # 'God of Gods'
    execute if entity @e[type=marker,tag=stellarity.dragon_marker,tag=stellarity.dragon.rk_only] run advancement grant @a[distance=..250] only stellarity:dragons_den/god_of_gods
    execute if entity @e[type=marker,tag=stellarity.dragon_marker,tag=stellarity.dragon.killed_by_rk] run advancement grant @a[distance=..250,predicate=stellarity:item/holding/radiant_kaleidoscope] only stellarity:dragons_den/god_of_gods
    execute as @a[distance=..250,predicate=stellarity:item/holding/radiant_kaleidoscope] if entity @e[type=marker,tag=stellarity.dragon_marker,tag=stellarity.dragon.hit_by_rk] run advancement grant @s only stellarity:dragons_den/god_of_gods

  # 'Pure Completion'
    scoreboard players add @a[distance=..100] stellarity.player.dragon_kills 1
    execute if score @s stellarity.dragon.times_killed matches 20.. run advancement grant @a[distance=..100] only stellarity:dragons_den/pure_completion
    advancement grant @a[distance=..100,scores={stellarity.player.dragon_kills=20..}] only stellarity:dragons_den/pure_completion
    execute as @a[distance=..100,scores={stellarity.player.dragon_kills=20}] run experience add @s 20000 points

    # Activate Altar of The Accursed. Now we shall all witness horrible dark magic emerging and crafting fantastic gear!
      # Wonderful! Like ancient forces of darkness were always supposed to 

      # regenerate if needed
        # Run backup check to see if altar exists

        execute in minecraft:the_end positioned 50 76 -39 unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,distance=..32] run function stellarity:entity/dragon/death/regenerate_altar_check

      # just miraculously connect some random trash into things that are a lot better!
        schedule function stellarity:entity/dragon/death/activate_altar_of_the_accursed_sound 5s
        schedule function stellarity:entity/dragon/death/activate_altar_of_the_accursed 8s

      ## Leftover ash
        # 500 seconds is 8 minutes 20 seconds
          scoreboard players set #stellarity.dragon.ash_duration stellarity.misc 500

        # Delay the track by 13s
          execute unless entity @e[type=marker,tag=stellarity.altar_of_the_accursed,tag=stellarity.altar_of_the_accursed_activated] run \
          schedule function stellarity:entity/dragon/play_track 230t
          # Or by 3.5 seconds if Altar has been unlocked
            execute if entity @e[type=marker,tag=stellarity.altar_of_the_accursed,tag=stellarity.altar_of_the_accursed_activated] run \
            schedule function stellarity:entity/dragon/play_track 70t

        # Final cleanup: purge vanilla portal replacement and enforce custom exit portal
        schedule function stellarity:structure/exit_portal/final_cleanup 2s
        schedule function stellarity:structure/exit_portal/final_cleanup 5s
