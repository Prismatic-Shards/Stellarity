execute store result bossbar stellarity:crystal_count value run scoreboard players get #crystal_count stellarity.misc
bossbar set stellarity:crystal_count name [{"translate":"bossbar.stellarity.crystals_left","color":"#4C0081","with":[{"score":{"name": "#crystal_count","objective": "stellarity.misc"},"color":"#620081"}]}]

bossbar set stellarity:crystal_count visible true
bossbar set stellarity:ender_dragon color white

execute if entity @s[tag=!stellarity.dragon.invulnerable] run function stellarity:entity/dragon/invulnerability/apply
