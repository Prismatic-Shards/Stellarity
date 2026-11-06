execute if entity @s[tag=!stellarity.holding_stellar_striker.sneaking] run function stellarity:item/stellar_striker/holding/sneak/start

execute anchored eyes anchored eyes rotated ~ 0 run tp @n[type=interaction,tag=stellarity.stellar_striker] ^ ^-.35 ^
execute as @n[type=interaction,tag=stellarity.stellar_striker] if data entity @s attack run function stellarity:item/stellar_striker/star/launch
