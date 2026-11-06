# Player interacts with fallen Empress of Light corpse
playsound stellarity:misc.dream_enter player @s ~ ~ ~ 1.0 1.2
playsound block.respawn_anchor.charge player @s ~ ~ ~ 0.5 1.4

particle end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.05 15

title @s actionbar [{"text":"[","color":"gray"},{"translate":"entity.stellarity.empress_of_light","color":"#ffea2f"},{"text":"] ","color":"gray"},{"translate":"entity.stellarity.empress_of_light.corpse_interact","italic":true,"color":"#fff38a"}]
