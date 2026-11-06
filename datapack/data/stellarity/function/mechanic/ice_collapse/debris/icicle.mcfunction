particle minecraft:block{block_state:"minecraft:pointed_dripstone"} ~ ~0.8 ~ 0.3 0.2 0.3 0.1 15
particle minecraft:snowflake ~ ~0.5 ~ 0.2 0.2 0.2 0.05 8
playsound minecraft:block.pointed_dripstone.break ambient @a[distance=..16] ~ ~ ~ 0.8 1.2
summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:pointed_dripstone",properties:{thickness:"tip",vertical_direction:"down"}},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:24,FallHurtAmount:4.0f,Motion:[0.0,-0.8,0.0]}
