execute as @p at @s anchored eyes positioned ^ ^ ^ anchored feet run function stellarity:item/stellar_striker/star/projectile/raycast/start_ray

execute if score @p stellarity.item.stellar_striker.stars.amount matches 1.. positioned ^ ^2.5 ^ run function stellarity:item/stellar_striker/star/projectile/launch
execute if score @p stellarity.item.stellar_striker.stars.amount matches 2.. positioned ^1 ^2 ^ run function stellarity:item/stellar_striker/star/projectile/launch
execute if score @p stellarity.item.stellar_striker.stars.amount matches 3.. positioned ^-1 ^2 ^ run function stellarity:item/stellar_striker/star/projectile/launch
execute if score @p stellarity.item.stellar_striker.stars.amount matches 4.. positioned ^1.2 ^1.1 ^ run function stellarity:item/stellar_striker/star/projectile/launch
execute if score @p stellarity.item.stellar_striker.stars.amount matches 5 positioned ^-1.2 ^1.1 ^ run function stellarity:item/stellar_striker/star/projectile/launch

execute if entity @a[distance=..1,name="kohara_"] run playsound stellarity:item.stellar_striker.thorn_apart player @a[distance=0..]
execute if score @p stellarity.item.stellar_striker.stars.amount matches 1 run playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.85 1.3
execute if score @p stellarity.item.stellar_striker.stars.amount matches 2 run playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.85 1.2
execute if score @p stellarity.item.stellar_striker.stars.amount matches 3 run playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.85 1.1
execute if score @p stellarity.item.stellar_striker.stars.amount matches 4 run playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.85 1
execute if score @p stellarity.item.stellar_striker.stars.amount matches 5 run playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.85 0.9
playsound minecraft:block.beacon.power_select player @a[distance=0..] ~ ~ ~ 0.75 1.1

scoreboard players set @p stellarity.item.stellar_striker.cooldown 120
scoreboard players set @p stellarity.item.stellar_striker.stars.amount 0
scoreboard players set @p stellarity.item.stellar_striker.stars.collect_time 0

schedule function stellarity:item/stellar_striker/star/remove_tag 3s replace
