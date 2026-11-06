execute at @s anchored eyes rotated as @p[scores={stellarity.item.stellar_striker.stars.collect_time=1..}] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @p[scores={stellarity.item.stellar_striker.stars.collect_time=1..}] run tp @s ~ ~ ~ ~ 0

execute unless entity @p[scores={stellarity.item.stellar_striker.stars.collect_time=1..},distance=..16] run tp @s @p[scores={stellarity.item.stellar_striker.stars.collect_time=1..}]

execute if score @p stellarity.item.stellar_striker.stars.amount matches 1.. positioned ^ ^2.5 ^ run function stellarity:item/stellar_striker/star/particles
execute if score @p stellarity.item.stellar_striker.stars.amount matches 2.. positioned ^1 ^2 ^ run function stellarity:item/stellar_striker/star/particles
execute if score @p stellarity.item.stellar_striker.stars.amount matches 3.. positioned ^-1 ^2 ^ run function stellarity:item/stellar_striker/star/particles
execute if score @p stellarity.item.stellar_striker.stars.amount matches 4.. positioned ^1.2 ^1.1 ^ run function stellarity:item/stellar_striker/star/particles
execute if score @p stellarity.item.stellar_striker.stars.amount matches 5 positioned ^-1.2 ^1.1 ^ run function stellarity:item/stellar_striker/star/particles
