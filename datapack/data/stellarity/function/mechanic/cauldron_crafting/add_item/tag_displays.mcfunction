# What this pretty much does is simply add a tag 'stellarity.brewing.X',
# where X is the total amount of items already put inside,
# to both the Item Display and Interaction.
# Only one such tag will be present at a time, e.g.
# 'stellarity.brewing.1', 'stellarity.brewing.3'
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.1] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:1,type:"item_display"}
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.2] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:2,type:"item_display"}
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.3] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:3,type:"item_display"}
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.4] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:4,type:"item_display"}
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.5] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:5,type:"item_display"}
execute unless entity @e[type=item_display,distance=..1.5,tag=stellarity.brewing.6] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:6,type:"item_display"}

execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.1] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:1,type:"interaction"}
execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.2] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:2,type:"interaction"}
execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.3] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:3,type:"interaction"}
execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.4] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:4,type:"interaction"}
execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.5] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:5,type:"interaction"}
execute unless entity @e[type=interaction,distance=..1.5,tag=stellarity.brewing.6] run \
	function stellarity:mechanic/cauldron_crafting/add_item/add_tag {count:6,type:"interaction"}
