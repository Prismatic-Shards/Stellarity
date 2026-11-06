# Get attack damage multiplier from attack speed
  function kohara:attack_speed/calculate_damage_multiplier
  # add_multiplied_total it by the damage multiplier
  # So in other words - reduce or keep the same
    scoreboard players operation #damage stellarity.misc *= #multiplier kohara.misc
    scoreboard players operation #damage stellarity.misc /= #100 stellarity.misc

  ## Sweep attack
  # Don't trigger the AoE sweep if the attack speed gauge isn't
  # at least 80% full to prevent spamming 
  # (and partially replicate the sword sweep attack behavior)
    scoreboard players operation #can_sweep stellarity.misc = #attack_cooldown kohara.misc
    scoreboard players operation #can_sweep stellarity.misc *= #80 stellarity.misc
    scoreboard players operation #can_sweep stellarity.misc /= #100 stellarity.misc

  scoreboard players set #sweep_attack_mobs_hit stellarity.misc 0
  scoreboard players set #sweep_attack_mobs_killed stellarity.misc 0
  execute if score #can_sweep stellarity.misc <= #time_since_last_attack kohara.misc anchored eyes positioned ^ ^ ^2.0 run function stellarity:item/starless_scythe/sweep/trigger
