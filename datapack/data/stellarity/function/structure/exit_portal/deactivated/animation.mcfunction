execute positioned 0 128 0 run function stellarity:entity/dragon/spawn/summon

function stellarity:structure/exit_portal/deactivated/generate

tag @s add stellarity.in_dragon_fight
tag @s remove stellarity.portal_deactivated.spawn_dragon

stopsound @a[predicate=stellarity:location/dragons_den/in_biome] music
