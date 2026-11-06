advancement revoke @s only stellarity:event/item/put_satchel_of_voids_in_item_frame

execute as @e[type=#kohara:item_frames,tag=!stellarity.satchel_of_voids.checked] if items entity @s container.0 *[custom_data~{"stellarity:item":"satchel_of_voids"}] at @s run function stellarity:item/satchel_of_voids/item_frame/as_item_frame
