# Sync dragon bossbar color
execute if entity @e[type=ender_dragon,tag=stellarity.dragon.invulnerable] run bossbar set stellarity:ender_dragon color white
execute if entity @e[type=ender_dragon,tag=!stellarity.dragon.invulnerable] run bossbar set stellarity:ender_dragon color pink

# Sync bossbars visibility
execute as @e[type=ender_dragon,tag=stellarity.ender_dragon] run bossbar set stellarity:ender_dragon players @a[predicate=stellarity:location/dragons_den/in_main_area]
execute as @e[type=ender_dragon,tag=stellarity.ender_dragon] if score #crystal_count stellarity.misc matches 1.. run bossbar set stellarity:crystal_count players @a[predicate=stellarity:location/dragons_den/in_main_area]
execute unless entity @e[type=ender_dragon,tag=stellarity.ender_dragon] run function stellarity:entity/dragon/clear_bossbars
