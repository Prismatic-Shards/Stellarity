# Player moved: smoothly fade out music and reset AFK timer
execute if entity @s[tag=stellarity.afk.music_playing] run stopsound @s music stellarity:music.afk.red_memory
tag @s remove stellarity.afk.music_playing
scoreboard players set @s stellarity.afk.timer 0

# Store new position
scoreboard players operation @s stellarity.afk.pos_x = #curr_x stellarity.misc
scoreboard players operation @s stellarity.afk.pos_y = #curr_y stellarity.misc
scoreboard players operation @s stellarity.afk.pos_z = #curr_z stellarity.misc
