tag @s add stellarity.to_portal

data merge entity @s {DragonPhase:3,Invulnerable:1b}

execute as @a[scores={stellarity.music.ender_dragon.timer=1..}] run function stellarity:entity/dragon/music/reset
