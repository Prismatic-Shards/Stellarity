# AFK 32s detection and background music player
execute store result score #curr_x stellarity.misc run data get entity @s Pos[0] 10
execute store result score #curr_y stellarity.misc run data get entity @s Pos[1] 10
execute store result score #curr_z stellarity.misc run data get entity @s Pos[2] 10

# Check if player stayed in the same position
execute if score #curr_x stellarity.misc = @s stellarity.afk.pos_x if score #curr_y stellarity.misc = @s stellarity.afk.pos_y if score #curr_z stellarity.misc = @s stellarity.afk.pos_z run function stellarity:ambient/afk_tick_still
execute unless score #curr_x stellarity.misc = @s stellarity.afk.pos_x run function stellarity:ambient/afk_moved
execute unless score #curr_y stellarity.misc = @s stellarity.afk.pos_y run function stellarity:ambient/afk_moved
execute unless score #curr_z stellarity.misc = @s stellarity.afk.pos_z run function stellarity:ambient/afk_moved
