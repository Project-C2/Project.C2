#GUIクリック検知
execute unless data entity @s Inventory[{Slot:31b}].tag{110GUISlot:4b} run scoreboard players set #110- counter_1 5
execute unless data entity @s Inventory[{Slot:32b}].tag{110GUISlot:5b} run scoreboard players set #110- counter_1 6
execute unless data entity @s Inventory[{Slot:33b}].tag{110GUISlot:6b} run scoreboard players set #110- counter_1 7
execute unless data entity @s Inventory[{Slot:34b}].tag{110GUISlot:7b} run scoreboard players set #110- counter_1 8
execute unless data entity @s Inventory[{Slot:35b}].tag{110GUISlot:8b} run scoreboard players set #110- counter_1 9

execute if score #110- counter_1 matches 5 run scoreboard players set @s counter_1 1
execute if score #110- counter_1 matches 6 run scoreboard players set @s counter_1 2
execute if score #110- counter_1 matches 7 run scoreboard players set @s counter_1 3
execute if score #110- counter_1 matches 8 run scoreboard players set @s counter_1 4
execute if score #110- counter_1 matches 9 run scoreboard players set @s counter_1 5

execute if score #110- counter_1 matches 5..9 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if score #110- counter_1 matches 5..9 run function project-c:jobaction/110/replaceitem/weapon
