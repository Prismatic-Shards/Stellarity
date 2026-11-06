particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 25 force @s
particle minecraft:block{block_state: 'minecraft:blue_ice'} ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]
particle minecraft:block{block_state: 'minecraft:pink_stained_glass'} ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]

playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 0.5
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 0.8

playsound stellarity:item.harvester.unlock_ability player @a[distance=0..] ~ ~ ~ 2
