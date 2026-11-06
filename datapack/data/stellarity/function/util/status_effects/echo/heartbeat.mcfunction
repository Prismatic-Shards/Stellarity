scoreboard players add @s stellarity.status_effects.echo.heartbeat_timer 1
execute if score @s stellarity.status_effects.echo.heartbeat_timer matches 1 run playsound entity.warden.heartbeat neutral @a[distance=0..] ~ ~ ~ 1 1
execute if score @s stellarity.status_effects.echo.heartbeat_timer matches 1 run particle minecraft:dust_color_transition{from_color:[0.027450980392156862, 0.5568627450980392, 0.6901960784313725],to_color:[0.00392156862745098, 0.16470588235294117, 0.2235294117647059], scale:1.75} ~ ~1.2 ~ 0.4 0.4 0.4 0.02 10

execute if score @s stellarity.status_effects.echo.heartbeat_timer matches 30 run scoreboard players reset @s stellarity.status_effects.echo.heartbeat_timer
