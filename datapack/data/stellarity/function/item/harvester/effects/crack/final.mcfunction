particle minecraft:enchant ~ ~1.5 ~ 0 0 0 4 155 force @s

particle minecraft:block{block_state: 'minecraft:ice'} ~ ~1 ~ 0 0 0 3 10 force @a[distance=..32]
particle minecraft:block{block_state: 'minecraft:packed_ice'} ~ ~1 ~ 0 0 0 3 10 force @a[distance=..32]
particle minecraft:block{block_state: 'minecraft:blue_ice'} ~ ~1 ~ 0 0 0 3 10 force @a[distance=..32]
particle minecraft:block{block_state: 'minecraft:magenta_stained_glass'} ~ ~1 ~ 0 0 0 3 10 force @a[distance=..32]
particle minecraft:block{block_state: 'minecraft:pink_stained_glass'} ~ ~1 ~ 0 0 0 3 10 force @a[distance=..32]

playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 0.8

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 0.5
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 0.8
