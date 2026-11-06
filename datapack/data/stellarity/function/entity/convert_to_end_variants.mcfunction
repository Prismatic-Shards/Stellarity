execute if entity @s[type=enderman,tag=!smithed.entity] run function stellarity:entity/stat_buff/enderman
execute if entity @s[type=phantom] run function stellarity:entity/stat_buff/phantom
execute if entity @s[type=silverfish,tag=!smithed.entity] run function stellarity:entity/voided_silverfish/convert
execute if entity @s[type=slime,nbt=!{Size:0},tag=!smithed.entity] run function stellarity:entity/voided_slime/convert
execute if entity @s[type=skeleton,tag=!smithed.entity] run function stellarity:entity/voided_skeleton/convert
execute if entity @s[type=zombie,tag=!smithed.entity] run function stellarity:entity/voided_zombie/convert
execute if entity @s[type=zombified_piglin,tag=!stellarity.aware,predicate=stellarity:location/in_biome/flesh_tundra,tag=!smithed.entity] run function stellarity:entity/flesh_piglin/convert

tag @s add stellarity.buffed
