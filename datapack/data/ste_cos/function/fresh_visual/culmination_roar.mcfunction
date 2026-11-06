# ste_cos:fresh_visual/culmination_roar


playsound entity.ender_dragon.growl master @a 0 99 0 1000 0.85
playsound entity.warden.sonic_boom master @a 0 99 0 1000 0.75
playsound entity.warden.roar master @a 0 99 0 1000 0.9
playsound block.amethyst_block.resonate master @a 0 99 0 1000 0.5
playsound entity.illusioner.prepare_blindness master @a 0 99 0 1000 0.7

particle explosion_emitter 0 99 0 0 0 0 0 6 force @a
particle sonic_boom 0 99 0 0 0 0 0 3 force @a
particle flash{color:[0.95,0.35,1.0,1.0]} 0 99 0 0 0 0 0 2 force @a
particle flash{color:[0.60,0.05,0.90,1.0]} 0 99 0 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[1.0,0.3,1.0],scale:4.0,to_color:[0.1,0.0,0.4]} 0 99 0 4 4 4 0.5 250 force @a
particle end_rod 0 99 0 3 3 3 0.4 150 force @a
particle electric_spark 0 99 0 3 3 3 0.3 100 force @a

function ste_cos:fresh_visual/heart_absorb_init
