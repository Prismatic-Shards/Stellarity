data modify entity @s Target set from entity @p UUID

execute unless entity @s[tag=stellarity.has_owner] run function stellarity:entity/dragon/attacks/shulker_hell/set_owner

particle dragon_breath ~ ~0.2 ~ .06 .06 .06 0 1 force @a[distance=..128]
