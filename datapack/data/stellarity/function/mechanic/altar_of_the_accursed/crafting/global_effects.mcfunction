# All newly spawned items will be ignored by type checks
# and will be able to be picked up without sneaking
  tag @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_accursed.checked_type] add stellarity.altar_of_the_accursed.skip

data remove storage stellarity:temp altar_of_the_accursed.enchants
data remove storage stellarity:temp altar_of_the_accursed.trim

particle minecraft:flash{color:-1} ~ ~-.4 ~ 0 0 0 0 0 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1

kill @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_accursed.skip]

advancement grant @a[distance=..5] only stellarity:altar_of_the_accursed/cursed_crafting
