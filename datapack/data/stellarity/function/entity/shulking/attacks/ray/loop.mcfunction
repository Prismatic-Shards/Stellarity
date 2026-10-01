
tp ^ ^ ^0.75
$summon evoker_fangs ~ ~ ~ {Owner:$(UUID),Warmup:30}
particle block_marker{block_state:"red_shulker_box"} ~ ~ ~ 0 0 0 0 1

scoreboard players remove @s stellarity.live_time 1
execute if score @s stellarity.live_time matches ..0 run kill @s
