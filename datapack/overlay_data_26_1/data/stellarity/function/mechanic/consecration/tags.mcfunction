# Is this inefficient? Yes
# Could it be better? Probably

data modify storage stellarity:temp consecration.nbt set from entity @s Item
data remove storage stellarity:temp consecration.item_tag

#
# START
#

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:oak_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pale_oak_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:birch_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:spruce_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:jungle_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:acacia_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dark_oak_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:mangrove_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:azalea_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:flowering_azalea_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.leaves"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:oak_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pale_oak_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:birch_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:spruce_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:jungle_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:acacia_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dark_oak_sapling"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sapling"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dead_bush"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.dead_bush"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:wither_rose"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.wither_rose"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pink_petals"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.pink_petals"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:wildflowers"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.wildflowers"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pointed_dripstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.pointed_dripstone"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pale_oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:birch_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:spruce_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:jungle_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dark_oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:acacia_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:mangrove_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.logs"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_pale_oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_birch_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_spruce_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_jungle_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_dark_oak_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_acacia_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_mangrove_log"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_logs"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pale_oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:birch_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:spruce_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:jungle_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dark_oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:acacia_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:mangrove_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.woods"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_pale_oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_birch_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_spruce_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_jungle_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_dark_oak_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_acacia_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stripped_mangrove_wood"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stripped_woods"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:iron_ingot"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.iron_ingot"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:ink_sac"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.ink_sac"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:glow_ink_sac"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.glow_ink_sac"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:brick"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.brick"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:nether_brick"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.nether_brick"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:honey_block"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.honey_block"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:slime_block"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.slime_block"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:torch"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.torch"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:soul_torch"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.soul_torch"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:lantern"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.lantern"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:soul_lantern"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.soul_lantern"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:campfire"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.campfire"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:soul_campfire"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.soul_campfire"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:glowstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.glowstone"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:shroomlight"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.shroomlight"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:chorus_flower"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.chorus_flower"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:spore_blossom"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.spore_blossom"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pumpkin"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.pumpkin"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:melon"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.melon"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pumpkin_seeds"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.pumpkin_seeds"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:melon_seeds"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.melon_seeds"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:obsidian"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.obsidian"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:crying_obsidian"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.crying_obsidian"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:blaze_rod"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.blaze_rod"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:breeze_rod"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.breeze_rod"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:azalea"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.azalea"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:flowering_azalea"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.flowering_azalea"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:azalea_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.azalea_leaves"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:flowering_azalea_leaves"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.flowering_azalea_leaves"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:gilded_blackstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.gilded_blackstone"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:nether_gold_ore"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.nether_gold_ore"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:compass"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.compass"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:clock"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.clock"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:charcoal"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.charcoal"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:coal"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.coal"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:calibrated_sculk_sensor"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.calibrated_sculk_sensor"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:music_disc_13"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.music_disc.13"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:music_disc_cat"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.music_disc.cat"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:music_disc_5"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.music_disc.5"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:music_disc_creator"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.music_disc.creator"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:music_disc_creator_music_box"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.music_disc.creator_music_box"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sand"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sand"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.block"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cut_sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.cut_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:chiseled_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.chiseled"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cut_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.cut"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.smooth_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_sandstone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.smooth_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.smooth"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sandstone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sandstone_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sandstone.wall"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:red_sand"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sand"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:red_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.block"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cut_red_sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.cut_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:chiseled_red_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.chiseled"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cut_red_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.cut"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:red_sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_red_sandstone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.smooth_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_red_sandstone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.smooth_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:smooth_red_sandstone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.smooth"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:red_sandstone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:red_sandstone_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.red_sandstone.wall"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:iron_helmet"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.iron_armor.helmet"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:iron_chestplate"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.iron_armor.chestplate"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:iron_leggings"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.iron_armor.leggings"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:iron_boots"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.iron_armor.boots"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_bricks"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_bricks"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_brick_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_brick_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_brick_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_brick_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:stone_brick_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.stone_brick_wall"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobblestone"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobblestone"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobblestone_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobblestone_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobblestone_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobblestone_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobblestone_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobblestone_wall"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_bricks"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_bricks"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_brick_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_brick_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_brick_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_brick_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:deepslate_brick_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.deepslate_brick_wall"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobbled_deepslate"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobbled_deepslate"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobbled_deepslate_slab"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobbled_deepslate_slab"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobbled_deepslate_stairs"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobbled_deepslate_stairs"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:cobbled_deepslate_wall"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.cobbled_deepslate_wall"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:fire_charge"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.fire_charge"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:wind_charge"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.wind_charge"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:rotten_flesh"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.rotten_flesh"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:feather"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.feather"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:turtle_scute"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.turtle_scute"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:armadillo_scute"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.armadillo_scute"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sticky_piston"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sticky_piston"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:dispenser"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.dispenser"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:ominous_trial_key"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.ominous_trial_key"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:ominous_trial_key","components":{"minecraft:custom_data":{"stellarity:item":"gilded_purpur_key"}}}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.gilded_purpur_key"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sculk_catalyst"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sculk_catalyst"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:sculk_shrieker"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.sculk_shrieker"

execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:ochre_froglight"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.ochre_froglight"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:verdant_froglight"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.verdant_froglight"
execute if data storage stellarity:temp {consecration:{nbt:{id:"minecraft:pearlescent_froglight"}}} run data modify storage stellarity:temp consecration.item_tag set value "stellarity.consecration.pearlescent_froglight"

#
# END
#

data modify storage stellarity:temp consecration.valid set value 0b
execute if data storage stellarity:temp consecration.item_tag run data modify storage stellarity:temp consecration.valid set value 1b

data modify entity @s Tags append from storage stellarity:temp consecration.item_tag

execute if data storage stellarity:temp consecration.item_tag run tag @s add stellarity.consecration.valid
tag @s add stellarity.consecration.tagged