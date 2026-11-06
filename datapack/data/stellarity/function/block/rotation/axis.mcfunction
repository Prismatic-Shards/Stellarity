# y axis default placement no code required
# z axis
  execute if score @s stellarity.misc2 matches 2..3 run data modify entity @s transformation.left_rotation set value [0.707, 0.0,0.0,0.707]

# x axis
  execute if score @s stellarity.misc2 matches 4..5 run data modify entity @s transformation.left_rotation set value [0.0,0.0,0.707,0.707]
