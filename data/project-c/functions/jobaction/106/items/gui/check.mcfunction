execute unless data entity @s {Inventory:[{Slot:27b,tag:{106_gui_item:1}}]} run scoreboard players set #106-tab counter_1 1
execute unless data entity @s {Inventory:[{Slot:28b,tag:{106_gui_item:1}}]} run scoreboard players set #106-tab counter_1 2
execute unless data entity @s {Inventory:[{Slot:29b,tag:{106_gui_item:1}}]} run scoreboard players set #106-tab counter_1 3
execute if score #106-tab counter_1 matches 1..3 unless score #106-tab counter_1 = @s counter_6 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #106-tab counter_1 matches 1..3 unless score #106-tab counter_1 = @s counter_6 run scoreboard players operation @s counter_6 = #106-tab counter_1
execute unless score #106-tab counter_1 matches 1..3 if score @s counter_6 matches 1 run function project-c:jobaction/106/items/gui/weapon/check
execute unless score #106-tab counter_1 matches 1..3 if score @s counter_6 matches 2 run function project-c:jobaction/106/items/gui/support/check
execute unless score #106-tab counter_1 matches 1..3 if score @s counter_6 matches 3 run function project-c:jobaction/106/items/gui/skill/check
scoreboard players reset #106-tab