$particle flame ^-$(x) ^0.6 ^$(z) 0 0 0 0.06 2 force @a[distance=..256]
$particle flame ^$(x) ^0.6 ^$(z) 0 0 0 0.06 2 force @a[distance=..256]

execute if entity @s[scores={kohara.flight_speed=160..319}] if predicate kohara:chance/33percent run particle minecraft:lava ^ ^0.3 ^-1 0.5 0.5 0.5 0.66 2 force @a[distance=..256]
execute if entity @s[scores={kohara.flight_speed=320..}] if predicate kohara:chance/66percent run particle minecraft:lava ^ ^0.3 ^-1 0.5 0.5 0.5 0.66 3 force @a[distance=..256]
