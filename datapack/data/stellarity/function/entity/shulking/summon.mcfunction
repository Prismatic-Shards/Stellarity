scoreboard objectives add stellarity.config.shulking_health dummy
scoreboard objectives add stellarity.misc dummy
scoreboard objectives add stellarity.shulking.phase dummy
scoreboard objectives add stellarity.shulking.state dummy
scoreboard objectives add stellarity.shulking.wall dummy
scoreboard objectives add stellarity.shulking.bullet_cooldown dummy
scoreboard objectives add stellarity.shulking.shockwave_cd dummy
scoreboard objectives add stellarity.shulking.fangs_cd dummy
scoreboard objectives add stellarity.shulking.attack_cooldown dummy
scoreboard objectives add stellarity.shulking.action_timer dummy
scoreboard objectives add stellarity.shulking.health dummy

execute unless score #stellarity.config stellarity.config.shulking_health matches 1.. run scoreboard players set #stellarity.config stellarity.config.shulking_health 900
bossbar add stellarity:shulking {"translate":"entity.stellarity.shulking","color":"#FF00FF"}

# Summon new Shulking v6.2 (Scale 4.0, No Allay)
summon shulker ~ ~ ~ {Tags:["stellarity.shulking","smithed.entity","smithed.strict","kohara.boss"],NoAI:true,CustomName:{"color":"#FF00FF","translate":"entity.stellarity.shulking"},CustomNameVisible:false,Silent:true,attributes:[{id:"minecraft:scale",base:4},{id:"minecraft:max_health",base:900},{id:"minecraft:follow_range",base:128}],Health:900f}

# Setup initial scores on the boss
execute as @n[type=shulker,tag=stellarity.shulking,distance=..5] at @s run function stellarity:entity/shulking/init/shulker

scoreboard players set #shulking.is_alive stellarity.misc 1

execute store result bossbar stellarity:shulking max run scoreboard players get #stellarity.config stellarity.config.shulking_health
execute store result bossbar stellarity:shulking value run scoreboard players get #stellarity.config stellarity.config.shulking_health
bossbar set stellarity:shulking style notched_10
bossbar set stellarity:shulking color pink
bossbar set stellarity:shulking name {"translate":"entity.stellarity.shulking","color":"#FF00FF"}
bossbar set stellarity:shulking players @a[distance=..64]

particle portal ~ ~2 ~ 1.5 1.5 1.5 0.5 80
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]
playsound stellarity:entity.shulking.spawn hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.descend hostile @a ~ ~ ~ 2 1

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.shulking.spawn","with":[{"translate":"entity.stellarity.shulking"}],"color":"#AF4BFF"},"\n"]