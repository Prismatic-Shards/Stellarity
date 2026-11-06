forceload add ~ ~

scoreboard players set #continue stellarity.misc 1
execute unless block ~ ~ ~ #minecraft:beds run scoreboard players remove #continue stellarity.misc 1

execute if block ~ ~ ~ respawn_anchor[charges=1] run scoreboard players add #continue stellarity.misc 1
execute if block ~ ~ ~ respawn_anchor[charges=2] run scoreboard players add #continue stellarity.misc 1
execute if block ~ ~ ~ respawn_anchor[charges=3] run scoreboard players add #continue stellarity.misc 1
execute if block ~ ~ ~ respawn_anchor[charges=4] run scoreboard players add #continue stellarity.misc 1

execute if score #continue stellarity.misc matches 1.. as @p[tag=stellarity.book_of_return.teleport] run function stellarity:item/spellbooks/return/teleport/teleport_player
execute if score #continue stellarity.misc matches 0 run schedule function stellarity:item/spellbooks/return/teleport/locate_world_spawn 1t append

forceload remove ~ ~
kill @s
