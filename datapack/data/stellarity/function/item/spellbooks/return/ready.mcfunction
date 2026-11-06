playsound stellarity:item.cooldown_end player @s ~ ~ ~

title @s actionbar {"translate":"message.stellarity.spellbook_ready","color":"dark_purple","extra":[" ", {"translate":"item.stellarity.book_of_return"}]}

# Failsafe
  tag @s remove stellarity.book_of_return.in_animation
  tag @s remove stellarity.book_of_return.teleport
