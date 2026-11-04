$data modify entity @s Rotation set value [$(y)f, $(x)f]
$execute positioned 0.0 0.0 0.0 positioned ^ ^ ^$(length) run tp @s ~ ~ ~ ~ ~
data modify storage stellarity_desert_scourge:bdlib_temp vector.out set value [0d, 0d, 0d]
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[0] double 0.01 store result score #V.X bdlib.vector run data get entity @s Pos[0] 100
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[1] double 0.01 store result score #V.Y bdlib.vector run data get entity @s Pos[1] 100
execute store result storage stellarity_desert_scourge:bdlib_temp vector.out[2] double 0.01 store result score #V.Z bdlib.vector run data get entity @s Pos[2] 100
kill @s