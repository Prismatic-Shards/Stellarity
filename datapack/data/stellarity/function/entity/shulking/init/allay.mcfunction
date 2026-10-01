data modify entity @s Brain.memories."minecraft:liked_player".ttl set value 99999999999999999l
data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @r[distance=..50,gamemode=!creative,gamemode=!spectator] UUID

data modify entity @s data."stellarity:owner".UUID set from entity @s Passengers[0].UUID

function stellarity:entity/shulking/init/rods
