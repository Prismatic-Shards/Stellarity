damage @s 3 stellarity:electric by @p from @p

particle minecraft:electric_spark ~ ~1 ~ .25 .25 .25 1.1 15 normal
particle minecraft:dust{color:[0.957, 0.957, 0.957], scale:1.0} ~ ~1 ~ .4 .4 .4 1.1 9 force @a[distance=..32]
particle minecraft:dust{color:[0.302, 0.765, 1.0], scale:1.0} ~ ~1 ~ .4 .4 .4 1.1 9 force @a[distance=..32]

playsound stellarity:item.elektra_shield.zap player @a[distance=0..] ~ ~ ~ 1 1

execute if entity @s[type=creeper,predicate=kohara:chance/25percent,nbt=!{powered:1b}] run function stellarity:item/elektra_shield/dash/charge_creepers

scoreboard players add @p stellarity.item.elektra_shield.zap_count 1
# 'scoreboard players set @p[scores={...}]' could
# choose different players on Multiplayer
  execute as @p run scoreboard players set @s[scores={stellarity.item.elektra_shield.dashes=..1}] stellarity.item.elektra_shield.boost_duration 80
  execute as @p run scoreboard players set @s[scores={stellarity.item.elektra_shield.dashes=2}] stellarity.item.elektra_shield.boost_duration 160
