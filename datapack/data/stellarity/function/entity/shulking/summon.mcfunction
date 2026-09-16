summon allay ~ ~ ~ {Brain:{memories:{}},Tags:["stellarity.shulking","smithed.entity","smithed.strict","kohara.boss"],CustomName:{"color":"#FF00FF",translate:"entity.stellarity.shulking"},CustomNameVisible:false, Invulnerable:true,Silent:true, attributes:[{id:"max_health",base:1000},{base:2,id:"scale"}],Health:1000,HasVisualFire:false, active_effects:[{id:"invisibility",duration:1000000000,show_particles:false}],data:{"stellarity:shulking_rods":[]}, \
Passengers:[{id:"shulker", NoAI:true, Tags:["stellarity.shulking.body","smithed.entity","kohara.boss"],CustomName:{"color":"#FF00FF",translate:"entity.stellarity.shulking"},CustomNameVisible:false,attributes:[{id:"minecraft:scale",base:2},{id:"follow_range",base:128},{id:"max_health",base:500}]}] \
}

execute as @n[type=allay,tag=stellarity.shulking,distance=..5] at @s run function stellarity:entity/shulking/init/allay
execute as @n[type=shulker,tag=stellarity.shulking.body,distance=..5] at @s run function stellarity:entity/shulking/init/shulker

execute store result bossbar stellarity:shulking max run scoreboard players get #stellarity.config stellarity.config.shulking_health

scoreboard players set #shulking.is_alive stellarity.misc 1

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.shulking.spawn","with":[{"translate":"entity.stellarity.shulking"}],"color":"#AF4BFF"},"\n"]