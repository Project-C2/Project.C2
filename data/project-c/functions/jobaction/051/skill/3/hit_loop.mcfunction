scoreboard players remove @s counter 1

execute if score @s counter matches 1.. unless block ^ ^ ^-0.425 #project-c:wancomatter/like_air run scoreboard players set @s counter 0
execute unless score @s counter matches 1.. run tp @s ~ ~ ~
execute if score @s counter matches 1.. positioned ^ ^ ^-0.1 run function project-c:jobaction/051/skill/3/hit_loop
