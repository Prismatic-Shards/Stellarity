# End Portal Lockdown 
# Sound
playsound minecraft:block.respawn_anchor.deplete block @a[distance=..64] ~ ~ ~ 3 0.5
particle minecraft:flash{color:-6608717} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

playsound minecraft:block.chain.break block @a[distance=..64] ~ ~ ~ 2 0.6
playsound minecraft:entity.ender_eye.death block @a[distance=..64] ~ ~ ~ 3 0.7

particle minecraft:flash{color:-10481296} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
playsound minecraft:block.beacon.deactivate block @a[distance=..64] ~ ~ ~ 2 0.5

# Visuals
particle minecraft:flash{color:-6608717} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
particle minecraft:dragon_breath ~ ~ ~ 1.4 0.2 1.4 0.12 140 force @a[distance=..64]
particle minecraft:reverse_portal ~ ~ ~ 1.5 0.3 1.5 0.2 160 force @a[distance=..64]


particle minecraft:portal ~ ~ ~ 1.3 0.2 1.3 1.2 100 force @a[distance=..64]
particle minecraft:witch ~ ~ ~ 1.2 0.4 1.2 0.05 70 force @a[distance=..64]

particle minecraft:end_rod ~ ~ ~ 1.2 0.2 1.2 0.1 35 force @a[distance=..64]
particle minecraft:flash{color:-4309800} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
