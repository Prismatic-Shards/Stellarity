playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.6 2
#playsound minecraft:block.note_block.snare player @s ~ ~ ~ 0.6 0
playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.1 1.5

tag @s add stellarity.item.prismember.ready

execute anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-.35 ~ {width:0.7f,height:0.7f,response:true,Tags:["stellarity.prismember","smithed.entity","smithed.strict"]}
