# Fail execute if Totem of Undying is used
# or Holy Protection invulnerability is triggered
tag @s[predicate=kohara:holding_a_totem] add stellarity.totem
execute if entity @s[tag=stellarity.totem,tag=stellarity.damage.tamaris] as @p[tag=kohara.attacker] at @s run function stellarity:item/tamaris/execute/fail
execute if entity @s[type=player,tag=stellarity.holy_protection,tag=stellarity.damage.tamaris] as @p[tag=kohara.attacker] at @s run function stellarity:item/tamaris/execute/fail
tag @s remove stellarity.totem
