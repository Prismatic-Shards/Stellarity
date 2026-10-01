# switch targets
  data modify entity @s Brain.memories."minecraft:liked_player".value set from entity @r[distance=..50,gamemode=!creative,gamemode=!spectator] UUID
  execute if data entity @s Brain.memories."minecraft:liked_player".value run data modify entity @s Brain.memories."minecraft:liked_player".ttl set value 99999999999999999l


# cooldown
  execute store result score @s stellarity.misc run random value 60..120


# attack
  execute store result score @s stellarity.misc2 run random value 1..170

execute if score @s stellarity.misc2 matches 0..50 run function stellarity:entity/shulking/attacks/spikes
execute if score @s stellarity.misc2 matches 51..100 run function stellarity:entity/shulking/attacks/ray
execute if score @s stellarity.misc2 matches 101..130 run function stellarity:entity/shulking/attacks/explosive_shulker with entity @s Passengers[0]
execute if score @s stellarity.misc2 matches 131..160 run summon shulker ~ ~ ~ {attributes:[{id:"scale",base:0.125}]}
execute if score @s stellarity.misc2 matches 161..170 summon skeleton run function stellarity:entity/shulking/attacks/shulkhead_skeleton
