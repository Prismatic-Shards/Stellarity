# Lure is initialized directly in 'start.mcfunction'!

# Remove 1 per tick from time
  scoreboard players remove @s stellarity.mechanics.void_fishing.length 1

## It's fishing time!
  execute if score @s[tag=!stellarity.can_fish_out] stellarity.mechanics.void_fishing.length matches 1 run \
  function stellarity:mechanic/void_fishing/as_area_effect_cloud/fishing_opportunity

execute if score @s stellarity.mechanics.void_fishing.length matches 0..100 run function stellarity:mechanic/void_fishing/as_area_effect_cloud/fish_approaching/main

# Re-roll fishing time if nothing is caught
  execute if score @s stellarity.mechanics.void_fishing.can_fish matches 1 run tag @s remove stellarity.can_fish_out
  execute if score @s stellarity.mechanics.void_fishing.can_fish matches 1 run function stellarity:mechanic/void_fishing/as_area_effect_cloud/roll_time/roll
  scoreboard players remove @s[scores={stellarity.mechanics.void_fishing.can_fish=1..}] stellarity.mechanics.void_fishing.can_fish 1

# Stop the process if Fishing Bobber is not present
# This also removes the Area Effect Cloud after fishing out an item
  execute unless entity @s[tag=stellarity.can_fish_out] unless entity @e[type=fishing_bobber,tag=stellarity.checked_bobber,distance=..2,limit=1] run \
  function stellarity:mechanic/void_fishing/as_area_effect_cloud/stop
  execute if entity @s[tag=stellarity.can_fish_out] unless entity @e[type=fishing_bobber,tag=stellarity.checked_bobber,distance=..2,limit=1] run \
  function stellarity:mechanic/void_fishing/as_area_effect_cloud/fish

particle dragon_breath ~ ~ ~ 2 0.25 2 0.015 2 force @a[distance=..40]
particle end_rod ~ ~ ~ 2 0.25 2 0.015 1 force @a[distance=..40]
