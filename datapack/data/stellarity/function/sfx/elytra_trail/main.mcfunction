# Ticked from 'loops/player_main'

data remove storage stellarity:temp elytra_trail
data modify storage stellarity:temp elytra_trail.item set from entity @s equipment.chest.components."minecraft:custom_data"

data modify storage stellarity:temp elytra_trail.color set from storage stellarity:temp elytra_trail.item."stellarity:elytra_color"

execute as @a run data get storage stellarity:temp elytra_trail

execute if entity @s[x_rotation=-75..40] run function stellarity:sfx/elytra_trail/position/0
execute if entity @s[x_rotation=41..50] run function stellarity:sfx/elytra_trail/position/1
execute if entity @s[x_rotation=51..60] run function stellarity:sfx/elytra_trail/position/2
execute if entity @s[x_rotation=61..70] run function stellarity:sfx/elytra_trail/position/3
execute if entity @s[x_rotation=71..80] run function stellarity:sfx/elytra_trail/position/4
execute if entity @s[x_rotation=81..90] run function stellarity:sfx/elytra_trail/position/5

execute if data storage stellarity:temp {elytra_trail:{color:"white"}} run function stellarity:sfx/elytra_trail/colors/white with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"light_gray"}} run function stellarity:sfx/elytra_trail/colors/light_gray with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"gray"}} run function stellarity:sfx/elytra_trail/colors/gray with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"black"}} run function stellarity:sfx/elytra_trail/colors/black with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"brown"}} run function stellarity:sfx/elytra_trail/colors/brown with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"red"}} run function stellarity:sfx/elytra_trail/colors/red with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"orange"}} run function stellarity:sfx/elytra_trail/colors/orange with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"yellow"}} run function stellarity:sfx/elytra_trail/colors/yellow with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"lime"}} run function stellarity:sfx/elytra_trail/colors/lime with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"green"}} run function stellarity:sfx/elytra_trail/colors/green with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"cyan"}} run function stellarity:sfx/elytra_trail/colors/cyan with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"light_blue"}} run function stellarity:sfx/elytra_trail/colors/light_blue with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"blue"}} run function stellarity:sfx/elytra_trail/colors/blue with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"purple"}} run function stellarity:sfx/elytra_trail/colors/purple with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"magenta"}} run function stellarity:sfx/elytra_trail/colors/magenta with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{color:"pink"}} run function stellarity:sfx/elytra_trail/colors/pink with storage stellarity:temp elytra_trail.position

execute unless data storage stellarity:temp elytra_trail.color run function stellarity:sfx/elytra_trail/choose_default

execute if score @s kohara.flight_speed matches 460.. run function stellarity:sfx/elytra_trail/fire with storage stellarity:temp elytra_trail.position

#data remove storage stellarity:temp elytra_trail.color
data remove storage stellarity:temp elytra_trail.special

#execute if score @s kohara.flight_speed matches 450.. run particle minecraft:flame ^ ^0.3 ^-1 0.5 0.5 0.5 0 8
