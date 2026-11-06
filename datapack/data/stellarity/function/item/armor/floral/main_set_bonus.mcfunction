execute if entity @s[predicate=kohara:player/is_sneaking] \
if block ~ ~ ~ #stellarity:floral_armor_invisible_in \
if block ~ ~1 ~ #stellarity:floral_armor_invisible_in run \
effect give @s invisibility 1 0 true
