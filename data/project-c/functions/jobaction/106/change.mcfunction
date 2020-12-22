
scoreboard players set @s counter_1 1
scoreboard players set @s counter_2 2
scoreboard players set @s counter_3 4
scoreboard players set @s counter_4 10
scoreboard players set @s counter_5 9
scoreboard players reset @s Mana
scoreboard players reset @s counter
scoreboard players set @s counter_6 1
execute unless score @s counter_7 matches 1.. run scoreboard players set @s counter_7 1
scoreboard players set @s counter_8 0
scoreboard players set @s counter_9 0
scoreboard players set @s shieldBlock 0
tag @s add 106_change_setup
function project-c:jobaction/106/change_keep