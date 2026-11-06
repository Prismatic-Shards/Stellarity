# Timer
  scoreboard players add @s stellarity.dragon.respawn_animation_progress 1

# Cancel animation if End Crystals are missing during initial podium charge (1..200)
  execute if score @s stellarity.dragon.respawn_animation_progress matches 1..200 unless score #respawn_crystal_count stellarity.misc matches 4 run function stellarity:entity/dragon/spawn/cancel

execute if score @s stellarity.dragon.respawn_animation_progress matches 1 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/respawn_crystal/prepare_for_anim
execute if score @s stellarity.dragon.respawn_animation_progress matches 1 as @a[distance=..32] at @s run playsound minecraft:entity.blaze.shoot block @s ~ ~ ~ 0.33 0.9
execute if score @s stellarity.dragon.respawn_animation_progress matches 1 as @a[distance=..32] at @s run playsound minecraft:entity.blaze.shoot block @s ~ ~ ~ 0.33 0.7

execute if score #stellarity.config stellarity.config.enable_dragon_screenshake matches 1 \
as @a[distance=..64] run tag @s add stellarity.dragon.screenshake

execute if score @s stellarity.dragon.respawn_animation_progress matches 100 run function stellarity:entity/dragon/spawn/proper_start

# Visual effects from cosmetic system
execute if score @s stellarity.dragon.respawn_animation_progress matches 100..619 in minecraft:the_end positioned 0 65 0 run function ste_cos:fresh_visual/earthquake_tick

# Enchant particles
  execute if score @s stellarity.dragon.respawn_animation_progress matches ..600 run particle enchant 0 63 0 0 0 0 10 5 normal
  execute if score @s stellarity.dragon.respawn_animation_progress matches ..600 run particle portal 0 63 0 0 0 0 10 5 normal

# Dragon heart model, amethysts orbit, and vortex sleeves
execute if score @s stellarity.dragon.respawn_animation_progress matches 130 run function ste_cos:fresh_visual/heart_spawn
execute if score @s stellarity.dragon.respawn_animation_progress matches 130 run function ste_cos:fresh_visual/shockwave_init
execute if score @s stellarity.dragon.respawn_animation_progress matches 130..619 run function ste_cos:fresh_visual/heart_tick
execute if score @s stellarity.dragon.respawn_animation_progress matches 140..580 run function ste_cos:fresh_visual/tornado_tick
execute if score @s stellarity.dragon.respawn_animation_progress matches 230..579 run function ste_cos:fresh_visual/tether_ray_draw
execute if score @s stellarity.dragon.respawn_animation_progress matches 1..619 as @e[type=minecraft:end_crystal] at @s run function ste_cos:fresh_visual/crystal_anim_aura

# Crystal loop
  execute if score @s stellarity.dragon.respawn_animation_progress matches 130 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/0

execute if score @s stellarity.dragon.respawn_animation_progress matches 200 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/1
execute if score @s stellarity.dragon.respawn_animation_progress matches 230 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/2
execute if score @s stellarity.dragon.respawn_animation_progress matches 260 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/3
execute if score @s stellarity.dragon.respawn_animation_progress matches 290 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/4
execute if score @s stellarity.dragon.respawn_animation_progress matches 320 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/5
execute if score @s stellarity.dragon.respawn_animation_progress matches 350 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/6
execute if score @s stellarity.dragon.respawn_animation_progress matches 380 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/7
execute if score @s stellarity.dragon.respawn_animation_progress matches 410 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/8
execute if score @s stellarity.dragon.respawn_animation_progress matches 440 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/9
execute if score @s stellarity.dragon.respawn_animation_progress matches 470 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/10

execute if score @s stellarity.dragon.respawn_animation_progress matches 500 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run function stellarity:entity/dragon/spawn/crystal_beam/0

# place crystal
  execute if score @s stellarity.dragon.respawn_animation_progress matches 230 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal 63 101 0 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 260 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal 50 122 36 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 290 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal 18 95 59 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 320 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal -19 107 59 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 350 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal -51 106 36 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 380 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal -63 94 0 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 410 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal -51 101 -39 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 440 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal -19 97 -60 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 470 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal 18 88 -60 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}
  execute if score @s stellarity.dragon.respawn_animation_progress matches 500 as @e[type=minecraft:end_crystal,distance=..5,tag=stellarity.respawn_crystal] run summon minecraft:end_crystal 50 96 -39 {ShowBottom:1b,Glowing:1b,Tags:["stellarity.new_crystal"],beam_target:[I;0,98,0]}

# Crystal cages
  execute if score @s stellarity.dragon.respawn_animation_progress matches 290 positioned 18 94 59 run function stellarity:entity/dragon/spawn/repair_cage
  execute if score @s stellarity.dragon.respawn_animation_progress matches 380 positioned -63 93 0 run function stellarity:entity/dragon/spawn/repair_cage
  execute if score @s stellarity.dragon.respawn_animation_progress matches 440 positioned -19 96 -60 run function stellarity:entity/dragon/spawn/repair_cage
  execute if score @s stellarity.dragon.respawn_animation_progress matches 500 positioned 50 95 -39 run function stellarity:entity/dragon/spawn/repair_cage

# Crystal replacement
  execute as @e[type=minecraft:end_crystal,tag=stellarity.new_crystal] at @s run function stellarity:entity/dragon/spawn/replace_crystal

# Crystal aura during animation
  execute if score @s stellarity.dragon.respawn_animation_progress matches 230..619 as @e[type=minecraft:end_crystal] at @s run particle dust_color_transition{from_color:[0.95,0.2,1.0],scale:1.2,to_color:[0.35,0.0,0.6]} ~ ~1.2 ~ 0.3 0.3 0.3 0.02 2 force @a

# Beam at the end
  execute if score @s stellarity.dragon.respawn_animation_progress matches 531 run playsound minecraft:entity.warden.sonic_charge block @a ~ ~ ~ 64.0 0.50
  execute if score @s stellarity.dragon.respawn_animation_progress matches 590 run setblock 0 63 0 end_gateway
  execute if score @s stellarity.dragon.respawn_animation_progress matches 590 positioned 0 66 0 run function stellarity:entity/dragon/spawn/beam/shoot
  execute if score @s stellarity.dragon.respawn_animation_progress matches 590 in minecraft:the_end positioned 0 65 0 run function ste_cos:fresh_visual/portal_crystals_pulse_start
  execute as @e[type=marker,tag=stellarity.dragon_respawn.beam] at @s run function stellarity:entity/dragon/spawn/beam/loop

# Pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 120 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 150 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 180 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 210 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 240 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 270 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 290 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 310 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 330 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 350 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 370 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 390 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 410 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 425 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 440 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 455 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 470 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 485 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 500 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 510 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 520 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 530 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 540 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 545 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 550 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 555 run function stellarity:entity/dragon/spawn/pulse
  execute if score @s stellarity.dragon.respawn_animation_progress matches 560 run function stellarity:entity/dragon/spawn/pulse

# Culmination visuals
  execute if score @s stellarity.dragon.respawn_animation_progress matches 580 run function ste_cos:fresh_visual/culmination_start
  execute if score @s stellarity.dragon.respawn_animation_progress matches 600 run function ste_cos:fresh_visual/culmination_warp
  execute if score @s stellarity.dragon.respawn_animation_progress matches 620 run function ste_cos:fresh_visual/culmination_roar
  execute if score @s stellarity.dragon.respawn_animation_progress matches 620 run function stellarity:entity/dragon/spawn/respawn_finish
