execute store result score @s stellarity.item.tamaris.math.health.current run data get entity @s Health 10000
execute store result score @s stellarity.item.tamaris.math.health.percentage run data get entity @s Health 10000
execute store result score @s stellarity.item.tamaris.math.health.max run attribute @s max_health get 100

scoreboard players operation @s stellarity.item.tamaris.math.health.percentage /= @s stellarity.item.tamaris.math.health.max

tag @s remove stellarity.item.tamaris.executable

# Other mobs
  execute as @s[type=!#kohara:boss,tag=!kohara.boss] unless score @s stellarity.item.tamaris.safe_cooldown matches 1.. if score @s stellarity.item.tamaris.math.health.percentage matches ..25 run tag @s add stellarity.item.tamaris.executable

