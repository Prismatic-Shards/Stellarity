scoreboard players operation @s kohara.used_ender_pearl = @s kohara.detect.used_ender_pearl
scoreboard players operation @s kohara.flight_speed = @s kohara.detect.flight_speed
scoreboard players operation @s kohara.thrown_trident = @s kohara.detect.thrown_trident
scoreboard players operation @s kohara.used_firework = @s kohara.detect.used_firework

scoreboard players reset @s kohara.detect.used_ender_pearl
scoreboard players reset @s kohara.detect.flight_speed
scoreboard players reset @s kohara.detect.thrown_trident
scoreboard players reset @s kohara.detect.used_firework

# Bow detection
# Ever since 1.21.4, it fires once initially and then when shot
function kohara:bow_detection/main

# Respawn detection
execute if score @s kohara.respawn_detection matches 1 run function #kohara:on_respawn

# Right click detection (Warped Fungus on a Stick)
execute if score @s kohara.detect.right_click matches 1.. run function kohara:right_click/check
