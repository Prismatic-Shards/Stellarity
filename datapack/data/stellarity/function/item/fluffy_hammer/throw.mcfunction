execute unless predicate stellarity:item/holding/trinket/radiant_jewel run summon item_display ~ ~ ~ {Invulnerable:true,NoGravity:true,Tags:["stellarity.fluffy_hammer","smithed.entity","smithed.strict"],item:{id:"bow"}, Passengers:[{id:"item_display",item_display:"head", Invulnerable:true,Tags:["stellarity.fluffy_hammer.display","smithed.entity","smithed.strict"], item:{id:"bow"}, NoGravity:true, transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.7,0.7,0.7],right_rotation:[0f,0f,0f,1f]}}],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0,0,0],right_rotation:[0f,0f,0f,1f]}}
execute if predicate stellarity:item/holding/trinket/radiant_jewel run summon item_display ~ ~ ~ {Invulnerable:true,NoGravity:true,Tags:["stellarity.fluffy_hammer","stellarity.radiant_fluffy_hammer","smithed.entity","smithed.strict"],item:{id:"bow"}, Passengers:[{id:"item_display",item_display:"head", Invulnerable:true,Tags:["stellarity.fluffy_hammer.display","smithed.entity","smithed.strict"], item:{id:"bow"}, NoGravity:true, transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.7,0.7,0.7],right_rotation:[0f,0f,0f,1f]}}],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0,0,0],right_rotation:[0f,0f,0f,1f]}}

data modify entity @n[type=item_display,tag=stellarity.fluffy_hammer.display,distance=..1] item set from entity @s SelectedItem
execute if data entity @n[type=item_display,tag=stellarity.fluffy_hammer.display,distance=..1] item.components.minecraft:custom_data{"stellarity:item":"fluffy_hammer"} run item replace entity @s weapon.mainhand with minecraft:air
execute unless data entity @n[type=item_display,tag=stellarity.fluffy_hammer.display,distance=..1] item.components.minecraft:custom_data{"stellarity:item":"fluffy_hammer"} run function stellarity:item/fluffy_hammer/offhand_replace

data modify entity @n[type=item_display,tag=stellarity.fluffy_hammer,distance=..1] data."stellarity:owner".UUID set from entity @s UUID

playsound stellarity:item.fluffy_hammer.throw player @a[distance=..16] ~ ~ ~

scoreboard players set @n[tag=stellarity.fluffy_hammer.display] stellarity.misc 0

execute unless entity @s[gamemode=creative] positioned ~ ~1.5 ~ as @n[type=item_display,tag=stellarity.fluffy_hammer.display] run function stellarity:item/fluffy_hammer/decrease_durability

execute rotated as @s run tp @e[type=item_display,tag=stellarity.fluffy_hammer,distance=..1] ~ ~1.5 ~ ~ ~

advancement revoke @s from stellarity:event/item/throw_fluffy_hammer


