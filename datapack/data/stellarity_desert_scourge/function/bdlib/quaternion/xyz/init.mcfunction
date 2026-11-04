##        BDLIB
##    quaternion/xyz/init
##
## INPUT - #X, #Y, #Z (bdlib.quaternion)
## OUTPUT - #Q.X, #Q.Y, #Q.Z, #Q.W (bdlib.quaternion), quaternion.out (storage stellarity_desert_scourge:bdlib_temp)
##
##
##    cos_x = cos(x * 0.5)
##    sin_x = sin(x * 0.5)
##    cos_y = cos(y * 0.5)
##    sin_y = sin(y * 0.5)
##    cos_z = cos(z * 0.5)
##    sin_z = sin(z * 0.5)
##    
##    q.x = sin_x * cos_y * cos_z - cos_x * sin_y * sin_z
##    q.y = cos_x * sin_y * cos_z + sin_x * cos_y * sin_z
##    q.z = cos_x * cos_y * sin_z - sin_x * sin_y * cos_z
##    q.w = cos_x * cos_y * cos_z + sin_x * sin_y * sin_z

execute store result score #IN bdlib.math.sin run scoreboard players operation #X bdlib.quaternion /= #2 bdlib.const
scoreboard players operation #IN bdlib.math.cos = #IN bdlib.math.sin
execute store result score #SIN_X bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/sin/init
execute store result score #COS_X bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/cos/init
execute store result score #IN bdlib.math.sin run scoreboard players operation #Y bdlib.quaternion /= #2 bdlib.const
scoreboard players operation #IN bdlib.math.cos = #IN bdlib.math.sin
execute store result score #SIN_Y bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/sin/init
execute store result score #COS_Y bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/cos/init
execute store result score #IN bdlib.math.sin run scoreboard players operation #Z bdlib.quaternion /= #2 bdlib.const
scoreboard players operation #IN bdlib.math.cos = #IN bdlib.math.sin
execute store result score #SIN_Z bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/sin/init
execute store result score #COS_Z bdlib.quaternion run function stellarity_desert_scourge:bdlib/math/trigonometry/cos/init

data modify storage stellarity_desert_scourge:bdlib_temp quaternion.out set value [0f,0f,0f,0f]

scoreboard players operation #Q.X bdlib.quaternion = #SIN_X bdlib.quaternion
scoreboard players operation #Q.X bdlib.quaternion *= #COS_Y bdlib.quaternion
scoreboard players operation #Q.X bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #Q.X bdlib.quaternion *= #COS_Z bdlib.quaternion
scoreboard players operation #Q.X bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion = #COS_X bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Y bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Z bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
execute store result storage stellarity_desert_scourge:bdlib_temp quaternion.out[0] float 0.0001 run scoreboard players operation #Q.X bdlib.quaternion -= #TEMP bdlib.quaternion

scoreboard players operation #Q.Y bdlib.quaternion = #COS_X bdlib.quaternion
scoreboard players operation #Q.Y bdlib.quaternion *= #SIN_Y bdlib.quaternion
scoreboard players operation #Q.Y bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #Q.Y bdlib.quaternion *= #COS_Z bdlib.quaternion
scoreboard players operation #Q.Y bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion = #SIN_X bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion *= #COS_Y bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Z bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
execute store result storage stellarity_desert_scourge:bdlib_temp quaternion.out[1] float 0.0001 run scoreboard players operation #Q.Y bdlib.quaternion += #TEMP bdlib.quaternion

scoreboard players operation #Q.Z bdlib.quaternion = #COS_X bdlib.quaternion
scoreboard players operation #Q.Z bdlib.quaternion *= #COS_Y bdlib.quaternion
scoreboard players operation #Q.Z bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #Q.Z bdlib.quaternion *= #SIN_Z bdlib.quaternion
scoreboard players operation #Q.Z bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion = #SIN_X bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Y bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion *= #COS_Z bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
execute store result storage stellarity_desert_scourge:bdlib_temp quaternion.out[2] float 0.0001 run scoreboard players operation #Q.Z bdlib.quaternion -= #TEMP bdlib.quaternion

scoreboard players operation #Q.W bdlib.quaternion = #COS_X bdlib.quaternion
scoreboard players operation #Q.W bdlib.quaternion *= #COS_Y bdlib.quaternion
scoreboard players operation #Q.W bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #Q.W bdlib.quaternion *= #COS_Z bdlib.quaternion
scoreboard players operation #Q.W bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion = #SIN_X bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Y bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
scoreboard players operation #TEMP bdlib.quaternion *= #SIN_Z bdlib.quaternion
scoreboard players operation #TEMP bdlib.quaternion /= #10000 bdlib.const
execute store result storage stellarity_desert_scourge:bdlib_temp quaternion.out[3] float 0.0001 run scoreboard players operation #Q.W bdlib.quaternion += #TEMP bdlib.quaternion