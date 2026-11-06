# {"text": "| ","color":"gray","bold":true}

tellraw @s {"text":"                                ","color":"gray","strikethrough":true,"bold":true}

$tellraw @s {"translate":"stellarity.config.$(score).title","color":"#C076E5","bold":true,"hover_event": {"action": "show_text","value": [{"text": "stellarity.config.$(score)","color":"#DFDFDF"},"\n",{"translate":"stellarity.config.click_to_edit","color":"#CEADD6"},"\n",{"translate":"stellarity.config.default","color":"#C8ADD6","with":[$(default)]}]},"click_event": {"action": "suggest_command","command": "/scoreboard players set #stellarity.config stellarity.config.$(score) $(suggested_value)"}}

tellraw @s " "

$tellraw @s [" ",{"translate":"stellarity.config.$(score).description","color":"#C8ADD6"}]

tellraw @s " "

$scoreboard players set #numerical stellarity.misc $(numerical)

$execute if score #numerical stellarity.misc matches 0 if score #stellarity.config stellarity.config.$(score) matches 1 run tellraw @s [{"text": "| ","color":"green","bold":true},{"text":"Enabled","color":"#91FF7B"}]
$execute if score #numerical stellarity.misc matches 0 if score #stellarity.config stellarity.config.$(score) matches 0 run tellraw @s [{"text": "| ","color":"red","bold":true},{"text":"Disabled","color":"#FF7B7B"}]

$execute if score #numerical stellarity.misc matches 1 run tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Current Value: ","color": "#EEEEEE","bold":false},{"score":{"name": "#stellarity.config","objective": "stellarity.config.$(score)"},"color": "#EEEEEE"}]
