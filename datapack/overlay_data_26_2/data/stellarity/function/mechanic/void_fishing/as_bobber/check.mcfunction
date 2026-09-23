execute if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["stellarity:dragons_den","minecraft:the_end"]}} run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"message.stellarity.no_void_fish","color":"dark_purple"}

execute if predicate stellarity:location/below_y_0 run title @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] actionbar {"translate":"message.stellarity.void_fishing_too_deep","color":"dark_purple"}

execute unless predicate {"condition":"minecraft:location_check","predicate":{"biomes":["stellarity:dragons_den","minecraft:the_end"]}} \
unless predicate stellarity:location/below_y_0 \
run function stellarity:mechanic/void_fishing/as_bobber/start
