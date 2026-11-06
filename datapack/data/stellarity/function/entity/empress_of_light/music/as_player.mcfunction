scoreboard players add @s stellarity.music.empress_of_light.timer 1

stopsound @s music minecraft:music.end
stopsound @s music minecraft:music.game
stopsound @s music minecraft:music.overworld.dripstone_caves
stopsound @s music minecraft:music.overworld.frozen_peaks
stopsound @s music minecraft:music.overworld.grove
stopsound @s music minecraft:music.overworld.jagged_peaks
stopsound @s music minecraft:music.overworld.lush_caves
stopsound @s music minecraft:music.overworld.meadow
stopsound @s music minecraft:music.overworld.snowy_slopes
stopsound @s music minecraft:music.overworld.stony_peaks
stopsound @s music minecraft:music.overworld.swamp
stopsound @s music minecraft:music.overworld.badlands
stopsound @s music minecraft:music.overworld.cherry_grove
stopsound @s music minecraft:music.overworld.flower_forest
stopsound @s music minecraft:music.overworld.forest
stopsound @s music minecraft:music.overworld.desert
stopsound @s music minecraft:music.overworld.deep_dark
stopsound @s music minecraft:music.overworld.jungle
stopsound @s music minecraft:music.overworld.sparse_jungle
stopsound @s music minecraft:music.under_water
stopsound @s music minecraft:music.creative

stopsound @s ambient

execute if score @s stellarity.music.empress_of_light.timer matches 1 at @s run playsound stellarity:music.empress_of_light music @s ~ ~ ~

execute if score @s stellarity.music.empress_of_light.timer = #stellarity.config stellarity.config.track_loop_delay.empress_of_light run scoreboard players reset @s stellarity.music.empress_of_light.timer
