scoreboard players add @s stellarity.misc 1

# Divide 2.504292583717899 (or just 2.5) by the value of #ticks_per_segment (set in start.mcfunction)
  execute rotated as @s run tp @s ^ ^ ^0.834764194572633 ~ ~

execute if score @s stellarity.misc matches 1.. if predicate {"condition":"minecraft:inverted","term":{"condition":"minecraft:entity_properties","entity":"this","predicate":{"passenger":{}}}} run function stellarity:item/sandstorm_trident/wind_tunnel/movement/remove_block_display
execute unless entity @n[type=area_effect_cloud,tag=stellarity.wind_tunnel.activated,distance=..5] run function stellarity:item/sandstorm_trident/wind_tunnel/movement/remove_block_display

execute if score @s stellarity.misc = @s stellarity.misc2 run function stellarity:item/sandstorm_trident/wind_tunnel/movement/remove_block_display

execute on passengers run title @s actionbar " "
