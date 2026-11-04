execute align xyz positioned ~ ~ ~.125 unless entity @s[dx=0,dy=0,dz=0] positioned ~.125 ~ ~-.125 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute align xyz positioned ~.875 ~ ~ if entity @s[dx=0,dy=0,dz=0] positioned ~ ~ ~.125 unless entity @s[dx=0,dy=0,dz=0] positioned ~.125 ~ ~-.125 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute align xyz positioned ~ ~ ~.875 if entity @s[dx=0,dy=0,dz=0] positioned ~ ~ ~.125 unless entity @s[dx=0,dy=0,dz=0] positioned ~.125 ~ ~-.125 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute align xyz positioned ~.875 ~ ~.875 if entity @s[dx=0,dy=0,dz=0] positioned ~ ~ ~.125 unless entity @s[dx=0,dy=0,dz=0] positioned ~.125 ~ ~-.125 unless entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0

execute align xyz positioned ~ ~.875 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0
execute if block ~ ~ ~ scaffolding[bottom=true] align xyz positioned ~ ~-.875 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #END2 bdlib.raycast 0