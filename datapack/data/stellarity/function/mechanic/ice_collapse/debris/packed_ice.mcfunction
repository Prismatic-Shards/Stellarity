particle minecraft:block{block_state:"minecraft:packed_ice"} ~ ~0.8 ~ 0.5 0.2 0.5 0.1 20
particle minecraft:snowflake ~ ~0.5 ~ 0.3 0.2 0.3 0.05 10
summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:packed_ice"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:15,FallHurtAmount:2.5f,Motion:[0.0,-0.6,0.0]}
