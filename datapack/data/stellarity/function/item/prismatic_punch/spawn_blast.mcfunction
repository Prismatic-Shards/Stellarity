execute unless entity @n[type=player,predicate=stellarity:item/holding/trinket/radiant_jewel] run summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.marker","smithed.entity","smithed.strict"]}
execute if entity @n[type=player,predicate=stellarity:item/holding/trinket/radiant_jewel] run summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.prismatic_blast.radiant","stellarity.marker","smithed.entity","smithed.strict"]}
execute if entity @n[type=player,predicate=stellarity:item/holding/trinket/radiant_jewel] run summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.prismatic_blast.radiant","stellarity.marker","smithed.entity","smithed.strict"]}

tp @e[type=marker,tag=stellarity.prismatic_blast,distance=..1] ^ ^ ^ ~ ~

function stellarity:item/prismatic_punch/shoot_particles

kill @e[type=#kohara:ammo,limit=3,sort=nearest,tag=!stellarity.aware]
