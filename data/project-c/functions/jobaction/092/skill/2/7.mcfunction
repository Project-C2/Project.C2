scoreboard players add @s counter 1

execute if score @s counter_2 matches 1.. positioned ^ ^ ^1.2 run tp @s ~ ~0.4 ~
execute if score @s counter_2 matches 1.. at @s run particle minecraft:flash ~ ~0.4 ~ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter_2 matches 1.. at @s run particle minecraft:flash ~ ~0.4 ~ 0 0 0 1 1 force @a
execute if score @s counter_2 matches 1.. run scoreboard players remove @s counter_2 1

execute if score @s counter matches 25 run function project-c:jobaction/092/skill/2/8
execute if score @s counter matches 26.. run function project-c:jobaction/092/skill/2/9

execute if score @s counter matches 90.. positioned ~ ~0.4 ~ run function project-c:jobaction/092/skill/2/end

