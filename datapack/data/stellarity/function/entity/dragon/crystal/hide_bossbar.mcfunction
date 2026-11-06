bossbar set stellarity:crystal_count visible false
bossbar set stellarity:ender_dragon color pink

execute if entity @s[tag=stellarity.dragon.invulnerable] run function stellarity:entity/dragon/invulnerability/remove
