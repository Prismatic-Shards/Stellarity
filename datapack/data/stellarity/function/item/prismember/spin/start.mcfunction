# Spin animation
# Handled in 'items/marker_loop'
  summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.prismember","smithed.entity","smithed.strict"]}
  execute rotated as @s as @n[type=marker,tag=stellarity.prismember] run tp @s ~ ~ ~ ~ 0

# Apply cooldown
  execute unless predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players set @s stellarity.item.prismember.cooldown 20
  execute if predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players set @s stellarity.item.prismember.cooldown 10


# Spin damage
  execute as @e[type=!#kohara:invalid_targets,distance=0.001..4] at @s run function stellarity:item/prismember/spin/damage

function stellarity:item/prismember/charge/reset_charge
scoreboard players reset @s stellarity.item.prismember.until_charge_reset
