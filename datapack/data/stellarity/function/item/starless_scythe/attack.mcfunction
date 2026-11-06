# Remove advancement
# 1 tick delay so it doesn't fire twice for killing
  tag @s add stellarity.item.starless_scythe.adv_remove
  schedule function stellarity:item/starless_scythe/remove_advancement/scheduled 1t append

## Constants
  scoreboard players set #150 stellarity.misc 150
  scoreboard players set #100 stellarity.misc 100
  scoreboard players set #80 stellarity.misc 80
  scoreboard players set #2 stellarity.misc 2

# The predicate uses a lot of checks, so I cache the result to
# increase the performance by this 1/1000% or whatever
  scoreboard players set #is_critcal stellarity.misc 0
  execute if predicate kohara:player/can_crit run scoreboard players set #is_critcal stellarity.misc 1

# Get and cache time since last attack
  scoreboard players operation #time_since_last_attack kohara.misc = @s stellarity.item.starless_scythe.time_since_attack
  scoreboard players reset @s stellarity.item.starless_scythe.time_since_attack

## Get damage (used for both sweep attack and heal calculations)
  # Get base damage
    execute store result score #damage stellarity.misc run attribute @s attack_damage get 1000
    # If critical, increase by 50% (only if attack speed gauge is full though!)
      execute if score #is_critcal stellarity.misc matches 1 \
      if score #attack_cooldown kohara.misc = #time_since_last_attack kohara.misc run \
      function stellarity:item/starless_scythe/critical
      # If not - calculate stuff based on attack speed and trigger the sweep attack
        execute if score #is_critcal stellarity.misc matches 0 run \
        function stellarity:item/starless_scythe/non_critical

      ## Enchant interactions
        # Regeneration I for 3 seconds after killing a mob
          # if enchanted with Silk Touch
            execute if entity @s[advancements={stellarity:event/item/deal_damage_with_starless_scythe={kill=true}},predicate=stellarity:item/starless_scythe/has_silk_touch] run function stellarity:item/starless_scythe/enchant_interactions/regeneration/get_duration
            # Cripple hit mob(s) if enchanted with Efficiency
              scoreboard players set #cripple_duration stellarity.misc 0
              execute if predicate stellarity:item/starless_scythe/has_efficiency run function stellarity:item/starless_scythe/enchant_interactions/cripple/get_duration
              execute if score #cripple_duration stellarity.misc matches 1.. \
              if entity @s[advancements={stellarity:event/item/deal_damage_with_starless_scythe={attack=true}}] \
              as @n[type=!#kohara:invalid_targets,nbt={HurtTime:10s}] at @s run \
              function stellarity:item/starless_scythe/enchant_interactions/cripple/apply_slowdown

            # Heal
              function stellarity:item/starless_scythe/heal
