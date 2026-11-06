$particle soul_fire_flame ^-$(x) ^0.6 ^$(z) 0 0 0 0.06 2 force @a[distance=..256]
$particle soul_fire_flame ^$(x) ^0.6 ^$(z) 0 0 0 0.06 2 force @a[distance=..256]

execute if predicate kohara:chance/33percent run particle minecraft:soul ^ ^0.3 ^-1 0.5 0.5 0.5 0.033 2 force @a[distance=..256]
