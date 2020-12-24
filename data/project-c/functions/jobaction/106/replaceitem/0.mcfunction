
execute if entity @s[scores={counter_1=..0}] run function project-c:jobaction/106/change
execute store result score #106_item_check counter run clear @s #project-c:neac/all 0

execute if score #106_item_check counter matches ..19 run tag @s add 106_change_setup
execute if score #106_item_check counter matches ..19 run function project-c:jobaction/106/change_keep
scoreboard players reset #106_item_check
scoreboard players reset @s drop