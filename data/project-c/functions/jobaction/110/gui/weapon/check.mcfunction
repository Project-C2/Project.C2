#GUIクリック検知
execute unless data entity @s Inventory[{Slot:31b}].tag{110GUISlot:4b} run scoreboard players set #110- counter_1 5
execute unless data entity @s Inventory[{Slot:32b}].tag{110GUISlot:5b} run scoreboard players set #110- counter_1 6
execute unless data entity @s Inventory[{Slot:33b}].tag{110GUISlot:6b} run scoreboard players set #110- counter_1 7
execute unless score @s counter_6 matches 2 unless data entity @s Inventory[{Slot:34b}].tag{110GUISlot:7b} run scoreboard players set #110- counter_1 8

execute if score @s counter_6 matches 2.. unless data entity @s Inventory[{Slot:30b}].tag{110GUISlot:3b} run scoreboard players set #110- counter_1 10
execute if score @s counter_6 matches ..1 unless data entity @s Inventory[{Slot:35b}].tag{110GUISlot:8b} run scoreboard players set #110- counter_1 11

#装備選出
execute if score #110- counter_1 matches 5 if score @s counter_6 matches 1 run scoreboard players set @s counter_1 1
execute if score #110- counter_1 matches 6 if score @s counter_6 matches 1 run scoreboard players set @s counter_1 2
execute if score #110- counter_1 matches 7 if score @s counter_6 matches 1 run scoreboard players set @s counter_1 7
execute if score #110- counter_1 matches 8 if score @s counter_6 matches 1 run scoreboard players set @s counter_1 3

execute if score #110- counter_1 matches 5 if score @s counter_6 matches 2 run scoreboard players set @s counter_1 4
execute if score #110- counter_1 matches 6 if score @s counter_6 matches 2 run scoreboard players set @s counter_1 5
execute if score #110- counter_1 matches 7 if score @s counter_6 matches 2 run scoreboard players set @s counter_1 6
#execute if score #110- counter_1 matches 8 if score @s counter_6 matches 2 run scoreboard players set @s counter_1 8


execute if score #110- counter_1 matches 5..8 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if score #110- counter_1 matches 5..8 run function project-c:jobaction/110/replaceitem/weapon

#counter_1=11 -> 1ページ進む counter_1=10 -> 1ページ戻る
execute if score #110- counter_1 matches 11 run scoreboard players add @s counter_6 1
execute if score #110- counter_1 matches 10 run scoreboard players remove @s counter_6 1
execute if score #110- counter_1 matches 10..11 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.6
