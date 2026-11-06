scoreboard players remove #stellarity.void_focus stellarity.void_focus.active 3

# Swirling void particles around each player in The End
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:portal ~ ~1 ~ 1.2 0.8 1.2 0.4 25 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:reverse_portal ~ ~1 ~ 0.8 0.6 0.8 0.1 12 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:dragon_breath ~ ~1 ~ 1.0 0.5 1.0 0.05 8 normal
execute at @a[predicate=stellarity:location/in_the_end] run particle minecraft:smoke ~ ~0.5 ~ 0.6 0.3 0.6 0.02 6 normal
