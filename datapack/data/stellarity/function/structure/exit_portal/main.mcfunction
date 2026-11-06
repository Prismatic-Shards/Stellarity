
tag @e[type=marker,tag=stellarity.exit_portal,limit=1] add stellarity.primary_portal
kill @e[type=marker,tag=stellarity.exit_portal,tag=!stellarity.primary_portal]
tag @e[type=marker,tag=stellarity.primary_portal] remove stellarity.primary_portal

execute in minecraft:the_end if block 0 62 1 minecraft:wall_torch run function stellarity:structure/exit_portal/force_init
execute in minecraft:the_end if block 0 60 4 minecraft:end_stone run function stellarity:structure/exit_portal/force_init

execute in minecraft:the_end if block 0 270 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end if block 0 260 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end if block 0 255 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end if block 0 240 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end if block 0 200 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end unless block 0 255 0 air unless block 0 255 0 dirt run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end unless block 0 265 0 air unless block 0 265 0 dirt run function stellarity:structure/exit_portal/purge_sky

          execute if entity @s[tag=stellarity.portal_deactivated] run function stellarity:structure/exit_portal/deactivated/animation_no_dragon
          execute if entity @s[tag=stellarity.portal_deactivated.spawn_dragon] run function stellarity:structure/exit_portal/deactivated/animation

          execute if entity @p[predicate=stellarity:location/dragons_den/in_main_area] if entity @s[tag=stellarity.portal_activated] unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] run function stellarity:structure/exit_portal/activated/animation

            execute if score #stellarity.config stellarity.config.enable_ender_dragon matches 1 unless entity @e[type=minecraft:ender_dragon,distance=..300] run function stellarity:entity/dragon/spawn/conditions
              execute if entity @s[tag=stellarity.respawn_dragon] run function stellarity:entity/dragon/spawn/animation

              execute if entity @s[tag=stellarity.in_dragon_fight] unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon,distance=..300] run function stellarity:structure/exit_portal/dragon/presence

            execute unless score @s[tag=!stellarity.in_dragon_fight] stellarity.dragon.times_killed matches 1.. run function stellarity:entity/dragon/spawn/respawn_crystal/illumnate_spot

                execute unless score #stellarity.post_gen.initialized stellarity.misc matches 1 if entity @s[tag=!stellarity.post_gen.initialized] in minecraft:the_end run function stellarity:post_gen/initialize

                execute if entity @s[tag=stellarity.respawn_dragon] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:entity/dragon/spawn/screenshake/tick_up
                execute if entity @s[tag=!stellarity.respawn_dragon] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:entity/dragon/spawn/screenshake/tick_down

              execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run function stellarity:entity/dragon/ash
