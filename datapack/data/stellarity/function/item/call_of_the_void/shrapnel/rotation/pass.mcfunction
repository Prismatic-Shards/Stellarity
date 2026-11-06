data remove storage stellarity:temp shrapnel.rotation_xy
data modify storage stellarity:temp shrapnel.rotation_xy insert 0 from storage stellarity:temp shrapnel.rotation.x
data modify storage stellarity:temp shrapnel.rotation_xy insert 1 from storage stellarity:temp shrapnel.rotation.y

data modify entity @s Rotation set from storage stellarity:temp shrapnel.rotation_xy

return 1
