execute if predicate kohara:chance/40percent run particle minecraft:falling_dust{block_state: 'minecraft:gravel'} ^ ^1.5 ^ 0.15 0.15 0.15 0 1 normal @a[predicate=stellarity:item/holding/tamaris,distance=..32]


particle minecraft:dust{color:[0.5, 0.5, 0.5], scale:1.0} ^ ^1.5 ^ 0.15 0.15 0.15 1 7 force @a[predicate=stellarity:item/holding/tamaris]
particle minecraft:dust{color:[0.33, 0.33, 0.33], scale:1.0} ^ ^1.5 ^ 0.15 0.15 0.15 1 4 force @a[predicate=stellarity:item/holding/tamaris]

particle smoke ^ ^1.5 ^ 0.15 0.15 0.15 0.02 2 normal @a[predicate=stellarity:item/holding/tamaris]
execute if predicate kohara:chance/35percent run particle end_rod ^ ^1.5 ^ 0.15 0.15 0.15 0.03 1 normal @a[predicate=stellarity:item/holding/tamaris]
