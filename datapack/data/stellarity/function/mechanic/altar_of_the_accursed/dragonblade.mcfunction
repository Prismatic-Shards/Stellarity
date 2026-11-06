loot spawn ~ ~-.2 ~ loot stellarity:item/weapon/dragonblade
data merge entity @n[type=item] {PickupDelay:15s,Invulnerable:1b,Age:-32768s,Tags:["stellarity.altar_of_the_accursed.skip"]}

playsound stellarity:item.dragonblade.drop block @a[distance=0..]

kill @s
kill @n[type=armor_stand,tag=stellarity.altar_of_the_accursed.sword_holder]
