## Scoreboards creation
  # Configuration
    scoreboard objectives remove stellarity.config.join_message
    scoreboard objectives remove stellarity.config.always_generate_egg
    scoreboard objectives remove stellarity.config.enable_end_crystal_drop
    scoreboard objectives remove stellarity.config.enable_totem_void_saving
    scoreboard objectives remove stellarity.config.dragon_health
    scoreboard objectives remove stellarity.config.shulking_health
    scoreboard objectives remove stellarity.config.nighttime_empress_of_light_health
    scoreboard objectives remove stellarity.config.daytime_empress_of_light_health
    scoreboard objectives remove stellarity.config.radiant_empress_of_light_health
    scoreboard objectives remove stellarity.config.harvester_mb_health
    scoreboard objectives remove stellarity.config.allow_disenchanting
    scoreboard objectives remove stellarity.config.track_loop_delay.empress_of_light
    scoreboard objectives remove stellarity.config.track_loop_delay.dragon
    scoreboard objectives remove stellarity.config.enable_dragon_screenshake
    scoreboard objectives remove stellarity.config.enable_creative_shock
    scoreboard objectives remove stellarity.config.nerf_elytra
    scoreboard objectives remove stellarity.config.boss_status_messages
    # 
      scoreboard objectives remove stellarity.config.migrations

    # Initialize config scoreboards
      # Freshly created scoreboards have no value (not even set to 0)
        function stellarity:config/init

      ## Items
        # Dragonblade
          scoreboard objectives remove stellarity.item.dragonblade.cooldown
          scoreboard objectives remove stellarity.item.dragonblade.stacks
          scoreboard objectives remove stellarity.item.dragonblade.stack_cooldown
          scoreboard objectives remove stellarity.item.dragonblade.until_stack_reset
          scoreboard objectives remove stellarity.item.dragonblade.punch_progress
          scoreboard objectives remove stellarity.item.dragonblade.until_punch_reset
          # Armor sets
            scoreboard objectives remove stellarity.item.armors.holy_protection_cooldown
            scoreboard objectives remove stellarity.item.armors.champion_armor.combo
            scoreboard objectives remove stellarity.item.armors.champion_armor.until_combo_reset

          # Crest of The End
            scoreboard objectives remove stellarity.item.crest.bonus_dmg
            scoreboard objectives remove stellarity.item.crest.time

          # Copper Elektra Shield
            scoreboard objectives remove stellarity.item.elektra_shield.cooldown
            scoreboard objectives remove stellarity.item.elektra_shield.animation
            scoreboard objectives remove stellarity.item.elektra_shield.dashes
            scoreboard objectives remove stellarity.item.elektra_shield.zap_count
            scoreboard objectives remove stellarity.item.elektra_shield.boost_duration

          # Prismatic Punch
            scoreboard objectives remove stellarity.item.prismatic_punch.particle_cycle
            scoreboard objectives remove stellarity.item.prismatic_punch.teleport
            scoreboard objectives remove stellarity.item.prismatic_punch.piercing
            scoreboard objectives remove stellarity.item.prismatic_punch.piercing_cooldown
            scoreboard objectives remove stellarity.item.prismatic_punch.multishot

          # Ender Insignia
            scoreboard objectives remove stellarity.item.life_crystal.heal_amount

          # Spellbooks
            scoreboard objectives remove stellarity.item.spellbook.conveyance.cooldown
            scoreboard objectives remove stellarity.item.spellbook.conveyance.id
            scoreboard objectives remove stellarity.item.spellbook.updraft.cooldown
            scoreboard objectives remove stellarity.item.spellbook.updraft.animation
            scoreboard objectives remove stellarity.item.spellbook.light.cooldown
            scoreboard objectives remove stellarity.item.spellbook.jinx.cooldown
            scoreboard objectives remove stellarity.item.spellbook.return.cooldown
            scoreboard objectives remove stellarity.item.spellbook.obstruct.cooldown
            scoreboard objectives remove stellarity.item.spellbook.return.progress
            scoreboard objectives remove stellarity.item.spellbook.give_back.hand

          # Fluffy Hammer
            scoreboard objectives remove stellarity.item.fluffy_hammer.throw_cooldown

          scoreboard objectives remove stellarity.item.satchel_of_voids.cooldown

        # Empress Wings
          scoreboard objectives remove stellarity.item.empress_wings.particles

        # Fish
          # yeah, only 1
            scoreboard objectives remove stellarity.item.fish.crystal_heartfish.total_consumed

          # The Beginning and The End
            scoreboard objectives remove stellarity.item.spirit_dagger.attract_cooldown
            scoreboard objectives remove stellarity.item.spirit_dagger.consume_time
            scoreboard objectives remove stellarity.item.spirit_dagger.until_consume_reset
            scoreboard objectives remove stellarity.item.spirit_dagger.effects_duration

          # Harvester, AKA Aery Sword
            scoreboard objectives remove stellarity.item.harvester.damage
            scoreboard objectives remove stellarity.item.harvester.progress.frost_barrier
            scoreboard objectives remove stellarity.item.harvester.progress.cryonics
            scoreboard objectives remove stellarity.item.harvester.progress.piercing_cold
            scoreboard objectives remove stellarity.item.harvester.progress.frostburn
            scoreboard objectives remove stellarity.item.harvester.progress.arctic_wind
            scoreboard objectives remove stellarity.item.harvester.progress.anima_conduit
            scoreboard objectives remove stellarity.item.harvester.progress.echo
            scoreboard objectives remove stellarity.item.harvester.progress.embrittlement
            scoreboard objectives remove stellarity.item.harvester.cryonics.duration
            scoreboard objectives remove stellarity.item.harvester.cryonics.cooldown

          # Kaleidoscope
            scoreboard objectives remove stellarity.item.kaleidoscope.charge
            scoreboard objectives remove stellarity.item.kaleidoscope.charge_progress

          # Prismatic Pearl
            scoreboard objectives remove stellarity.item.prismatic_pearl.cooldown

          # Prismember
            scoreboard objectives remove stellarity.item.prismember.charge
            scoreboard objectives remove stellarity.item.prismember.until_charge_reset
            scoreboard objectives remove stellarity.item.prismember.cooldown

          # Tamaris
            scoreboard objectives remove stellarity.item.tamaris.math.health.current
            scoreboard objectives remove stellarity.item.tamaris.math.health.max
            scoreboard objectives remove stellarity.item.tamaris.math.health.percentage
            scoreboard objectives remove stellarity.item.tamaris.animation.progress
            scoreboard objectives remove stellarity.item.tamaris.execute_cooldown

          # Chorus Dagger
            scoreboard objectives remove stellarity.item.chorus_dagger.cooldown

          # Starless Scythe
            scoreboard objectives remove stellarity.item.starless_scythe.time_since_attack

          # Stellar Striker
            scoreboard objectives remove stellarity.item.stellar_striker.stars.collect_time
            scoreboard objectives remove stellarity.item.stellar_striker.stars.amount
            scoreboard objectives remove stellarity.item.stellar_striker.time_since_attack
            scoreboard objectives remove stellarity.item.stellar_striker.cooldown

          # Spectral Fury
            scoreboard objectives remove stellarity.item.spectral_fury.charge
            scoreboard objectives remove stellarity.item.spectral_fury.until_charge_reset
            scoreboard objectives remove stellarity.item.spectral_fury.pierce_count
            scoreboard objectives remove stellarity.item.spectral_fury.damage

          # Sandstorm Trident
            scoreboard objectives remove stellarity.item.sandstorm_trident.id
            scoreboard objectives remove stellarity.item.sandstorm_trident.trail_pos

          scoreboard objectives remove stellarity.item.elytra.damage
          scoreboard objectives remove stellarity.item.elytra.unbreaking



    ## Mobs
      # Empress of Light
        scoreboard objectives remove stellarity.empress_of_light.animation
        scoreboard objectives remove stellarity.empress_of_light.health
        scoreboard objectives remove stellarity.empress_of_light.health_percent
        scoreboard objectives remove stellarity.empress_of_light.hurt_time
        scoreboard objectives remove stellarity.empress_of_light.attack_cycle
        scoreboard objectives remove stellarity.empress_of_light.attack_duration
        scoreboard objectives remove stellarity.empress_of_light.attack_cooldown
        scoreboard objectives remove stellarity.empress_of_light.projectile_age

      # Ender Dragon
        scoreboard objectives remove stellarity.dragon.times_killed
        scoreboard objectives remove stellarity.dragon.screenshake
        scoreboard objectives remove stellarity.dragon.respawn_animation_progress
        scoreboard objectives remove stellarity.dragon.perch_cooldown
        scoreboard objectives remove stellarity.dragon.health
        scoreboard objectives remove stellarity.dragon.health_percent
        scoreboard objectives remove stellarity.dragon.health_old
        scoreboard objectives remove stellarity.dragon.time_chainfiring
        scoreboard objectives remove stellarity.dragon.shulker_hell
        scoreboard objectives remove stellarity.dragon.heartbeat
        scoreboard objectives remove stellarity.dragon.ball_of_blight_cooldown

      # Phantoms
        scoreboard objectives remove stellarity.phantom.size
        scoreboard objectives remove stellarity.phantom.wings_drop_chance

      ## Boss music
        scoreboard objectives remove stellarity.music.ender_dragon.timer
        scoreboard objectives remove stellarity.music.empress_of_light.timer

      ## Mechanics
        scoreboard objectives remove stellarity.altar_of_the_accursed.count
        scoreboard objectives remove stellarity.live_time
        scoreboard objectives remove stellarity.health

      scoreboard objectives remove stellarity.mechanics.void_fishing.length
      scoreboard objectives remove stellarity.mechanics.void_fishing.max_time
      scoreboard objectives remove stellarity.mechanics.void_fishing.can_fish
      scoreboard objectives remove stellarity.mechanics.consecration.time
      scoreboard objectives remove stellarity.mechanics.altar_of_the_sacred.timer
      scoreboard objectives remove stellarity.mechanics.cauldron_crafting.items_inside
      scoreboard objectives remove stellarity.mechanics.cauldron_crafting.breath_left

    ## Enchantments
      scoreboard objectives remove stellarity.enchantments.critical_strike.can_crit

    ## Misc
      # Temporar variables OR things that don't need its own variable
        scoreboard objectives remove stellarity.misc
        scoreboard objectives remove stellarity.misc2
        scoreboard objectives remove stellarity.misc3
        scoreboard objectives remove stellarity.misc4
        scoreboard objectives remove stellarity.misc.end_portal_animation
        scoreboard objectives remove stellarity.misc.end_portal_bg_loop

      scoreboard objectives remove stellarity.misc.motion.x1
      scoreboard objectives remove stellarity.misc.motion.x2
      scoreboard objectives remove stellarity.misc.motion.y1
      scoreboard objectives remove stellarity.misc.motion.y2
      scoreboard objectives remove stellarity.misc.motion.z1
      scoreboard objectives remove stellarity.misc.motion.z2

    scoreboard objectives remove stellarity.misc.loop.2t
    scoreboard objectives remove stellarity.misc.loop.3t
    scoreboard objectives remove stellarity.misc.loop.5t
    scoreboard objectives remove stellarity.misc.loop.1s
    scoreboard objectives remove stellarity.misc.loop.10s
    scoreboard objectives remove stellarity.misc.loop.15s

  ## Creating teams
    team remove stellarity.purple_glow
    team remove stellarity.golden_glow
    team remove stellarity.spirit_glow
    team remove stellarity.homing_targets
    team remove stellarity.rave_glow
    team remove stellarity.phantom_glow
    team remove stellarity.empress_of_light.night_glow
    team remove stellarity.empress_of_light.day_glow
    team remove stellarity.dragons_eye.pacified
    team remove stellarity.dragon.pacify_others

  ## Bossbars
    # Ender Dragon
      bossbar remove stellarity:ender_dragon 
      # 'Crystals Left'
        bossbar remove stellarity:crystal_count
        # Empress of Light
          bossbar remove stellarity:empress_of_light 


      # Scheduling loops that do not need
        # to be executed every single tick
          schedule clear stellarity:loop/timed/2_tick
          schedule clear stellarity:loop/timed/3_tick
          schedule clear stellarity:loop/timed/5_tick
          schedule clear stellarity:loop/timed/1_second
          schedule clear stellarity:loop/timed/5_second

        function stellarity:util/tellraw/command {string:"uninstall.success",fallback:"Removed all registered Stellarity scoreboards, teams and bossbars"}
