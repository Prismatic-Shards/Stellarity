function stellarity:entity/shulking/redirect_bullets

execute positioned ~-2 ~-0.5 ~-2 run kill @e[type=shulker_bullet,dx=4,dz=4,dy=4]

execute store result bossbar stellarity:shulking value run data get entity @s Health

execute if score #stellarity.config stellarity.config.shulking_break matches 1 run fill ~3 ~-2 ~3 ~-3 ~6 ~-3 air replace #stellarity:shulking_can_break_drop destroy
execute if score #stellarity.config stellarity.config.shulking_break matches 1 run fill ~3 ~-2 ~3 ~-3 ~6 ~-3 air replace #stellarity:shulking_can_break

kill @e[type=tnt,tag=stellarity.shulking.explosive_shulker,distance=..5]
kill @e[type=splash_potion,tag=!smithed.strict,distance=..5]
kill @e[type=area_effect_cloud,tag=!smithed.strict,distance=..5]
kill @e[type=lingering_potion,tag=!smithed.strict,distance=..5]

