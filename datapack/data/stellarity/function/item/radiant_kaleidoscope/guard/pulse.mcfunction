# Flash
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[1.0,0.65,0.0,1.0]} ~ ~1 ~ 0 0 0 0 1
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run particle flash{color:[0.3,0.7,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1

# Sparks & chime
particle end_rod ~ ~1 ~ 0.4 0.4 0.4 0.05 12
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.4
