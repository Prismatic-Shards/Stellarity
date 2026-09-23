# {"text": "| ","color":"gray","bold":true}
# {"text": "⭐","color":"gold","bold":true}
# 🌍 🔨 ⬛ ⚙ 📕 💬 ⭐ ❓ ❗
# ▪

tellraw @s {"text": "| ","color":"gray","bold":true}

tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "⭐","color":"gold","bold":true},\
{"text": " Stellarity ","bold":true,"color":"#ff76e1"},\
{"text": "⭐","color":"gold","bold":true},\
{"text":" has succesfully loaded!","bold":false,"color":"#DF9BDC"}\
]

tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "     Cʀᴇᴀᴛᴇᴅ ʙʏ ","bold":false,"color":"#BB80B9","italic":true},\
{"text":"ᴋᴏʜᴀʀᴀ","bold":true,"color":"#AA5096","italic":true},\
]

tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "     Mᴀɪɴᴛᴀɪɴᴇᴅ ʙʏ ","bold":false,"color":"#E27E13","italic":true},\
{"text":"ᴘʀɪѕᴍᴀᴛɪᴄ ѕʜᴀʀᴅѕ","bold":true,"color":"#FF76D0","italic":true}\
]

tellraw @s {"text": "| ","color":"gray","bold":true}

function stellarity:tellraw/motd
tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "' ","color":"yellow","bold":false},\
{"nbt":"motd","storage":"stellarity:temp","interpret":false},\
{"text": " '","color":"yellow","bold":false}\
]

tellraw @s {"text": "| ","color":"gray","bold":true}

## Useful Links
  tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Usᴇғᴜʟ Lɪɴᴋs","color":"gray","bold":false,"italic":true}]
  tellraw @s [\
  {"text": "| ","color":"gray","bold":true},\
  {"text":" 📕 ","color":"#FF5D16","bold":true},\
  {"text":"Wiki","color":"#FBA957","bold":false,"click_event": {"action": "open_url","url": "https://prismaticshards.wiki.gg/wiki/Stellarity"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}},\
  {"text": " ▪ ","color":"gray","bold":true},\
  {"text":"💬 ","color":"#5865F2","bold":true},\
  {"text":"Discord","color":"#589CF2","bold":false,"click_event": {"action": "open_url","url": "http://discord.prismaticshards.xyz"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}},\
  {"text": " ▪ ","color":"gray","bold":true},\
  {"text":"⚙ ","color":"#C2C2C2","bold":true},\
  {"text":"Configuration","color":"#DCDCDC","bold":false,"click_event": {"action": "run_command","command": "/dialog show @s stellarity:config/config"},"hover_event": {"action": "show_text","value":{"text":"Click to edit"}}}\
  ]

tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text":" ⭐ ","color":"#9a78f8","bold":true},\
{"text":"Translations","color":"#cbb8fd","bold":false,"click_event": {"action": "open_url","url": "https://github.com/Prismatic-Shards/translations"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}},\
{"text": " ▪ ","color":"gray","bold":true},\
{"text":"❓ ","color":"#E70000","bold":true},\
{"text":"FAQ","color":"white","bold":false,"click_event": {"action": "open_url","url": "https://prismaticshards.wiki.gg/wiki/Stellarity"},"hover_event": {"action": "show_text","value":{"text":"Click to read"}}},{"text": " ▪ ","color":"gray","bold":true},{"text":"🖥 ","color":"#01E0FF","bold":true},\
{"text":"BisectHosting","color":"#FFFFFF","bold":false,"click_event": {"action": "open_url","url": "https://bisecthosting.com/kohara"},"hover_event": {"action": "show_text","value":{"text":"Stellarity is partnered with BisectHosting!\n\nNeed a server?\nUse code 'kohara' for 25%% off your first month!"}}}\
]

tellraw @s {"text": "| ","color":"gray","bold":true}

## Project Pages
  tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Pʀᴏᴊᴇᴄᴛ Pᴀɢᴇ","color":"gray","bold":false,"italic":true}]

# GitHub
  tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" 🐱 ","color":"#797979","bold":true},{"text":"GitHub","color":"#ffffff","bold":false,"click_event": {"action": "open_url","url": "https://github.com/Prismatic-Shards/Stellarity"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}}]

# CurseForge
  tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" 🔨 ","color":"#D85831","bold":true},{"text":"CurseForge","color":"#FF683A","bold":false,"click_event": {"action": "open_url","url": "https://curseforge.com/minecraft/mc-mods/stellarity"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}}]

# Modrinth
  tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" ⏺ ","color":"#17B556","bold":true},{"text":"Modrinth","color":"#21FF79","bold":false,"click_event": {"action": "open_url","url": "https://modrinth.com/datapack/stellarity"},"hover_event": {"action": "show_text","value":{"text":"Click to visit"}}}]

tellraw @s {"text": "| ","color":"gray","bold":true}

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
