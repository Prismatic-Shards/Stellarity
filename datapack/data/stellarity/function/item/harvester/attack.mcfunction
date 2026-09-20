# Frostburn
  execute if data storage stellarity:temp {harvester:{item:{"stellarity:harvester":{abilities:["frostburn"]}}}} run function stellarity:item/harvester/abilities/frostburn/apply

# Piercing Cold
  execute if data storage stellarity:temp {harvester:{item:{"stellarity:harvester":{abilities:["piercing_cold"]}}}} if predicate kohara:chance/25percent at @s run function stellarity:item/harvester/abilities/piercing_cold/apply

# Brittle
  execute if data storage stellarity:temp {harvester:{item:{"stellarity:harvester":{abilities:["embrittlement"]}}}} at @s run function stellarity:item/harvester/abilities/embrittlement/apply

# Echo
  execute if data storage stellarity:temp {harvester:{item:{"stellarity:harvester":{abilities:["echo"]}}}} at @s run function stellarity:item/harvester/abilities/echo/apply

data remove storage stellarity:temp harvester.item

