# Setting them again because this is getting called by 2 things
# One of them is the normal damage scaler, which doesn't have the ability count
# Second is the ability unlocker, which doesn't have damage
# This system is kinda jank, but combining them both together had plenty of issues
# as this game is literally held on tape and semen
#
# Also, the values need to be updated anyway
  data remove storage stellarity:temp harvester.item
  data modify storage stellarity:temp harvester.item set from entity @s SelectedItem.components
  data modify storage stellarity:temp harvester.custom_data set from storage stellarity:temp harvester.item."minecraft:custom_data"
  execute store result score #ability_count stellarity.misc run data get storage stellarity:temp harvester.item."minecraft:custom_data"."stellarity:harvester".abilities
  execute store result score #damage stellarity.misc run data get storage stellarity:temp harvester.item."minecraft:custom_data"."stellarity:harvester".damage 100

# Initialize empty list
  data modify storage stellarity:temp harvester.lore set value [{"text":""}]

# Constructing base description
# If it has already gained 12 damage and has 3 abilities, this section will be an empty line
  execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.1","color": "#EEEEEE","italic": false}
  execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.2","color": "#EEEEEE","italic": false}
  execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.3","color": "#EEEEEE","italic": false}

# Empty line before the dynamic stuff
# They get added as soon as Harvester kills any mob, 
# so it always gets added regardless of whether there are any abilities or etc.
# But not if maxed, cause reminder, the only line there would be above it would be an empty line
  execute if score #damage stellarity.misc matches ..1199 run data modify storage stellarity:temp harvester.lore append value {"text":""}

# Dynamic stuff
  execute if score #damage stellarity.misc matches ..11 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.4","color": "#EEEEEE","italic": false}
  execute if score #damage stellarity.misc matches ..11 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.5","color": "#EEEEEE","italic": false}

execute if score #damage stellarity.misc matches 12..299 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.6","color": "#EEEEEE","italic": false}

execute if score #damage stellarity.misc matches 300..599 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.7","color": "#EEEEEE","italic": false}
execute if score #damage stellarity.misc matches 300..599 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.8","color": "#EEEEEE","italic": false}


execute if score #damage stellarity.misc matches 600..1199 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.9","color": "#EEEEEE","italic": false}
execute if score #damage stellarity.misc matches 600..1199 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.10","color": "#EEEEEE","italic": false}

execute if score #damage stellarity.misc matches 1200 unless score #ability_count stellarity.misc matches 3 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.11","color": "#EEEEEE","italic": false}
execute if score #damage stellarity.misc matches 1200 unless score #ability_count stellarity.misc matches 3 run data modify storage stellarity:temp harvester.lore append value {"translate": "item.stellarity.harvester.description.12","color": "#EEEEEE","italic": false}

# Add an empty line
  execute if predicate {"type": "minecraft:inverted","term": {"type": "minecraft:all_of","terms": [{"type": "minecraft:int_value_check","value": {"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "#damage"},"score": "stellarity.misc"},"test": 1200},{"type": "minecraft:int_value_check","value": {"type": "minecraft:score","target": {"type": "minecraft:fixed","name": "#ability_count"},"score": "stellarity.misc"},"test": 3}]}} run data modify storage stellarity:temp harvester.lore append value {"text":""}

# Append abilities
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["piercing_cold"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.piercing_cold","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["arctic_wind"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.arctic_wind","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["frostburn"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.frostburn","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["embrittlement"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.ebrittlement","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["frost_barrier"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.frost_barrier","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["anima_conduit"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.anima_conduit","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["echo"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.echo","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}
  execute if data storage stellarity:temp {harvester:{custom_data:{"stellarity:harvester":{abilities:["cryonics"]}}}} run data modify storage stellarity:temp harvester.lore append value {"translate":"item.stellarity.harvester.ability.tooltip","color":"#EEEEEE","italic":false,"with":[{"translate":"item.stellarity.harvester.ability.cryonics","color":"#4BC6FF","italic":false},{"translate":"item.stellarity.harvester.ability.known","color":"#F466CC","italic":false,"bold":true}]}

# Append empty line if there is at least 1 ability
  execute if score #ability_count stellarity.misc matches 1.. run data modify storage stellarity:temp harvester.lore append value {"text":""}

# Append the usual crap
  data modify storage stellarity:temp harvester.lore append value {"translate": "items.stellarity.developer","color": "#BA02D7","italic": false}
  data modify storage stellarity:temp harvester.lore append value {"text":""}
  data modify storage stellarity:temp harvester.lore append value {"translate": "Stellarity", "color": "#eaa7ff", "font": "stellarity:tooltip", "italic": false}

# And then finally modify the description
  function stellarity:item/harvester/item_modifier/update_description with storage stellarity:temp harvester

# Imma put it here because I already have both variables needed to complete this
  execute if score #damage stellarity.misc matches 1200 if score #ability_count stellarity.misc matches 3 run advancement grant @s only stellarity:exploration/harvester/max_out
