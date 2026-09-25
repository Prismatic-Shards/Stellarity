setblock ~ ~ ~ structure_block[mode=load]{name:"stellarity:end_gateway",posX:-3,posY:-8,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~1 ~ minecraft:redstone_block
setblock ~ ~ ~ minecraft:end_gateway{Age:1L}

summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.end_gateway_anim","smithed.strict","smithed.entity"]}
