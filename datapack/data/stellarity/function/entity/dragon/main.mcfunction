# End Crystal stuff
  scoreboard players reset #crystal_count stellarity.misc
  # Count Crystals (any End Crystal on obsidian pillars, excluding the exit portal)
    execute in minecraft:the_end positioned 0 80 0 as @e[type=end_crystal,nbt={ShowBottom:1b},distance=0..250,tag=!stellarity.respawn_crystal,predicate=!stellarity:entity/dragon/exit_portal_crystal] at @s run function stellarity:entity/dragon/crystal/loop
    # Make Dragon invulnerable if there is more than 1 Crystal
      execute if score #crystal_count stellarity.misc matches 1.. run function stellarity:entity/dragon/crystal/update_bossbar
      execute unless score #crystal_count stellarity.misc matches 1.. run function stellarity:entity/dragon/crystal/hide_bossbar

    # A special helper Marker is spawned right with the Dragon and is used
    # for things like death animations, dropping loot at correct time, etc.
      execute at @s run tp @e[type=marker,tag=stellarity.dragon_marker] ~ ~ ~

    # Get health
      execute store result score @s stellarity.dragon.health run data get entity @s Health 1
      execute unless score @s stellarity.dragon.health_old matches 1.. run scoreboard players operation @s stellarity.dragon.health_old = @s stellarity.dragon.health
      # Convert to percentage
        execute store result score #max stellarity.misc run attribute @s max_health get
        scoreboard players set #100 stellarity.misc 100
        scoreboard players operation @s stellarity.dragon.health_percent = @s stellarity.dragon.health
        scoreboard players operation @s stellarity.dragon.health_percent *= #100 stellarity.misc
        scoreboard players operation @s stellarity.dragon.health_percent /= #max stellarity.misc
        # Prevent Dragon from taking damage while End Crystals are alive
          execute if entity @s[tag=stellarity.dragon.invulnerable] if score @s stellarity.dragon.health < @s stellarity.dragon.health_old run function stellarity:entity/dragon/invulnerability/prevent_damage
        # Prevent Crystals from healing the Dragon
          execute if score @s stellarity.dragon.health_old < @s stellarity.dragon.health run function stellarity:entity/dragon/prevent_heal
          scoreboard players operation @s stellarity.dragon.health_old = @s stellarity.dragon.health
          # Update bossbar
            execute store result bossbar stellarity:ender_dragon value run scoreboard players get @s stellarity.dragon.health

          execute if predicate kohara:chance/6percent run function stellarity:entity/dragon/beam_thingy/spawn

        # Bossbar Visbility
          bossbar set stellarity:ender_dragon players
          bossbar set stellarity:ender_dragon players @a[predicate=stellarity:location/dragons_den/in_main_area]
          bossbar set stellarity:crystal_count players
          bossbar set stellarity:crystal_count players @a[predicate=stellarity:location/dragons_den/in_main_area]

        # Music
          execute if entity @s[tag=!stellarity.to_portal,tag=!stellarity.at_portal] run function stellarity:entity/dragon/music/tick

        # Phase monitor
        # 0 = circling
        # 1 = strafing (preparing to shoot a fireball)
        # 2 = flying to the portal to land (part of transition to landed state)
        # 3 = landing on the portal (part of transition to landed state)
        # 4 = taking off from the portal (part of transition out of landed state)
        # 5 = landed (performing breath attack)
        # 6 = landed (looking for a player for breath attack)
        # 7 = landed (roar before beginning breath attack
        # 8 = charging player
        # 9 = flying to portal to die
          execute store result score @s stellarity.misc run data get entity @s DragonPhase
          execute unless score @s[tag=!stellarity.at_portal] stellarity.misc matches 5..7 run function stellarity:entity/dragon/trail
          execute if score @s[tag=stellarity.dragon.invulnerable] stellarity.misc matches 2..7 run \
          data modify entity @s DragonPhase set value 0
          execute if score @s stellarity.misc matches 5 run function stellarity:entity/dragon/attacks/roar_breath/main
          execute unless score @s stellarity.dragon.shulker_hell matches 4 as @e[type=dragon_fireball] at @s run function stellarity:entity/dragon/attacks/fireball/summon
          execute if score @s stellarity.dragon.shulker_hell matches 4 as @e[type=dragon_fireball] at @s run function stellarity:entity/dragon/attacks/shulker_hell/trigger
          execute if score @s[tag=!stellarity.at_portal,scores={stellarity.dragon.health_percent=..99}] stellarity.misc matches 4 run \
          function stellarity:entity/dragon/attacks/take_off/main
          execute if score @s[scores={stellarity.dragon.perch_cooldown=1..}] stellarity.misc matches 2..3 run \
          data modify entity @s DragonPhase set value 0
          execute if score @s stellarity.dragon.time_chainfiring matches 1.. run function stellarity:entity/dragon/attacks/chainfire/tickdown
          execute unless score @s[scores={stellarity.dragon.health_percent=..50,stellarity.misc=0..1}] stellarity.dragon.ball_of_blight_cooldown matches 1.. run function stellarity:entity/dragon/attacks/ball_of_blight/cast

        # Tick down attack cooldown
          scoreboard players remove @s[scores={stellarity.dragon.perch_cooldown=1..}] stellarity.dragon.perch_cooldown 1
          scoreboard players remove @s[scores={stellarity.dragon.ball_of_blight_cooldown=1..}] stellarity.dragon.ball_of_blight_cooldown 1

        # Revive 5 random End Crystals once below 25%% health
          execute if score @s[tag=!stellarity.dragon.respawned_crystals] stellarity.dragon.health_percent matches ..25 run function stellarity:entity/dragon/attacks/revive_crystals/initiate

        # Heartbeat while below 25%% health
        # It only gets quicker and quicker as the Dragon knows it is closer to its death
          execute if score @s stellarity.dragon.health_percent matches ..25 run function stellarity:entity/dragon/heartbeat/main

        # Fly to portal to die
          execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health matches 0..1 run function stellarity:entity/dragon/death/fly_to_portal
          execute if score @s stellarity.dragon.health matches 0..1 if score @s[tag=stellarity.to_portal] stellarity.misc matches 5..7 run tag @s add stellarity.at_portal
          execute if entity @s[tag=stellarity.at_portal] run function stellarity:entity/dragon/death/at_portal_loop

        execute as @e[type=shulker,tag=stellarity.dragon_shulker] at @s run particle witch ~ ~0.2 ~ 0.4 0.4 0.4 0.04 1 normal
        execute as @e[type=shulker_bullet,tag=stellarity.dragon_bullet] at @s run function stellarity:entity/dragon/attacks/shulker_hell/loop_as_bullet

      team join stellarity.dragon.pacify_others @e[type=enderman,predicate=stellarity:location/dragons_den/in_main_area]
