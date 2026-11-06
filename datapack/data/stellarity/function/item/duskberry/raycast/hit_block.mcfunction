scoreboard players set #hit stellarity.misc 1

execute align xyz run summon area_effect_cloud ~.5 ~ ~.5 {ReapplicationDelay:20,Radius:0.5f,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["stellarity.duskberry_cloud","stellarity.area_effect_cloud","smithed.entity","smithed.strict"],potion_contents:{custom_effects:[{id:"minecraft:blindness",duration:720},{id:"minecraft:wither",duration:720}]}}
