##        BDLIB
##    raycast/init
##
## INPUT - bdlib:temp raycast
##   interval - raycast step (default - 0.25)
##   max_iter - max iterations of raycast (default - 128)
##
##   collide_blocks - should raycast stop if collide with block (default - true)
##   block_stop - should raycast ends after colliding with block (default - true)
##   block_ignore - what blocks raycast will ignore (default - #stellarity_desert_scourge:bdlib/raycast/ignore)
##   block_accurate - should raycast go through gaps in blocks (stairs, slabs) (default - true)
##   block_callback - function that will be called after colliding with block (default - bdlib:empty)
##       -position - raycast end
##       -entity - @s
##   
##   collide_entity - should raycast stop if collide with entity (default - true)
##   entity_stop - should raycast ends after colliding with entity (default - true)
##   entity_ignore - what mobs raycast will ignore (default - #stellarity_desert_scourge:bdlib/entity)
##   entity_callback - function that will be called after colliding with entity (default - bdlib:empty)
##       -position - raycast end
##       -entity - collided entity
##   
##   step_callback - function that will be called on every raycast step (default - bdlib:empty) 
##       -position - raycast position
##       -entity - @s
##

execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.interval run data modify storage stellarity_desert_scourge:bdlib_temp raycast.interval set value 0.25f
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.max_iter run data modify storage stellarity_desert_scourge:bdlib_temp raycast.max_iter set value 128
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.collide_blocks run data modify storage stellarity_desert_scourge:bdlib_temp raycast.collide_blocks set value true
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.block_stop run data modify storage stellarity_desert_scourge:bdlib_temp raycast.block_stop set value true
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.block_ignore run data modify storage stellarity_desert_scourge:bdlib_temp raycast.block_ignore set value "#stellarity_desert_scourge:bdlib/not_solid"
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.block_accurate run data modify storage stellarity_desert_scourge:bdlib_temp raycast.block_accurate set value true
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.block_callback run data modify storage stellarity_desert_scourge:bdlib_temp raycast.block_callback set value "bdlib:empty"
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.collide_entity run data modify storage stellarity_desert_scourge:bdlib_temp raycast.collide_entity set value true
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.entity_stop run data modify storage stellarity_desert_scourge:bdlib_temp raycast.entity_stop set value true
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.entity_ignore run data modify storage stellarity_desert_scourge:bdlib_temp raycast.entity_ignore set value "#stellarity_desert_scourge:bdlib/entity"
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.entity_callback run data modify storage stellarity_desert_scourge:bdlib_temp raycast.entity_callback set value "bdlib:empty"
execute unless data storage stellarity_desert_scourge:bdlib_temp raycast.step_callback run data modify storage stellarity_desert_scourge:bdlib_temp raycast.step_callback set value "bdlib:empty"

execute store result score #DISTANCE bdlib.raycast run data get storage stellarity_desert_scourge:bdlib_temp raycast.max_iter
execute store result score #COLLIDE_BLOCK bdlib.raycast run data get storage stellarity_desert_scourge:bdlib_temp raycast.collide_blocks
execute store result score #BLOCK_STOP bdlib.raycast run data get storage stellarity_desert_scourge:bdlib_temp raycast.block_stop
execute store result score #BLOCK_ACCURATE bdlib.raycast run data get storage stellarity_desert_scourge:bdlib_temp raycast.block_accurate

execute positioned ^ ^ ^ run function stellarity_desert_scourge:bdlib/raycast/zzzzzz/loop with storage stellarity_desert_scourge:bdlib_temp raycast