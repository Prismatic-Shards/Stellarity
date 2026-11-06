kill @e[type=end_crystal,tag=!stellarity.new_crystal,sort=nearest,distance=..7]

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle flash{color:[0.75,0.20,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[0.8,0.1,1.0],scale:2.0,to_color:[0.2,0.0,0.5]} ~ ~ ~ 0.5 0.5 0.5 0.1 25 force @a

playsound minecraft:entity.generic.explode block @a ~ ~ ~ 32.0 0.70
playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 32.0 0.70

particle flash{color:[0.70,0.15,0.95,1.0]} ~ ~1.8 ~ 0 0 0 0 1 force @a
particle dust_color_transition{from_color:[0.3,0.85,1.0],scale:2.0,to_color:[0.7,0.1,0.9]} ~ ~1.8 ~ 0.5 0.5 0.5 0.05 20 force @a
particle dragon_breath ~ ~1.8 ~ 0.3 0.3 0.3 0.04 12 force @a

playsound block.respawn_anchor.charge block @a ~ ~ ~ 48.0 0.65
playsound entity.illusioner.cast_spell block @a ~ ~ ~ 48.0 0.70

function ste_cos:fresh_visual/tower_tether_launch

tag @s remove stellarity.new_crystal
