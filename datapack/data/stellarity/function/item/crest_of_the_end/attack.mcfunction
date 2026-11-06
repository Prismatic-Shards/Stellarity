advancement revoke @s only stellarity:event/item/crest/attack

attribute @s attack_damage modifier remove stellarity:crest

title @s actionbar " "

execute at @s anchored eyes positioned ^ ^ ^2 run function stellarity:item/crest_of_the_end/sfx/choose

scoreboard players reset @s stellarity.item.crest.bonus_dmg
scoreboard players reset @s stellarity.item.crest.time
