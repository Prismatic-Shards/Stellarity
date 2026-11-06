# Base heal = 100% of dealt damage
  scoreboard players operation #heal kohara.misc = #damage stellarity.misc

# Reduce the healing to 8% of its value after
  scoreboard players set #percent stellarity.misc 8
  # Each level of fortune increases the heal strength by 2%
    execute store result score #fortune stellarity.misc run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fortune" 2
    # + Each mob hit by the sweep attack amplifies the heal by another 0.5% (rounded down)
      scoreboard players operation #sweep_attack_mobs_hit stellarity.misc /= #2 stellarity.misc

    scoreboard players operation #percent stellarity.misc += #fortune stellarity.misc
    scoreboard players operation #percent stellarity.misc += #sweep_attack_mobs_hit stellarity.misc

  scoreboard players operation #heal kohara.misc *= #percent stellarity.misc
  scoreboard players operation #heal kohara.misc /= #100 stellarity.misc

function kohara:heal

particle vault_connection ~ ~1 ~ 0 0 0 1 30
