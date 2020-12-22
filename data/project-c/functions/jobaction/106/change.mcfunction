
scoreboard players set @s counter_1 1
scoreboard players set @s counter_2 1
scoreboard players set @s counter_3 1
scoreboard players set @s counter_4 2
scoreboard players set @s counter_5 3
scoreboard players set @s drop2 1
scoreboard players set @s 106-tab 1
execute unless score @s 106-skill-page matches 1.. run scoreboard players set @s 106-skill-page 1
tag @s add 106_gui_all_setup
tag @s add 106_page_setup
tag @s add 106_skill_page_setup

#function project-c:jobaction/106/inventory_changed