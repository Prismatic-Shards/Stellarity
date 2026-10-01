tp ~ ~-0.3 ~

execute if entity @e[dy=1,dx=0,dz=0] run function stellarity:entity/shulking/attacks/spike/shatter with entity @s data."stellarity:owner"
execute if predicate stellarity:location/in_void run function stellarity:entity/shulking/attacks/spike/shatter with entity @s data."stellarity:owner"

execute unless block ~ ~ ~ #kohara:non_solid run function stellarity:entity/shulking/attacks/spike/shatter with entity @s data."stellarity:owner"
