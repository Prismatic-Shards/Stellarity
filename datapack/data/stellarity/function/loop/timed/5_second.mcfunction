execute as @e[type=#minecraft:raiders,tag=!stellarity.stronghold.buffed,predicate=stellarity:location/in_structure/stronghold] run function stellarity:entity/stronghold/buff_illagers

execute if score #stellarity.config stellarity.config.migrations matches 1 run function stellarity:migrations/main

schedule function stellarity:loop/timed/5_second 5s
