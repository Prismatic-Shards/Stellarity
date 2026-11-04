execute store result entity @s Rotation[0] float 0.1 store result score #Y bdlib.quaternion run scoreboard players get @s wormRotation.Y
scoreboard players operation #Y bdlib.quaternion /= #10 bdlib.const
scoreboard players operation #Y bdlib.quaternion *= #-1 bdlib.const
scoreboard players add @s wormRotation.X 35
execute store result entity @s Rotation[1] float 0.1 store result score #X bdlib.quaternion run scoreboard players operation @s wormRotation.X < #900 bdlib.const
scoreboard players operation #X bdlib.quaternion /= #10 bdlib.const