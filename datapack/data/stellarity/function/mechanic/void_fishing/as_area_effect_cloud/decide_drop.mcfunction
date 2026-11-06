# Now this is the most confusing part by far...

# By default it won't fish out any of special drops
  scoreboard players set #catch.fisher_of_voids stellarity.misc 0
  scoreboard players set #catch.pufferfish stellarity.misc 0

# Whether to replace default loot table with Fisher of Voids
# 3% chance
  execute if predicate kohara:chance/3percent run scoreboard players set #catch.fisher_of_voids stellarity.misc 1

# Whether to replace default loot table with a collectible Pufferfish
# 1% chance
  execute if predicate kohara:chance/1percent run scoreboard players set #catch.pufferfish stellarity.misc 1

# And now for the drops...
# Drop regular loot if both variables are 0
  execute if score #catch.fisher_of_voids stellarity.misc matches 0 if score #catch.pufferfish stellarity.misc matches 0 run loot spawn ~ ~ ~ loot stellarity:void_fishing/fish_event
  # Drop Fisher of Voids if its var is set to 1, but not the Pufferfish one
    execute if score #catch.fisher_of_voids stellarity.misc matches 1 if score #catch.pufferfish stellarity.misc matches 0 run loot spawn ~ ~ ~ loot stellarity:item/tool/fisher_of_voids
    # Drop Pufferfish if its var is set to 1, but not the Fisher of Voids one
      execute if score #catch.fisher_of_voids stellarity.misc matches 0 if score #catch.pufferfish stellarity.misc matches 1 run loot spawn ~ ~ ~ loot stellarity:item/food/fish/pufferfish
      # And finally, use treasure loot pool instead of regular one if the very rare 0.03% chance occurs
      # and both variables are set to 1
      # Sounds disappointing, I know...
        execute if score #catch.fisher_of_voids stellarity.misc matches 1 if score #catch.pufferfish stellarity.misc matches 1 run loot spawn ~ ~ ~ loot stellarity:void_fishing/treasure
