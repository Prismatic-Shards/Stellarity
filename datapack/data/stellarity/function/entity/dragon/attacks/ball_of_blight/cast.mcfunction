scoreboard players set @s[scores={stellarity.dragon.health_percent=16..50}] stellarity.dragon.ball_of_blight_cooldown 1000
scoreboard players set @s[scores={stellarity.dragon.health_percent=..15}] stellarity.dragon.ball_of_blight_cooldown 600

summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.ball_of_blight","smithed.entity","smithed.strict","stellarity.new"]}

execute as @e[type=marker,tag=stellarity.new] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=stellarity.new] remove stellarity.new

playsound entity.wither.shoot hostile @a[distance=0..] ~ ~ ~ 5 1
