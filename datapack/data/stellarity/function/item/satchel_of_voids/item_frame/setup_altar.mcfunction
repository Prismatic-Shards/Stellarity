data merge entity @s {Fixed:true,Invisible:1b,ItemRotation:0,ItemDropChance:0f}

tag @s add stellarity.satchel_of_voids.placed

summon marker ~ ~1.25 ~ {Tags:["stellarity.marker","stellarity.altar_of_the_accursed","stellarity.altar_of_the_accursed_activated","stellarity.satchel_of_voids.stationary","stellarity.satchel_of_voids","smithed.entity","smithed.strict"]}

summon item_display ~ ~ ~ {Tags:["stellarity.satchel_of_voids.stationary","smithed.entity","smithed.strict"],item:{id:"stick",count:1,components:{item_model:"stellarity:_technical/satchel_of_voids"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],right_rotation:[0f,0f,0f,1f]},brightness:{block:15,sky:15}}
