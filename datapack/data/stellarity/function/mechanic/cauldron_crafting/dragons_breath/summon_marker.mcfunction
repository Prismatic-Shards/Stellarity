kill @s

execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.cauldron_crafting","stellarity.cauldron"]}
scoreboard players set @n[type=marker,tag=stellarity.cauldron_crafting] stellarity.mechanics.cauldron_crafting.breath_left 7

playsound item.bottle.empty block @a[distance=0..] ~ ~ ~ 1 1
playsound item.bottle.fill_dragonbreath block @a[distance=0..] ~ ~ ~ 0.75 1

particle poof ~ ~0.45 ~ 0.25 0 0.25 0 10

advancement grant @p only stellarity:cauldron/dilute_breath
