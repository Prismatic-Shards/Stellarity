# Initialize embedded bdlib and player_motion libraries
function stellarity_desert_scourge:bdlib/setup
function stellarity_desert_scourge:player_motion/internal/technical/load

scoreboard objectives add death deathCount

scoreboard objectives add math dummy

scoreboard objectives add const dummy
scoreboard players set *-1 const -1
scoreboard players set *0 const 0
scoreboard players set *2 const 2
scoreboard players set *5 const 5
scoreboard players set *7 const 7
scoreboard players set *8 const 8
scoreboard players set *9 const 9
scoreboard players set *10 const 10
scoreboard players set *15 const 15
scoreboard players set *16 const 16
scoreboard players set *20 const 20
scoreboard players set *100 const 100
scoreboard players set *180 const 180
scoreboard players set *225 const 225
scoreboard players set *360 const 360
scoreboard players set *720 const 720
scoreboard players set *3000 const 3000

scoreboard objectives add mobID dummy
execute unless score *cloud mobID matches -2147483648..2147483647 run scoreboard players set *cloud mobID 1

scoreboard objectives add playerID dummy
execute unless score *cloud playerID matches -2147483648..2147483647 run scoreboard players set *cloud playerID 1

scoreboard objectives add wormPart dummy
scoreboard objectives add wormZRot dummy
scoreboard objectives add wormTarget dummy
scoreboard objectives add wormSoundTimer dummy
scoreboard objectives add wormHealth dummy
scoreboard objectives add wormAttackCD dummy
scoreboard objectives add wormAttackTimer dummy
scoreboard objectives add wormDeathTimer dummy
scoreboard objectives add wormGlowing dummy

scoreboard objectives add wormRotation.Y dummy
scoreboard objectives add wormRotation.X dummy

scoreboard objectives add musicTimer_stellarity_ds dummy

scoreboard objectives add sandTornadoTimer dummy
scoreboard objectives add sandTornadoAdvancementTimer dummy
scoreboard objectives add sandTornadoSpawn dummy

scoreboard objectives add damageBlocked custom:damage_blocked_by_shield

scoreboard objectives add difficulty dummy
execute unless score *set difficulty matches 1 run function stellarity_desert_scourge:difficulty/default

scoreboard objectives add stellarity_desert_scourge.give.all trigger
scoreboard objectives add stellarity_desert_scourge.give.suspicious_horn trigger
scoreboard objectives add stellarity_desert_scourge.summon.sand_tornado trigger
scoreboard objectives add stellarity_desert_scourge.summon.desert_scourge trigger
scoreboard objectives add stellarity_desert_scourge.difficulty trigger

data modify storage stellarity_desert_scourge:const worm.z_rotation set value [[0f,0f,0f,1f],[0f,0f,0.087f,0.996f],[0f,0f,0.174f,0.985f],[0f,0f,0.259f,0.966f],[0f,0f,0.342f,0.940f],[0f,0f,0.423f,0.906f],[0f,0f,0.500f,0.866f],[0f,0f,0.574f,0.819f],[0f,0f,0.643f,0.766f],[0f,0f,0.707f,0.707f],[0f,0f,0.766f,0.643f],[0f,0f,0.819f,0.574f],[0f,0f,0.866f,0.500f],[0f,0f,0.906f,0.423f],[0f,0f,0.940f,0.342f],[0f,0f,0.966f,0.259f],[0f,0f,0.985f,0.174f],[0f,0f,0.996f,0.087f],[0f,0f,1f,0f],[0f,0f,-0.996f,0.087f],[0f,0f,-0.985f,0.174f],[0f,0f,-0.966f,0.259f],[0f,0f,-0.940f,0.342f],[0f,0f,-0.906f,0.423f],[0f,0f,-0.866f,0.500f],[0f,0f,-0.819f,0.574f],[0f,0f,-0.766f,0.643f],[0f,0f,-0.707f,0.707f],[0f,0f,-0.643f,0.766f],[0f,0f,-0.574f,0.819f],[0f,0f,-0.500f,0.866f],[0f,0f,-0.423f,0.906f],[0f,0f,-0.342f,0.940f],[0f,0f,-0.259f,0.966f],[0f,0f,-0.174f,0.985f],[0f,0f,-0.087f,0.996f]]

team add noCol
team modify noCol collisionRule never

summon item_display 0 -64 0 {UUID:[I;0,0,0,0]}
forceload add 0 0