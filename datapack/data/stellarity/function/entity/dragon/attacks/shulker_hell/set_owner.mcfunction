tag @s add stellarity.has_owner

data modify entity @s Owner set from entity @e[type=ender_dragon,limit=1] UUID
