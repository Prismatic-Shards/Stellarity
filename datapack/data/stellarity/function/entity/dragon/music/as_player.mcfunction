scoreboard players add @s stellarity.music.ender_dragon.timer 1

stopsound @s music minecraft:music.end

execute if score @s stellarity.music.ender_dragon.timer matches 1 at @s run playsound stellarity:music.ender_dragon music @s ~ ~ ~

execute if score @s stellarity.music.ender_dragon.timer = #stellarity.config stellarity.config.track_loop_delay.dragon run scoreboard players reset @s stellarity.music.ender_dragon.timer
