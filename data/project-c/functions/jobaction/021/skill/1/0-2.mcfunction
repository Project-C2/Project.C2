execute at @s run tp @s ^ ^ ^0.03

scoreboard players remove @s counter_5 1
execute if score @s counter_5 matches 1.. at @s run function project-c:jobaction/021/skill/1/0-2