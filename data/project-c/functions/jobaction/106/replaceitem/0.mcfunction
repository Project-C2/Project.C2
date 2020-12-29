
execute if entity @s[scores={counter_1=..0}] run function project-c:jobaction/106/change

execute store result score #106_item_check counter run data get entity @s ActiveEffects[{Id:23b}].Duration
execute if score #106_item_check counter matches 999998..1000000 run tag @s add 106_change_setup
execute if score #106_item_check counter matches 999998..1000000 run function project-c:jobaction/106/change_keep
scoreboard players reset #106_item_check

scoreboard players reset @s drop