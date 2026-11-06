# Explode End Crystal if sneaking
  execute if entity @p[predicate=kohara:player/is_sneaking] run \
  damage @e[type=end_crystal,distance=..0.01,limit=1,sort=nearest,tag=stellarity.end_crystal] 1 player_attack by @p[predicate=kohara:player/is_sneaking]

# Destroy and drop if not sneaking and not in creative when stellarity.config.enable_end_crystal_drop matches 1
  execute unless entity @p[predicate=kohara:player/is_sneaking] if entity @e[type=end_crystal,distance=..0.01,limit=1,sort=nearest,tag=stellarity.end_crystal] run \
  execute if score #stellarity.config stellarity.config.enable_end_crystal_drop matches 1 run \
  function stellarity:mechanic/end_crystal/drop

# Explode normally if stellarity.config.enable_end_crystal_drop matches 0
  execute if score #stellarity.config stellarity.config.enable_end_crystal_drop matches 0 run damage @e[type=end_crystal,distance=..0.01,limit=1,sort=nearest,tag=stellarity.end_crystal] 1 player_attack by @p
