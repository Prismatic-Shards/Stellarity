data remove storage stellarity:temp harvester.item
data modify storage stellarity:temp harvester.item set from entity @s SelectedItem.components
execute store result score #damage_rounded stellarity.misc run data get storage stellarity:temp harvester.item."minecraft:custom_data"."stellarity:harvester".damage 1

# Ambient particles
  execute if score #damage_rounded stellarity.misc matches 0..2 run function stellarity:item/harvester/effects/particles/1
  execute if score #damage_rounded stellarity.misc matches 3..5 run function stellarity:item/harvester/effects/particles/2
  execute if score #damage_rounded stellarity.misc matches 6..8 run function stellarity:item/harvester/effects/particles/3
  execute if score #damage_rounded stellarity.misc matches 9..11 run function stellarity:item/harvester/effects/particles/4
  execute if score #damage_rounded stellarity.misc matches 12 run function stellarity:item/harvester/effects/particles/5

# Arctic Wind aura
  execute if data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["arctic_wind"]}}}}} run function stellarity:item/harvester/abilities/arctic_wind/aura
