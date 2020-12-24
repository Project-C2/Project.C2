scoreboard players add @s counter 1
execute if score @s counter_5 matches 100.. run scoreboard players add @s counter_5 1
execute if score @s counter_6 matches 100.. run scoreboard players add @s counter_6 1
execute if score @s counter_7 matches 100.. run scoreboard players add @s counter_7 1
execute if score @s counter matches 24 run function project-c:jobaction/110/skills/01/disaddable
execute if score @s counter matches 24.. run kill @s