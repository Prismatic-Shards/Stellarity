kill @s

# execute store result score #count stellarity.misc run loot spawn ~ ~ ~ loot stellarity:treasure_heads
  execute if score #count stellarity.misc matches 2 run kill @e[type=item,limit=1,sort=random,distance=..0.1]

execute as @e[type=item,distance=..0.1] run data merge entity @s {Tags:["stellarity.checked"],PickupDelay:10s,Glowing:1b}
execute as @e[type=item,distance=..0.1] run team join stellarity.golden_glow @s

particle explosion
playsound minecraft:entity.allay.ambient_with_item block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0
