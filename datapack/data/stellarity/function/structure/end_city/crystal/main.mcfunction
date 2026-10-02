execute unless entity @s[tag=stellarity.end_city.crystal_attacked] as @e[type=interaction,tag=stellarity.end_city.crystal,distance=..3,limit=1] if data entity @s attack positioned as @s run tag @e[type=end_crystal,sort=nearest,tag=stellarity.end_city.crystal,distance=..3,limit=1] add stellarity.end_city.crystal_attacked

execute if entity @s[tag=stellarity.end_city.crystal_attacked] as @e[type=interaction,tag=stellarity.end_city.crystal,distance=..3,limit=1] run data remove entity @s attack

execute if entity @s[tag=stellarity.end_city.crystal_attacked] run function stellarity:structure/end_city/crystal/destroy

execute if score #stellarity.config stellarity.config.enable_creative_shock matches 1 as @a[distance=..100,gamemode=!creative,gamemode=!spectator] at @s run function stellarity:structure/end_city/crystal/apply_shock
