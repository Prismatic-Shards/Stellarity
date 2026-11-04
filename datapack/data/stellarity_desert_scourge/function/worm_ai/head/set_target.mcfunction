execute as @a[tag=id,gamemode=!spectator,sort=random,distance=..256,limit=1] unless score @s death matches 1.. run scoreboard players operation *temp playerID = @s playerID
execute if score *temp playerID matches -2147483648..2147483647 run scoreboard players operation @s wormTarget = *temp playerID
scoreboard players reset *temp playerID