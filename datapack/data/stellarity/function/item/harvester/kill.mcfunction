
data remove storage stellarity:temp harvester.item
data modify storage stellarity:temp harvester.item set from entity @s SelectedItem.components
execute store result score #damage stellarity.misc run data get storage stellarity:temp harvester.item."minecraft:custom_data"."stellarity:harvester".damage 100

# Damage gains
# Only goes until +12 damage, or 16 total damage
  function stellarity:item/harvester/scale

# Anima Conduit
  execute if data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["anima_conduit"]}}}}} run function stellarity:item/harvester/abilities/anima_conduit/activate

# Frost Barrier
  execute if data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["frost_barrier"]}}}}} run function stellarity:item/harvester/abilities/frost_barrier/dr

advancement revoke @s only stellarity:event/item/harvester/kill_for_damage
