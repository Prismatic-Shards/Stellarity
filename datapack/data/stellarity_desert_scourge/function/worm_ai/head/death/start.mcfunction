scoreboard players set @s wormDeathTimer 18

scoreboard players operation *tempID mobID = @s mobID
execute as @e[type=vex,tag=worm.hitbox] if score @s mobID = *tempID mobID on attacker run advancement grant @s only stellarity_desert_scourge:the_beast_of_deserts
scoreboard players reset *tempID mobID