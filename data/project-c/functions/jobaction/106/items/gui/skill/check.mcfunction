#スキルP
execute unless data entity @s Inventory[{Slot:34b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 4
execute unless data entity @s Inventory[{Slot:33b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 3
execute unless data entity @s Inventory[{Slot:32b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 2
execute unless data entity @s Inventory[{Slot:31b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 1

execute if score @s counter_7 matches 2.. unless data entity @s Inventory[{Slot:30b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 10
execute if score @s counter_7 matches ..3 unless data entity @s Inventory[{Slot:35b}].tag{106_gui_item:1} run scoreboard players set #106_skill counter_1 11



execute if score @s counter_7 matches 4 if score #106_skill counter_1 matches 3..4 run scoreboard players reset #106_skill counter_1



execute if score @s counter_7 matches 1 if score #106_skill counter_1 matches 1 run scoreboard players set #106_skill counter_2 1
execute if score @s counter_7 matches 1 if score #106_skill counter_1 matches 2 run scoreboard players set #106_skill counter_2 2
execute if score @s counter_7 matches 1 if score #106_skill counter_1 matches 3 run scoreboard players set #106_skill counter_2 3
execute if score @s counter_7 matches 1 if score #106_skill counter_1 matches 4 run scoreboard players set #106_skill counter_2 4


execute if score @s counter_7 matches 2 if score #106_skill counter_1 matches 1 run scoreboard players set #106_skill counter_2 5
execute if score @s counter_7 matches 2 if score #106_skill counter_1 matches 2 run scoreboard players set #106_skill counter_2 6
execute if score @s counter_7 matches 2 if score #106_skill counter_1 matches 3 run scoreboard players set #106_skill counter_2 7
execute if score @s counter_7 matches 2 if score #106_skill counter_1 matches 4 run scoreboard players set #106_skill counter_2 8


execute if score @s counter_7 matches 3 if score #106_skill counter_1 matches 1 run scoreboard players set #106_skill counter_2 9
execute if score @s counter_7 matches 3 if score #106_skill counter_1 matches 2 run scoreboard players set #106_skill counter_2 10
execute if score @s counter_7 matches 3 if score #106_skill counter_1 matches 3 run scoreboard players set #106_skill counter_2 11
execute if score @s counter_7 matches 3 if score #106_skill counter_1 matches 4 run scoreboard players set #106_skill counter_2 12


execute if score @s counter_7 matches 4 if score #106_skill counter_1 matches 1 run scoreboard players set #106_skill counter_2 13
execute if score @s counter_7 matches 4 if score #106_skill counter_1 matches 2 run scoreboard players set #106_skill counter_2 14
execute if score @s counter_7 matches 4 if score #106_skill counter_1 matches 3 run scoreboard players set #106_skill counter_2 15
execute if score @s counter_7 matches 4 if score #106_skill counter_1 matches 4 run scoreboard players set #106_skill counter_2 16



execute if score #106_skill counter_2 matches 1.. run tag @s add 106_SSN
execute if entity @s[tag=106_SSN] run scoreboard players add #106_skill counter_2 300
execute if entity @s[tag=106_SSN] run scoreboard players operation @s counter_6 = #106_skill counter_2
execute if entity @s[tag=106_SSN] run tag @s remove 106_SSN


execute if score #106_skill counter_1 matches 10 run scoreboard players remove @s counter_7 1
execute if score #106_skill counter_1 matches 11 run scoreboard players add @s counter_7 1
execute if score #106_skill counter_1 matches 10..11 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1


execute if score #106_skill counter_1 matches 1..4 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1

#execute unless score #106_skill counter_2 matches 1.. run tag @s add 106_drop
#execute unless score #106_skill counter_2 matches 1.. run tag @s add 106_skill_no_drop

scoreboard players reset #106_skill

