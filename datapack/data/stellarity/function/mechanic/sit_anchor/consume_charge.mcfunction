# Consume exactly 1 charge from the respawn anchor block at ~ ~ ~
execute if block ~ ~ ~ respawn_anchor[charges=4] run return run setblock ~ ~ ~ respawn_anchor[charges=3]
execute if block ~ ~ ~ respawn_anchor[charges=3] run return run setblock ~ ~ ~ respawn_anchor[charges=2]
execute if block ~ ~ ~ respawn_anchor[charges=2] run return run setblock ~ ~ ~ respawn_anchor[charges=1]
execute if block ~ ~ ~ respawn_anchor[charges=1] run return run setblock ~ ~ ~ respawn_anchor[charges=0]
