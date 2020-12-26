#スキルSetup





scoreboard players operation #106_select_skill counter = @s counter_6
scoreboard players operation #106_select_skill counter %= #100 counter

execute unless data entity @s Inventory[{Slot:35b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 4
execute unless data entity @s Inventory[{Slot:33b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 3
execute unless data entity @s Inventory[{Slot:31b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 2
execute unless data entity @s Inventory[{Slot:29b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 1
execute unless data entity @s Inventory[{Slot:27b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 -10


execute if score #106_skill counter_1 matches 4 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #106_skill counter_1 matches -10 run scoreboard players reset #106_skill counter_1
execute if score #106_skill counter_1 matches 1 if score @s counter_3 = #106_select_skill counter run scoreboard players reset #106_skill counter_1
execute if score #106_skill counter_1 matches 2 if score @s counter_4 = #106_select_skill counter run scoreboard players reset #106_skill counter_1
execute if score #106_skill counter_1 matches 3 if score @s counter_5 = #106_select_skill counter run scoreboard players reset #106_skill counter_1



execute if score #106_skill counter_1 matches 1..3 run tag @s add 106_SSNT

execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 1 if score @s counter_4 = #106_select_skill counter run scoreboard players operation @s counter_4 = @s counter_3
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 1 if score @s counter_5 = #106_select_skill counter run scoreboard players operation @s counter_5 = @s counter_3
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 1 unless score @s counter_3 = #106_select_skill counter run tag @s add 106_SSNT-P
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 1 unless score @s counter_3 = #106_select_skill counter run scoreboard players operation @s counter_3 = #106_select_skill counter

execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 2 if score @s counter_3 = #106_select_skill counter run scoreboard players operation @s counter_3 = @s counter_4
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 2 if score @s counter_5 = #106_select_skill counter run scoreboard players operation @s counter_5 = @s counter_4
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 2 unless score @s counter_4 = #106_select_skill counter run tag @s add 106_SSNT-P
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 2 unless score @s counter_4 = #106_select_skill counter run scoreboard players operation @s counter_4 = #106_select_skill counter

execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 3 if score @s counter_3 = #106_select_skill counter run scoreboard players operation @s counter_3 = @s counter_5
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 3 if score @s counter_4 = #106_select_skill counter run scoreboard players operation @s counter_4 = @s counter_5
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 3 unless score @s counter_5 = #106_select_skill counter run tag @s add 106_SSNT-P
execute if entity @s[tag=106_SSNT] if score #106_skill counter_1 matches 3 unless score @s counter_5 = #106_select_skill counter run scoreboard players operation @s counter_5 = #106_select_skill counter
execute if entity @s[tag=106_SSNT,tag=106_SSNT-P] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=106_SSNT,tag=106_SSNT-P] run scoreboard players set @s drop2 1
execute if entity @s[tag=106_SSNT,tag=106_SSNT-P] run tag @s add 106_skill_no_drop
execute if entity @s[tag=106_SSNT] run tag @s remove 106_SSNT
execute if entity @s[tag=106_SSNT-P] run tag @s remove 106_SSNT-P


execute if score #106_skill counter_1 matches 1.. run scoreboard players set @s counter_6 3
execute if score #106_skill counter_1 matches 1.. run function project-c:jobaction/106/items/gui/set

scoreboard players reset #106_skill
scoreboard players reset #106_select_skill



