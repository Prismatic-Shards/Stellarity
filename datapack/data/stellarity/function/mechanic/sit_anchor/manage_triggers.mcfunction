# Manage interaction trigger directly on the Respawn Anchor
# Only activate sitting trigger when anchor is fully charged (4/4)
execute if block ~ ~ ~ respawn_anchor[charges=4] unless entity @e[type=interaction,tag=stellarity.anchor_seat_trigger,distance=..0.5] run summon interaction ~0.5 ~1.0 ~0.5 {Tags:["stellarity.anchor_seat_trigger"],width:0.98F,height:0.8F}

# When anchor is not 4/4 charged (charges=0..3), remove interaction trigger so player can charge it with glowstone
execute unless block ~ ~ ~ respawn_anchor[charges=4] run kill @e[type=interaction,tag=stellarity.anchor_seat_trigger,distance=..1.0]
