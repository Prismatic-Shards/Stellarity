data merge entity @s {Glowing:1b,ShowBottom:1b,Invulnerable:1b}

summon interaction ~ ~-0.2 ~ {Tags:["stellarity.end_city.crystal","smithed.entity","smithed.strict"],width:2.4f,height:2.4f,response:1b}
summon marker ~ ~ ~ {Tags:["stellarity.end_city.crystal","stellarity.marker","smithed.entity","smithed.strict"]}

tag @s add stellarity.end_city.crystal

team join stellarity.purple_glow @s
