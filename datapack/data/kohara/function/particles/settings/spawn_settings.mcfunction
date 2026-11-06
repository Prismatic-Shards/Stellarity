##Spawn settings

$data merge entity @s {Tags:["kohara.particles","kohara.particle.$(id)",$(state),"smithed.entity","smithed.strict"],billboard:"$(billboard)",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":'$(model)'}},transformation:[0.3f,0f,0f,0f,0f,0.3f,0f,0f,0f,0f,0.0000000001f,0f,0f,0f,0f,1f],teleport_duration:$(speed),view_range:32}

#execute store result score @s[tag=!spawned,tag=!falling,tag=!floating] kohara.particles.spread.pos run data get entity @s Pos[1] 1

$scoreboard players set @s[tag=!spawned] kohara.particles.despawn $(despawn_value)

# Better spread implementation
# Definitely less efficient in terms of performance, but it allows for both XZ and Y spread
  execute store result score @s kohara.particles.spread.x run random value 0..360
  execute store result score @s kohara.particles.spread.y run random value -45..45

# To enlarged int and back into the storage
  $data modify storage kohara:temp particles.spread.min set value $(spread_initial)d
  $data modify storage kohara:temp particles.spread.max set value $(spread_radius)d
  execute store result score #spread.min kohara.misc run data get storage kohara:temp particles.spread.min 100000
  execute store result score #spread.max kohara.misc run data get storage kohara:temp particles.spread.max 100000
  execute store result storage kohara:temp particles.spread.min int 1 run scoreboard players get #spread.min kohara.misc
  execute store result storage kohara:temp particles.spread.max int 1 run scoreboard players get #spread.max kohara.misc

function kohara:particles/settings/roll with storage kohara:temp particles.spread

scoreboard players set @s[tag=!spread,tag=!spawned] kohara.particles.display 0
scoreboard players set @s[tag=spread,tag=!spawned] kohara.particles.display 5

tag @s add spawned

function #kohara:particles/post_spawn
