#サポート
#execute unless data entity @s Inventory[{Slot:34b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 4
execute unless data entity @s Inventory[{Slot:33b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 3
execute unless data entity @s Inventory[{Slot:32b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 2
execute unless data entity @s Inventory[{Slot:31b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 1

execute if score #106_skill counter_1 matches 1.. if score #106_skill counter_1 = @s counter_2 run scoreboard players reset #106_skill counter_1 

execute if score #106_skill counter_1 matches 1 run scoreboard players set @s counter_2 1
execute if score #106_skill counter_1 matches 2 run scoreboard players set @s counter_2 2
execute if score #106_skill counter_1 matches 3 run scoreboard players set @s counter_2 3
execute if score #106_skill counter_1 matches 4 run scoreboard players set @s counter_2 4



execute if score #106_skill counter_1 matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if score #106_skill counter_1 matches 1.. run tag @s add 106_skill_no_drop
execute if score #106_skill counter_1 matches 1.. run scoreboard players set @s drop2 1

scoreboard players reset #106_skill

