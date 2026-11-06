$tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"$(command)","color": "#C076E5","bold":false,"click_event":{"action": "suggest_command","value": "/function stellarity:_cmd/$(command)"},"hover_event": {"action": "show_text","value": [{"text": "/function stellarity:_cmd/$(command)","color":"#DFDFDF"},"\n",{"text": "Click to run","color":"#CEADD6"}]}}]

$tellraw @s {"text":"    $(description)","color":"#C8ADD6"}
