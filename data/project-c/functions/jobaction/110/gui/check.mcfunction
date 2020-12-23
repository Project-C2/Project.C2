#GUIクリック検知
execute unless data entity @s {Inventory:[{Slot:27b,tag:{110GUISlot:0b}}]} run scoreboard players set #110- counter_1 1
execute unless data entity @s {Inventory:[{Slot:28b,tag:{110GUISlot:1b}}]} run scoreboard players set #110- counter_1 2
execute unless data entity @s {Inventory:[{Slot:29b,tag:{110GUISlot:2b}}]} run scoreboard players set #110- counter_1 3
execute if score #110- counter_1 matches 1..3 run scoreboard players operation @s counter_5 = #110- counter_1
execute if score #110- counter_1 matches 1..3 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.6
execute unless score #110- counter_1 matches 1..3 if score @s counter_5 matches 1 run function project-c:jobaction/110/gui/weapon/check
execute unless score #110- counter_1 matches 1..3 if score @s counter_5 matches 2 run function project-c:jobaction/110/gui/bless/check
execute unless score #110- counter_1 matches 1..3 if score @s counter_5 matches 3 run function project-c:jobaction/110/gui/skills/check
execute if score #110- counter_1 matches 1.. run tag @s add 110pageChange
