## Called by 'items/main_marker.mcfunction'

# Conveyance
execute if entity @s[tag=stellarity.book_of_conveyance] run function stellarity:item/spellbooks/conveyance/loop

# Light
execute if entity @s[tag=stellarity.book_of_light.aura] run function stellarity:item/spellbooks/light/aura_loop

# Jinx
execute if entity @s[tag=stellarity.book_of_jinx] run function stellarity:item/spellbooks/jinx/loop

# Return
execute if entity @s[tag=stellarity.book_of_return] run function stellarity:item/spellbooks/return/loop
