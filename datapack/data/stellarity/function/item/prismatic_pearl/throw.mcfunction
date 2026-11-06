# Initiated by a technical enchantment
  execute as @p at @s if score @s stellarity.item.prismatic_pearl.cooldown matches 1.. run function stellarity:item/prismatic_pearl/throw/fail
  execute as @p at @s unless score @s stellarity.item.prismatic_pearl.cooldown matches 1.. run function stellarity:item/prismatic_pearl/throw/suceed

function stellarity:item/prismatic_pearl/velocity
