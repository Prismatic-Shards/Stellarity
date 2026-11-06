particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

execute as @n[tag=stellarity.util.animated_java.eol.root] run function stellarity:util/animated_java/eol/remove/this
kill @n[type=marker,tag=stellarity.empress_of_light.tracker]
tp @s ~ -2000 ~
kill @s

scoreboard players reset #ambient stellarity.misc
scoreboard players set #empress_of_light.is_alive stellarity.misc 0
scoreboard players set #empress_of_light.is_radiant stellarity.misc 0

execute as @e[type=block_display,limit=2,sort=nearest,tag=stellarity.empress_of_light.wing] on passengers run kill @s
kill @e[type=block_display,limit=2,sort=nearest,tag=stellarity.empress_of_light.wing]

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.despawn","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#D0BBEA"},"\n"]

bossbar set stellarity:empress_of_light players

execute as @a run function stellarity:entity/empress_of_light/music/reset
