##        BDLIB
##    block/get_offset/init
##
## INPUT - #X, #Z (bdlib.block.offset)
## OUTPUT - #OFFSET.X, #OFFSET.Z (bdlib.block.offset), block.offset (storage stellarity_desert_scourge:bdlib_temp)
##   1.0 = 1000000

execute store result storage stellarity_desert_scourge:bdlib_temp block.get_offset.x int 1 run scoreboard players get #X bdlib.block.offset
execute store result storage stellarity_desert_scourge:bdlib_temp block.get_offset.z int 1 run scoreboard players get #Z bdlib.block.offset

function stellarity_desert_scourge:bdlib/block/get_offset/_fetch with storage stellarity_desert_scourge:bdlib_temp block.get_offset
execute if score #HAS bdlib.block.offset matches 0 run function stellarity_desert_scourge:bdlib/block/get_offset/_calculate
execute if score #HAS bdlib.block.offset matches 1 run function stellarity_desert_scourge:bdlib/block/get_offset/_get