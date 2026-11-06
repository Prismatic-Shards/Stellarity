kill @n[type=end_crystal,tag=stellarity.end_crystal,distance=..0.001]

# /fill >> /setblock
  fill ~ ~ ~ ~ ~ ~ air replace #fire

# Dropping it as loot gives the item some random motion
# /summon lacks that natural motion completely
  execute unless entity @p[gamemode=creative] run loot spawn ~ ~0.8 ~ loot stellarity:end_crystal_drop

playsound minecraft:block.glass.break block @a[distance=0..] ~ ~1.2 ~ 1 0.8
playsound minecraft:block.amethyst_block.break block @a[distance=0..] ~ ~1.2 ~ 1 0

# Mixing particles, because why not?
  particle minecraft:item{item:{id:"end_crystal"}} ~ ~1.2 ~ 0 0 0 0.14 22
  particle block{block_state: 'minecraft:glass'} ~ ~1.2 ~ 0 0 0 0.22 22
