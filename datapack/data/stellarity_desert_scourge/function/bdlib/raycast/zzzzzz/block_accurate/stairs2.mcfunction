execute if block ~ ~ ~ #stairs[half=bottom] align xyz if entity @s[dx=0,dy=0,dz=0] positioned ~ ~.5 ~ unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #stairs[half=top] align xyz positioned ~ ~.5 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0

execute if block ~ ~ ~ #stairs[shape=straight] align xyz if entity @s[dx=0,dy=0,dz=0] positioned ^ ^ ^.5 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #stairs[shape=inner_left] align xyz if entity @s[dx=0,dy=0,dz=0] positioned ^.5 ^ ^.5 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #stairs[shape=inner_right] align xyz if entity @s[dx=0,dy=0,dz=0] positioned ^-.5 ^ ^.5 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #stairs[shape=outer_left] align xyz positioned ^-.5 ^ ^-.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ #stairs[shape=outer_right] align xyz positioned ^.5 ^ ^-.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0