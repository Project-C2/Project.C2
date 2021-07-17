data modify block 0 0 0 Items[0].tag.106_item set value 1

execute if score #106_slot_pos counter matches 0 run loot replace entity @s container.0 1 mine 0 0 0 air{inv_copy:1b}
execute if score #106_slot_pos counter matches 1 run loot replace entity @s container.1 1 mine 0 0 0 air{inv_copy:1b}
execute if score #106_slot_pos counter matches 2 run loot replace entity @s container.2 1 mine 0 0 0 air{inv_copy:1b}
execute if score #106_slot_pos counter matches 3 run loot replace entity @s container.3 1 mine 0 0 0 air{inv_copy:1b}
execute if score #106_slot_pos counter matches 4 run loot replace entity @s container.4 1 mine 0 0 0 air{inv_copy:1b}
execute if score #106_slot_pos counter matches -106 run loot replace entity @s weapon.offhand 1 mine 0 0 0 air{inv_copy:1b}



execute if entity @s[tag=!106-not-enderchest] if score #106_slot_pos counter matches 0 run item replace entity @s enderchest.0 from block 0 0 0 container.0
execute if entity @s[tag=!106-not-enderchest] if score #106_slot_pos counter matches 1 run item replace entity @s enderchest.1 from block 0 0 0 container.0
execute if entity @s[tag=!106-not-enderchest] if score #106_slot_pos counter matches 2 run item replace entity @s enderchest.2 from block 0 0 0 container.0
execute if entity @s[tag=!106-not-enderchest] if score #106_slot_pos counter matches 3 run item replace entity @s enderchest.3 from block 0 0 0 container.0
execute if entity @s[tag=!106-not-enderchest] if score #106_slot_pos counter matches 4 run item replace entity @s enderchest.4 from block 0 0 0 container.0

execute if entity @s[tag=106-not-enderchest] run tag @s remove 106-not-enderchest


data remove block 0 0 0 Items[]

scoreboard players reset #106_slot_pos