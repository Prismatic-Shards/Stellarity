# Break blocks in Shulking's 4x4 area without breaking protected arena blocks
execute if score #stellarity.config stellarity.config.shulking_break matches 1 run fill ~2 ~ ~2 ~-2 ~4 ~-2 air replace #stellarity:shulking_can_break_drop destroy
execute if score #stellarity.config stellarity.config.shulking_break matches 1 run fill ~2 ~ ~2 ~-2 ~4 ~-2 air replace #stellarity:shulking_can_break
