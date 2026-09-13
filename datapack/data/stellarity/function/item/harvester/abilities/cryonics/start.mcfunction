tag @s add stellarity.cryonics

summon block_display ~-0.5 ~ ~-0.5 {Tags:["stellarity.cryonics","smithed.entity","smithed.strict"],Passengers:[\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[0f,0.75f,0f],left_rotation:[-0.1261f,0.0338f,0.2566f,0.9577f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[-0.3125f,0.0625f,-0.1875f],left_rotation:[0.2588f,0f,0f,0.9659f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[0.0625f,-0.1875f,0.1875f],left_rotation:[0.1294f,0.1294f,0.017f,0.983f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[0.0625f,-0.0625f,0.3125f],left_rotation:[-0.1261f,0.2566f,-0.0338f,0.9577f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[-0.5625f,0.4375f,0.5625f],left_rotation:[-0.1206f,0.3794f,-0.0499f,0.916f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[-0.0625f,0.4375f,0.6875f],left_rotation:[0.0338f,0.3967f,0.3044f,0.8654f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[0.5f,0.6875f,1.3125f],left_rotation:[0.2683f,0.8182f,0.0852f,0.5012f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}},\
{id:"minecraft:block_display",Tags:["smithed.entity","smithed.strict"],block_state:{id:"minecraft:ice"},transformation:{translation:[0.375f,0.8125f,-0.0625f],left_rotation:[0.2147f,0.3353f,0.2853f,0.8718f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}]}

particle minecraft:block{block_state: 'minecraft:ice'} ~ ~0.5 ~ 0.5 0.7 0.5 1 40
particle flash{color:-1} ~ ~1 ~

playsound minecraft:block.glass.place player @a ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 0.8
