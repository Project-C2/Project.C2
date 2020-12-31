#GUIクリック検知
execute unless data entity @s Inventory[{Slot:31b}].tag{110GUISlot:4b} run scoreboard players set #110- counter_2 5
execute unless data entity @s Inventory[{Slot:32b}].tag{110GUISlot:5b} run scoreboard players set #110- counter_2 6
execute unless score @s counter_8 matches 2 unless data entity @s Inventory[{Slot:33b}].tag{110GUISlot:6b} run scoreboard players set #110- counter_2 7
execute unless score @s counter_8 matches 2 unless data entity @s Inventory[{Slot:34b}].tag{110GUISlot:7b} run scoreboard players set #110- counter_2 8

execute if score @s counter_8 matches 2.. unless data entity @s Inventory[{Slot:30b}].tag{110GUISlot:3b} run scoreboard players set #110- counter_2 10
execute if score @s counter_8 matches ..4 unless data entity @s Inventory[{Slot:35b}].tag{110GUISlot:8b} run scoreboard players set #110- counter_2 11

#装備選出
execute if score #110- counter_2 matches 5 if score @s counter_8 matches 1 run scoreboard players set #110- counter_3 1
execute if score #110- counter_2 matches 6 if score @s counter_8 matches 1 run scoreboard players set #110- counter_3 2
execute if score #110- counter_2 matches 7 if score @s counter_8 matches 1 run scoreboard players set #110- counter_3 3
execute if score #110- counter_2 matches 8 if score @s counter_8 matches 1 run scoreboard players set #110- counter_3 4

execute if score #110- counter_2 matches 5 if score @s counter_8 matches 2 run scoreboard players set #110- counter_3 17
execute if score #110- counter_2 matches 6 if score @s counter_8 matches 2 run scoreboard players set #110- counter_3 18
#execute if score #110- counter_2 matches 7 if score @s counter_8 matches 2 run scoreboard players set #110- counter_3 19
#execute if score #110- counter_2 matches 8 if score @s counter_8 matches 2 run scoreboard players set #110- counter_3 20

execute if score #110- counter_2 matches 5 if score @s counter_8 matches 3 run scoreboard players set #110- counter_3 5
execute if score #110- counter_2 matches 6 if score @s counter_8 matches 3 run scoreboard players set #110- counter_3 6
execute if score #110- counter_2 matches 7 if score @s counter_8 matches 3 run scoreboard players set #110- counter_3 7
execute if score #110- counter_2 matches 8 if score @s counter_8 matches 3 run scoreboard players set #110- counter_3 8

execute if score #110- counter_2 matches 5 if score @s counter_8 matches 4 run scoreboard players set #110- counter_3 9
execute if score #110- counter_2 matches 6 if score @s counter_8 matches 4 run scoreboard players set #110- counter_3 10
execute if score #110- counter_2 matches 7 if score @s counter_8 matches 4 run scoreboard players set #110- counter_3 11
execute if score #110- counter_2 matches 8 if score @s counter_8 matches 4 run scoreboard players set #110- counter_3 12

execute if score #110- counter_2 matches 5 if score @s counter_8 matches 5 run scoreboard players set #110- counter_3 13
execute if score #110- counter_2 matches 6 if score @s counter_8 matches 5 run scoreboard players set #110- counter_3 14
execute if score #110- counter_2 matches 7 if score @s counter_8 matches 5 run scoreboard players set #110- counter_3 15
execute if score #110- counter_2 matches 8 if score @s counter_8 matches 5 run scoreboard players set #110- counter_3 16


execute if score #110- counter_3 matches 1.. unless score @s counter_2 = #110- counter_3 unless score @s counter_3 = #110- counter_3 unless score @s counter_4 = #110- counter_3 run tag @s add 110
execute if entity @s[tag=!110] run scoreboard players reset #110- counter_3
execute if entity @s[tag=110] run tag @s remove 110


#counter_2=11 -> 1ページ進む counter_2=10 -> 1ページ戻る
execute if score #110- counter_2 matches 11 run scoreboard players add @s counter_8 1
execute if score #110- counter_2 matches 10 run scoreboard players remove @s counter_8 1
execute if score #110- counter_2 matches 10..11 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.6

execute unless score #110- counter_3 matches 1.. run tag @s add 110drop
execute if score #110- counter_3 matches 1.. run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if score #110- counter_3 matches 1.. run tag @s add 110SelectSkillSlot1