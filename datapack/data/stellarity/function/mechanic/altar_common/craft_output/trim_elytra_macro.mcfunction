# Applies armor trim pattern and material to the crafted elytra
$data modify entity @n[type=item,tag=stellarity.altar_of_the_accursed.minecraft.elytra,distance=..2.5] Item.components."minecraft:trim" set value {pattern:"$(pattern)",material:"$(material)"}
