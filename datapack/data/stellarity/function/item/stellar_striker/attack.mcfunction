scoreboard players add @s stellarity.item.stellar_striker.stars.collect_time 200

playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 1

tag @s add stellarity.stellar_striker.remove_adv
schedule function stellarity:item/stellar_striker/scheduled 1t
