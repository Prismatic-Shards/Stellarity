advancement revoke @a only stellarity:event/item/attack/spirit_dagger
tag @a remove stellarity.spirit_dagger.teleport
tag @a remove stellarity.spirit_dagger.raycast
tag @a remove stellarity.spirit_dagger.attacker
scoreboard players reset @a stellarity.item.spirit_dagger.consume_time
scoreboard players reset @a stellarity.item.spirit_dagger.until_consume_reset

function stellarity:util/tellraw/command {string:"fix_spirit_dagger.success",fallback:"Reset Spirit Dagger mechanics, tags and advancements for all players"}

function kohara:send_command_feedback/off
