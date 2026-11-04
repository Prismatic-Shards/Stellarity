execute unless entity @e[type=marker,tag=worm.point,distance=..256,limit=1] summon marker run function stellarity_desert_scourge:worm_ai/head/get_player_pos
execute if entity @e[type=marker,tag=worm.point,distance=..256,limit=1] summon marker facing entity @e[type=marker,tag=worm.point,distance=..256,limit=1] feet run function stellarity_desert_scourge:worm_ai/head/get_target_rotation

scoreboard players operation #IN bdlib.math.sign = *target wormRotation.Y
scoreboard players operation #IN bdlib.math.sign -= @s wormRotation.Y
execute if score #IN bdlib.math.sign matches 1801.. run scoreboard players remove #IN bdlib.math.sign 3600
execute if score #IN bdlib.math.sign matches ..-1801 run scoreboard players add #IN bdlib.math.sign 3600
function stellarity_desert_scourge:bdlib/math/sign/init
scoreboard players operation #OUT bdlib.math.sign *= #50 bdlib.const
execute store result score #Y bdlib.quaternion store result entity @s Rotation[0] float 0.1 run scoreboard players operation @s wormRotation.Y += #OUT bdlib.math.sign
scoreboard players operation #Y bdlib.quaternion /= #10 bdlib.const
scoreboard players operation #Y bdlib.quaternion *= #-1 bdlib.const

scoreboard players operation #IN bdlib.math.sign = *target wormRotation.X
scoreboard players operation #IN bdlib.math.sign -= @s wormRotation.X
execute if score #IN bdlib.math.sign matches 1801.. run scoreboard players remove #IN bdlib.math.sign 3600
execute if score #IN bdlib.math.sign matches ..-1801 run scoreboard players add #IN bdlib.math.sign 3600
function stellarity_desert_scourge:bdlib/math/sign/init
scoreboard players operation #OUT bdlib.math.sign *= #100 bdlib.const
execute store result score #X bdlib.quaternion store result entity @s Rotation[1] float 0.1 run scoreboard players operation @s wormRotation.X += #OUT bdlib.math.sign
scoreboard players operation #X bdlib.quaternion /= #10 bdlib.const