scoreboard players add @s stellarity.afk.timer 1

# Start music when standing still for 32 seconds or more
execute if score @s stellarity.afk.timer matches 32.. unless entity @s[tag=stellarity.afk.music_playing] run playsound stellarity:music.afk.red_memory music @s ~ ~ ~ 0.85 1.0
execute if score @s stellarity.afk.timer matches 32.. unless entity @s[tag=stellarity.afk.music_playing] run tag @s add stellarity.afk.music_playing

# Loop track after 114s playback (32 + 114 = 146s)
execute if score @s stellarity.afk.timer matches 146.. run playsound stellarity:music.afk.red_memory music @s ~ ~ ~ 0.85 1.0
execute if score @s stellarity.afk.timer matches 146.. run scoreboard players set @s stellarity.afk.timer 32
