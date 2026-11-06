execute if entity @s[scores={kohara.flight_speed=80..}] run function stellarity:sfx/elytra_trail/main

# 'Super Sonic' advancement
  execute if entity @s[advancements={stellarity:end_city/super_sonic=false},scores={kohara.flight_speed=200..}] unless block ^ ^1 ^ #kohara:non_solid unless block ^ ^-1 ^ #kohara:non_solid unless block ^1 ^ ^ #kohara:non_solid unless block ^-1 ^ ^ #kohara:non_solid run advancement grant @s only stellarity:end_city/super_sonic

function stellarity:mechanic/elytra/special_effects/main

# Boost nerf
  execute if score #stellarity.config stellarity.config.nerf_elytra matches 1 if entity @s[gamemode=!creative,gamemode=!spectator,predicate=kohara:player/has_boosted_with_elytra] run function stellarity:mechanic/elytra/nerf/boost

execute unless score @s kohara.flight_speed matches 1.. run function stellarity:mechanic/elytra/stop_flying
