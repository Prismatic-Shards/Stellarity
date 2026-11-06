fill ~ ~ ~ ~ ~ ~ end_portal_frame[eye=false,facing=north] replace end_portal_frame[eye=true,facing=north]
fill ~ ~ ~ ~ ~ ~ end_portal_frame[eye=false,facing=east] replace end_portal_frame[eye=true,facing=east]
fill ~ ~ ~ ~ ~ ~ end_portal_frame[eye=false,facing=south] replace end_portal_frame[eye=true,facing=south]
fill ~ ~ ~ ~ ~ ~ end_portal_frame[eye=false,facing=west] replace end_portal_frame[eye=true,facing=west]

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..10] run summon item ~ ~.5 ~ {Item:{id:"ender_eye",count:1b},PickupDelay:10,Age:0,Motion:[0d,0.2d,0d]} 
