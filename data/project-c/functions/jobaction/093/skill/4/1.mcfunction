scoreboard players add @s counter_7 1
execute if data entity @s {Health:0f} run scoreboard players reset @s counter_7
execute if score @s counter_7 matches 121.. run tp @s @s
execute if score @s counter_7 matches 120 run function project-c:jobaction/093/skill/4/2

execute if score @s counter_7 matches 201.. run effect give @s slow_falling 3 0
execute if score @s counter_7 matches 201.. run scoreboard players reset @s counter_7