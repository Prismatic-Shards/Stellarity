tag @e[type=shulker_bullet,tag=stellarity.defensive_shulker_bullet] remove stellarity.seeking

summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","stellarity.seeking","smithed.entity"],Steps:1}
execute if predicate kohara:chance/80percent run summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","stellarity.seeking","smithed.entity"],Steps:1}
execute if predicate kohara:chance/40percent run summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","stellarity.seeking","smithed.entity"],Steps:1}

execute as @e[type=shulker_bullet,tag=stellarity.seeking] at @s run function stellarity:item/armor/shulker/shulker_bullets/seek

playsound minecraft:entity.shulker.shoot player @a[distance=..32]
