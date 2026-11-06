advancement revoke @s only stellarity:event/item/use_elektra_shield_while_sneaking

tag @s add stellarity.item.elektra_shield.using

# Will get removed literally a tick later
  effect give @s levitation infinite 0 true

# Immunity to knockback
  attribute @s knockback_resistance modifier add stellarity:elektra_shield 1000 add_value
  attribute @s gravity modifier add stellarity:elektra_shield -1 add_multiplied_total

function stellarity:item/elektra_shield/dash/spawn_marker

execute unless score @s stellarity.item.elektra_shield.dashes matches -2147483648..2147483647 run scoreboard players set @s stellarity.item.elektra_shield.dashes 3
scoreboard players remove @s stellarity.item.elektra_shield.dashes 1
function stellarity:item/elektra_shield/actionbar
