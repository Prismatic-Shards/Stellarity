
    execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:bedrock
    execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_portal
    execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:wall_torch
    execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:torch
    execute in minecraft:the_end run fill -6 55 -6 6 75 6 air replace minecraft:end_stone

    function stellarity:structure/exit_portal/purge_sky

    execute in minecraft:the_end unless entity @e[type=marker,tag=stellarity.exit_portal] run summon marker 0.5 61 0.5 {Tags:["stellarity.exit_portal","stellarity.portal_deactivated","stellarity.marker","smithed.entity","smithed.strict"],CustomName:{"text":"Exit Portal"}}

    execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/deactivated/generate
    execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] as @e[type=marker,tag=stellarity.exit_portal,scores={stellarity.dragon.times_killed=1..},limit=1] positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/activated/generate
    execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] as @e[type=marker,tag=stellarity.exit_portal,scores={stellarity.dragon.times_killed=..0},limit=1] positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/deactivated/generate
    execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] unless score @e[type=marker,tag=stellarity.exit_portal,limit=1] stellarity.dragon.times_killed matches 0.. positioned 0.5 61 0.5 run function stellarity:structure/exit_portal/deactivated/generate

    execute in minecraft:the_end as @e[type=marker,tag=stellarity.exit_portal,limit=1] unless score #stellarity.post_gen.initialized stellarity.misc matches 1 run function stellarity:post_gen/initialize
