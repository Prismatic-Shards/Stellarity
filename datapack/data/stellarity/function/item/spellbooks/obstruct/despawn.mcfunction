
playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 1 0.5
particle minecraft:explosion_emitter

tp ~ -80 ~
data modify storage stellarity:temp Obstruct.shulker set from entity @s Passengers[0].UUID

function stellarity:item/spellbooks/obstruct/remove_shulker with storage stellarity:temp Obstruct
kill @s

