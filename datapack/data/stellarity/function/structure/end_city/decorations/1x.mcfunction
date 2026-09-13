execute store result score #random stellarity.misc run random value 1..60

setblock ~ ~1 ~ air

execute if score #random stellarity.misc matches 1 run \
	setblock ~ ~ ~ decorated_pot

execute if score #random stellarity.misc matches 2 run \
	setblock ~ ~ ~ decorated_pot[facing=east]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:burn_pottery_sherd"}}

execute if score #random stellarity.misc matches 3 run \
	setblock ~ ~ ~ decorated_pot[facing=west]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:burn_pottery_sherd"}}

execute if score #random stellarity.misc matches 4 run \
	setblock ~ ~ ~ decorated_pot[facing=north]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:burn_pottery_sherd"}}

execute if score #random stellarity.misc matches 5 run \
	setblock ~ ~ ~ decorated_pot[facing=south]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:burn_pottery_sherd"}}

execute if score #random stellarity.misc matches 6 run \
	setblock ~ ~ ~ decorated_pot[facing=east]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:blade_pottery_sherd"}}

execute if score #random stellarity.misc matches 7 run \
	setblock ~ ~ ~ decorated_pot[facing=west]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:blade_pottery_sherd"}}

execute if score #random stellarity.misc matches 8 run \
	setblock ~ ~ ~ decorated_pot[facing=north]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:blade_pottery_sherd"}}

execute if score #random stellarity.misc matches 9 run \
	setblock ~ ~ ~ decorated_pot[facing=south]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:blade_pottery_sherd"}}

execute if score #random stellarity.misc matches 10 run \
	setblock ~ ~ ~ decorated_pot[facing=east]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:brewer_pottery_sherd"}}

execute if score #random stellarity.misc matches 11 run \
	setblock ~ ~ ~ decorated_pot[facing=west]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:brewer_pottery_sherd"}}

execute if score #random stellarity.misc matches 12 run \
	setblock ~ ~ ~ decorated_pot[facing=north]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:brewer_pottery_sherd"}}

execute if score #random stellarity.misc matches 13 run \
	setblock ~ ~ ~ decorated_pot[facing=south]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:brewer_pottery_sherd"}}

execute if score #random stellarity.misc matches 14 run \
	setblock ~ ~ ~ decorated_pot[facing=east]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:skull_pottery_sherd"}}

execute if score #random stellarity.misc matches 15 run \
	setblock ~ ~ ~ decorated_pot[facing=west]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:skull_pottery_sherd"}}

execute if score #random stellarity.misc matches 16 run \
	setblock ~ ~ ~ decorated_pot[facing=north]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:skull_pottery_sherd"}}

execute if score #random stellarity.misc matches 17 run \
	setblock ~ ~ ~ decorated_pot[facing=south]{LootTable:"stellarity:end_city/pot",sherds:{back:"minecraft:brick",left:"minecraft:brick",right:"minecraft:brick",front:"minecraft:skull_pottery_sherd"}}

execute if score #random stellarity.misc matches 18..27 run \
	setblock ~ ~ ~ barrel[facing=up]{LootTable:"stellarity:end_city/junk"}

execute if score #random stellarity.misc matches 28 run \
	setblock ~ ~ ~ anvil[facing=east]

execute if score #random stellarity.misc matches 29 run \
	setblock ~ ~ ~ anvil[facing=north]

execute if score #random stellarity.misc matches 30 run \
	setblock ~ ~ ~ chipped_anvil[facing=east]

execute if score #random stellarity.misc matches 31 run \
	setblock ~ ~ ~ chipped_anvil[facing=north]

execute if score #random stellarity.misc matches 32 run \
	setblock ~ ~ ~ damaged_anvil[facing=east]

execute if score #random stellarity.misc matches 33 run \
	setblock ~ ~ ~ damaged_anvil[facing=north]

execute if score #random stellarity.misc matches 34 run \
	setblock ~ ~ ~ cauldron[]

execute if score #random stellarity.misc matches 35 run \
	setblock ~ ~ ~ water_cauldron[level=1]

execute if score #random stellarity.misc matches 36 run \
	setblock ~ ~ ~ water_cauldron[level=2]

execute if score #random stellarity.misc matches 37 run \
	setblock ~ ~ ~ lodestone

execute if score #random stellarity.misc matches 38..60 run \
	setblock ~ ~ ~ air