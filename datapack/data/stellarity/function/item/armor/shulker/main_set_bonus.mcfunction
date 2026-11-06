# Damage Reduction when swarmed
  execute store result score #temp stellarity.misc if entity @e[type=!#kohara:invalid_targets,tag=!stellarity.obstruct.walls_solid,distance=0.01..5]
  execute if score #temp stellarity.misc matches 3..5 run effect give @s minecraft:resistance 1 0 false
  execute if score #temp stellarity.misc matches 6..9 run effect give @s minecraft:resistance 1 1 false
  execute if score #temp stellarity.misc matches 10.. run effect give @s minecraft:resistance 1 2 false
