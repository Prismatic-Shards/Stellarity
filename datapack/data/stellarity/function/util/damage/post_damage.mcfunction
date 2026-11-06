# Remove Holy Protection if a player has it
execute if entity @s[type=player,tag=stellarity.holy_protection] run function stellarity:item/armor/hallowed/holy_protection/off
