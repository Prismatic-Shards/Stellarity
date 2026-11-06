scoreboard players add @s stellarity.dragon.heartbeat 1

execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 19..25 if score @s stellarity.dragon.heartbeat matches 30.. run function stellarity:entity/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 13..18 if score @s stellarity.dragon.heartbeat matches 24.. run function stellarity:entity/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 7..12 if score @s stellarity.dragon.heartbeat matches 19.. run function stellarity:entity/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 1..6 if score @s stellarity.dragon.heartbeat matches 14.. run function stellarity:entity/dragon/heartbeat/beat

execute if entity @s[tag=stellarity.at_portal] if score @s stellarity.dragon.heartbeat matches 8.. run function stellarity:entity/dragon/heartbeat/beat
