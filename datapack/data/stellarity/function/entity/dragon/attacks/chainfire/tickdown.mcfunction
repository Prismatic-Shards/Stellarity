scoreboard players remove @s stellarity.dragon.time_chainfiring 1
execute if score @s stellarity.dragon.time_chainfiring matches 1 run function stellarity:entity/dragon/attacks/fireball/summon
execute if score @s stellarity.dragon.time_chainfiring matches 1 run playsound entity.ender_dragon.shoot hostile @a[distance=0..] ~ ~ ~ 10 1
execute if score @s stellarity.dragon.time_chainfiring matches 13 run function stellarity:entity/dragon/attacks/fireball/summon
execute if score @s stellarity.dragon.time_chainfiring matches 13 run playsound entity.ender_dragon.shoot hostile @a[distance=0..] ~ ~ ~ 10 1
