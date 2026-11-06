particle minecraft:dust{color:[0.561, 0.0, 0.612], scale:0.8} ~ ~ ~ 0.01 0.01 0.01 0 1 force @a[distance=..64]
execute if predicate kohara:chance/25percent run particle minecraft:dust{color:[0.867, 0.125, 0.969], scale:0.8} ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute if predicate kohara:chance/10percent run particle minecraft:witch ~ ~ ~ 0.02 0.02 0.02 0 1 normal
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #kohara:non_solid run particle minecraft:dust{color:[0.427, 0.059, 0.522], scale:2.25} ~ ~ ~ 0 0 0 0 4 force
