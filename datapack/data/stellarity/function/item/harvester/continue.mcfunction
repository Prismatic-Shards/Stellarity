# Add extra damage
  scoreboard players operation #damage stellarity.misc += #damage_extra stellarity.misc
  # But also cap it at 14
    execute if score #damage stellarity.misc matches 1200.. run scoreboard players set #damage stellarity.misc 1200

  data modify storage stellarity:temp harvester.custom_data set from storage stellarity:temp harvester.item."minecraft:custom_data"
  data modify storage stellarity:temp harvester.attributes set from storage stellarity:temp harvester.item."minecraft:attribute_modifiers"

# Visual and sound effects
  execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:item/harvester/effects/souls
  execute unless score #damage stellarity.misc matches 1200.. run \
  function stellarity:item/harvester/effects/crack/crack

## Item modifier part thingy


# Custom model data depending on extra damage
# Level 0 (Base)

execute if score #damage stellarity.misc matches 0..299 run \
data modify storage stellarity:temp harvester.cmd set value {floats:[0]}
# Level 1

execute if score #damage stellarity.misc matches 300..599 run \
data modify storage stellarity:temp harvester.cmd set value {floats:[1]}
# Level 2

execute if score #damage stellarity.misc matches 600..899 run \
data modify storage stellarity:temp harvester.cmd set value {floats:[2]}

# Level 3

execute if score #damage stellarity.misc matches 900..1199 run \
data modify storage stellarity:temp harvester.cmd set value {floats:[3]}
# Level 4 (Maxed)

execute if score #damage stellarity.misc matches 1200.. run \
data modify storage stellarity:temp harvester.cmd set value {floats:[4]}
# Movement Speed reduction
# Level 0 (Base)

execute if score #damage stellarity.misc matches 0..299 run \
data modify storage stellarity:temp harvester.speed set value 0.0d
# Level 1

execute if score #damage stellarity.misc matches 300..599 run \
data modify storage stellarity:temp harvester.speed set value -0.05d
# Level 2

execute if score #damage stellarity.misc matches 600..899 run \
data modify storage stellarity:temp harvester.speed set value -0.1d
# Level 3

execute if score #damage stellarity.misc matches 900..1199 run \
data modify storage stellarity:temp harvester.speed set value -0.15d
# Level 4 (Maxed)

execute if score #damage stellarity.misc matches 1200.. run \
data modify storage stellarity:temp harvester.speed set value -0.2d
# Attack Speed
# Level 0 (Base)

execute if score #damage stellarity.misc matches 0..299 run \
data modify storage stellarity:temp harvester.atk_speed set value -3d
# Level 1

execute if score #damage stellarity.misc matches 300..599 run \
data modify storage stellarity:temp harvester.atk_speed set value -3.05d
# Level 2

execute if score #damage stellarity.misc matches 600..899 run \
data modify storage stellarity:temp harvester.atk_speed set value -3.1d
# Level 3

execute if score #damage stellarity.misc matches 900..1199 run \
data modify storage stellarity:temp harvester.atk_speed set value -3.2d
# Level 4 (Maxed)

execute if score #damage stellarity.misc matches 1200.. run \
data modify storage stellarity:temp harvester.atk_speed set value -3.25d
# Add 3 to the damage (for base damage increase)

scoreboard players operation #damage_inc stellarity.misc = #damage stellarity.misc
scoreboard players set #3 stellarity.misc 300
scoreboard players operation #damage_inc stellarity.misc += #3 stellarity.misc
# Translate it into the storage
# 'harvester.damage_inc' is the damage value that includes the 4 base damage
# 'harvester.damage' is the actual extra damage stat used in the item NBT

execute store result storage stellarity:temp harvester.damage_inc double 0.01 run \
scoreboard players get #damage_inc stellarity.misc
execute store result storage stellarity:temp harvester.damage double 0.01 run \
scoreboard players get #damage stellarity.misc

data modify storage stellarity:temp harvester.custom_data."stellarity:harvester".damage set from storage stellarity:temp harvester.damage
# PATCHES AERY SWORD DAMAGE
  data modify storage stellarity:temp harvester.attributes[{type:"minecraft:attack_damage"}].amount set from storage stellarity:temp harvester.damage_inc
  data modify storage stellarity:temp harvester.attributes.modifiers[{type:"minecraft:attack_damage"}].amount set from storage stellarity:temp harvester.damage_inc
  data modify storage stellarity:temp harvester.attributes[{type:"minecraft:movement_speed"}].amount set from storage stellarity:temp harvester.speed
  data modify storage stellarity:temp harvester.attributes.modifiers[{type:"minecraft:movement_speed"}].amount set from storage stellarity:temp harvester.speed
  data modify storage stellarity:temp harvester.attributes[{type:"minecraft:attack_speed"}].amount set from storage stellarity:temp harvester.atk_speed
  data modify storage stellarity:temp harvester.attributes.modifiers[{type:"minecraft:attack_speed"}].amount set from storage stellarity:temp harvester.atk_speed

# PATCHES AERY SWORD DAMAGE


# Build components compound cleanly without string concatenation issues
  data remove storage stellarity:temp harvester.components
  data modify storage stellarity:temp harvester.components."minecraft:attribute_modifiers" set from storage stellarity:temp harvester.attributes
  data modify storage stellarity:temp harvester.components."minecraft:custom_data" set from storage stellarity:temp harvester.custom_data
  data modify storage stellarity:temp harvester.components."minecraft:custom_model_data" set from storage stellarity:temp harvester.cmd
  execute if score #damage stellarity.misc matches 600.. run data modify storage stellarity:temp harvester.components."minecraft:damage_resistant" set value {types:"#minecraft:is_fire"}

  data modify storage stellarity:temp harvester.components set string storage stellarity:temp harvester.components

  function stellarity:item/harvester/item_modifier/harvester_increase_damage with storage stellarity:temp harvester

# Advancement for getting any damage
  advancement grant @s only stellarity:exploration/harvester/frozen_reaper

# Maxing out the Harvester
  execute if score #damage stellarity.misc matches 1200.. run \
  function stellarity:item/harvester/item_modifier/harvester_finalize

function stellarity:item/harvester/item_modifier/construct_description
