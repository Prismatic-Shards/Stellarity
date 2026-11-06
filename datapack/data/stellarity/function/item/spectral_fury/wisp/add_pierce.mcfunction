scoreboard players add @s stellarity.item.spectral_fury.pierce_count 1

function kohara:reduce_by_percent {holder:"@s",score:"stellarity.item.spectral_fury.damage",percent:30}

particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 6 normal
playsound minecraft:entity.player.attack.nodamage player @a[distance=0..] ~ ~ ~ 1 1.3
playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 0.8

execute if score @s stellarity.item.spectral_fury.pierce_count matches 4 run function stellarity:item/spectral_fury/wisp/remove

