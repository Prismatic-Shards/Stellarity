# Spark
  $summon item_display ~ ~ ~ {item:{id:"stick",components:{"item_model":"stellarity:_particle/prismatic_punch/spark","minecraft:custom_model_data":{floats:[0],colors:[16777215]}}},\
  billboard:"center",Tags:["stellarity.prismatic_punch.explosion","stellarity.prismatic_punch.explosion.spark"],\
  transformation:[$(size),0f,0f,0f,0f,$(size),0f,0f,0f,0f,$(size),0.05f,0f,0f,0f,1f],\
  brightness:{block:15,sky:15}}

# Fireball
  $summon item_display ~ ~ ~ {item:{id:"stick",components:{"item_model":"stellarity:_particle/prismatic_punch/fireball","minecraft:custom_model_data":{floats:[0],colors:[16777215]}}},\
  billboard:"center",Tags:["stellarity.prismatic_punch.explosion","stellarity.prismatic_punch.explosion.fireball"],\
  transformation:[$(size),0f,0f,0f,0f,$(size),0f,0f,0f,0f,$(size),0f,0f,0f,0f,1f],\
  brightness:{block:15,sky:15}}

# Shockwave
  $summon item_display ~ ~ ~ {item:{id:"stick",components:{"item_model":"stellarity:_particle/prismatic_punch/shockwave","minecraft:custom_model_data":{floats:[0],colors:[16777215]}}},\
  billboard:"fixed",Tags:["stellarity.prismatic_punch.explosion","stellarity.prismatic_punch.explosion.shockwave"],Rotation:[0f,-90f],\
  transformation:[$(size_shockwave),0f,0f,0f,0f,$(size_shockwave),0f,0f,0f,0f,$(size_shockwave),0f,0f,0f,0f,1f],\
  brightness:{block:15,sky:15}}
