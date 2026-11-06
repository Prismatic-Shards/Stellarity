$ride @n[type=shulker,tag=stellarity.shulking.body,nbt={UUID:$(UUID)}] dismount
$ride @n[type=shulker,tag=stellarity.shulking.body,nbt={UUID:$(UUID)}] mount @s

execute unless data entity @s Passengers[0] run function stellarity:entity/shulking/death/start
