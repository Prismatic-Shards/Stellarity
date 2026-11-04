## 
##  def get_offset(x,z):
##      i = (x * 3129871) xor (z * 116129781)
##      i = 42317861 * i * i + 11 * i
##      return ((((i // 65536 & 15) / 15.0) - 0.5) * 0.5, (((i // 16777216 & 15) / 15.0) - 0.5) * 0.5)

data modify storage stellarity_desert_scourge:bdlib_temp block.offsets append value {x:0f,z:0f,coords:[0, 0]}
execute store result storage stellarity_desert_scourge:bdlib_temp block.offsets[-1].coords[0] int 1 run scoreboard players get #X bdlib.block.offset
execute store result storage stellarity_desert_scourge:bdlib_temp block.offsets[-1].coords[1] int 1 run scoreboard players get #Z bdlib.block.offset

## i = ((x * 3129871)) xor ((z * 116129781))
execute store result score #IN1 bdlib.bitwise_ops run scoreboard players operation #X bdlib.block.offset *= #3129871 bdlib.const
execute store result score #IN2 bdlib.bitwise_ops run scoreboard players operation #Z bdlib.block.offset *= #116129781 bdlib.const
execute store result score #I2 bdlib.block.offset store result score #I bdlib.block.offset run function stellarity_desert_scourge:bdlib/bitwise_ops/xor/init

## i = 42317861 * i * i + 11*i
scoreboard players operation #I2 bdlib.block.offset *= #I2 bdlib.block.offset
scoreboard players operation #I2 bdlib.block.offset *= #42317861 bdlib.const
scoreboard players operation #I bdlib.block.offset *= #11 bdlib.const
execute store result score #OFFSET.X bdlib.block.offset store result score #OFFSET.Z bdlib.block.offset run \
    scoreboard players operation #I bdlib.block.offset += #I2 bdlib.block.offset

## x = (((i // 65536 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation #OFFSET.X bdlib.block.offset /= #65536 bdlib.const
scoreboard players operation #OFFSET.X bdlib.block.offset *= #268435456 bdlib.const
scoreboard players operation #OFFSET.X bdlib.block.offset /= #268435456 bdlib.const
execute if score #OFFSET.X bdlib.block.offset matches ..-1 run scoreboard players add #OFFSET.X bdlib.block.offset 16
scoreboard players operation #OFFSET.X bdlib.block.offset *= #10000000 bdlib.const
scoreboard players operation #OFFSET.X bdlib.block.offset /= #15 bdlib.const
scoreboard players remove #OFFSET.X bdlib.block.offset 5000000
execute store result storage stellarity_desert_scourge:bdlib_temp block.offset.x float .0000001 run scoreboard players operation #OFFSET.X bdlib.block.offset /= #2 bdlib.const
data modify storage stellarity_desert_scourge:bdlib_temp block.offsets[-1].x set from storage stellarity_desert_scourge:bdlib_temp block.offset.x

## z = (((i // 16777216 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation #OFFSET.Z bdlib.block.offset /= #16777216 bdlib.const
scoreboard players operation #OFFSET.Z bdlib.block.offset *= #268435456 bdlib.const
scoreboard players operation #OFFSET.Z bdlib.block.offset /= #268435456 bdlib.const
execute if score #OFFSET.Z bdlib.block.offset matches ..-1 run scoreboard players add #OFFSET.Z bdlib.block.offset 16
scoreboard players operation #OFFSET.Z bdlib.block.offset *= #10000000 bdlib.const
scoreboard players operation #OFFSET.Z bdlib.block.offset /= #15 bdlib.const
scoreboard players remove #OFFSET.Z bdlib.block.offset 5000000
execute store result storage stellarity_desert_scourge:bdlib_temp block.offset.z float .0000001 run scoreboard players operation #OFFSET.Z bdlib.block.offset /= #2 bdlib.const
data modify storage stellarity_desert_scourge:bdlib_temp block.offsets[-1].z set from storage stellarity_desert_scourge:bdlib_temp block.offset.z