# Functions loops only for players wearing Hallowed Armor
# Just a little note to self, keep reading :D

execute unless score @s stellarity.item.armors.holy_protection_cooldown matches -2147483647..2147483647 run \
scoreboard players set @s stellarity.item.armors.holy_protection_cooldown 500

scoreboard players remove @s[scores={stellarity.item.armors.holy_protection_cooldown=1..}] stellarity.item.armors.holy_protection_cooldown 1
execute if score @s stellarity.item.armors.holy_protection_cooldown matches 1 run \
function stellarity:item/armor/hallowed/holy_protection/on

# Because Milk Buckets exist :/
  execute if entity @s[tag=stellarity.holy_protection] run effect give @s resistance 2 100 true


# Remove knockback resistance
  execute if score @s stellarity.item.armors.holy_protection_cooldown matches 500..539 run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0 1
  execute if score @s stellarity.item.armors.holy_protection_cooldown matches 500 run attribute @s knockback_resistance modifier remove stellarity:holy_protection
  execute if score @s stellarity.item.armors.holy_protection_cooldown matches 460 run function stellarity:item/armor/hallowed/holy_protection/remove_speed
