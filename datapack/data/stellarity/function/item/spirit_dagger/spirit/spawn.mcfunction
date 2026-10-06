summon armor_stand ~ ~-1 ~ {NoBasePlate:1b,NoGravity:1b,Small:0b,equipment:{head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;1681055649,1967867780,-1559573219,-1855065408],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY3ZDVlZGEyYzAyNWEzZTJmYjdlZmRiZjIwMGU4YjZjNmY2M2QzNTY1YmVkNzc1ODI2NGU0ZjdjZDM3ZDdlNiJ9fX0="}]}}}},Tags:["stellarity.spirit_dagger.spirit","smithed.entity","smithed.strict"],Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:4144959,Glowing:1b}
team join stellarity.purple_glow @n[type=armor_stand,tag=stellarity.spirit_dagger.spirit]

summon interaction ~ ~-0.35 ~ {width:2.2f,height:2.2f,Tags:["stellarity.spirit_dagger.spirit","smithed.entity","smithed.strict"]}
summon marker ~ ~ ~ {Tags:["stellarity.spirit_dagger.spirit","stellarity.marker","smithed.entity","smithed.strict"]}

particle explosion ~ ~.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.shulker_bullet.hurt player @a[distance=0..] ~ ~ ~ 1 1
