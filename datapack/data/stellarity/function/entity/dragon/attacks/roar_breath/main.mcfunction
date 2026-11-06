execute as @e[type=area_effect_cloud,distance=..24,tag=!stellarity.dragon_breath,nbt={custom_particle:{type:"minecraft:dragon_breath"}}] \
at @s run \
function stellarity:entity/dragon/attacks/roar_breath/edit_cloud
