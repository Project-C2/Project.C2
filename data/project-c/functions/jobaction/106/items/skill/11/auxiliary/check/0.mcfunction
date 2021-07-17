#スキル4補助
scoreboard players set #106_slot_pos counter -1000
execute if score @s counter_3 matches 11 run scoreboard players set #106_slot_pos counter 1
execute if score @s counter_4 matches 11 run scoreboard players set #106_slot_pos counter 2
execute if score @s counter_5 matches 11 run scoreboard players set #106_slot_pos counter 3
execute unless score #106_slot_pos counter matches -1000 run tag @s add using

execute if entity @s[tag=using] run function project-c:jobaction/106/items/skill/11/auxiliary/check/1

scoreboard players reset #106_slot_pos