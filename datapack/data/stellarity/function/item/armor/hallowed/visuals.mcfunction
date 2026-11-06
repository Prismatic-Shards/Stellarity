# In case I ever wanted to add more
  execute if predicate kohara:chance/25percent run particle minecraft:entity_effect{color:[0.9450980392156862,0.9372549019607843,0.7098039215686275,0.25]} ~ ~1 ~ 0.3 0.4 0.3 0 1 force @a[distance=..32]
  execute if predicate kohara:chance/25percent run particle minecraft:entity_effect{color:[1.0,1.0,1.0,0.25]} ~ ~1 ~ 0.3 0.4 0.3 0 1 force @a[distance=..32]

execute if entity @s[predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming,predicate=!kohara:player/is_sneaking] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:item/armor/hallowed/trail
