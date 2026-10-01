$execute at @s positioned ~ ~1 ~ if entity @r[distance=..64,gamemode=!creative,gamemode=!spectator] run summon item_display ~ ~ ~ {Tags:["stellarity.shulking.ray","smithed.entity",'smithed.strict'],data:{"stellarity:owner":{UUID:$(UUID)}},item:{id:"red_shulker_box"}}

execute as @n[type=item_display,tag=stellarity.shulking.ray,distance=..1] run scoreboard players set @s stellarity.live_time 40
execute facing entity @r[distance=..64,gamemode=!creative,gamemode=!spectator] feet run rotate @n[type=item_display,tag=stellarity.shulking.ray,distance=..1] ~ ~
