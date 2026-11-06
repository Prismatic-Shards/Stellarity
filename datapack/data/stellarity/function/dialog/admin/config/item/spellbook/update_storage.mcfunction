execute if score #stellarity.config stellarity.config.enable_book_of_conveyance matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_conveyance"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_conveyance matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_conveyance"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_book_of_light matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_light"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_light matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_light"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_book_of_jinx matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_jinx"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_jinx matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_jinx"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_book_of_obstruct matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_obstruct"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_obstruct matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_obstruct"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_book_of_updraft matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_updraft"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_updraft matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_updraft"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_book_of_return matches 1 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_return"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_book_of_return matches 0 run data modify storage stellarity:temp stellarity.config.item.spellbook.dialog.inputs[{key:"book_of_return"}].options[1].initial set value false