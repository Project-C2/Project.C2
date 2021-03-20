execute at @s if block ^ ^ ^0.2 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.2
execute at @s if block ^ ^ ^0.1 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.1
execute at @s if block ^ ^ ^0.05 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.05
execute at @s if block ^ ^ ^0.025 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.025
execute at @s if block ^ ^ ^0.0125 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.0125
execute at @s if block ^ ^ ^0.00625 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.00625
execute at @s if block ^ ^ ^0.00625 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.00625

execute at @s unless block ~ ~0.01 ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 3
execute at @s unless block ~ ~-0.01 ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 4
execute at @s unless block ~0.01 ~ ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 1
execute at @s unless block ~-0.01 ~ ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 2
execute at @s unless block ~ ~ ~0.01 #project-c:wancomatter/like_air run scoreboard players add @s subcounter 5
execute at @s unless block ~ ~ ~-0.01 #project-c:wancomatter/like_air run scoreboard players add @s subcounter 6

execute if score @s subcounter matches 1 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 2 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 5 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 6 store result score @s counter_1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 3 store result score @s counter_2 run data get entity @s Rotation[1] 100
execute if score @s subcounter matches 4 store result score @s counter_2 run data get entity @s Rotation[1] 100

execute if score @s counter_1 matches 18000.. run scoreboard players remove @s counter_1 36000
execute if score @s counter_1 matches ..-18000 run scoreboard players add @s counter_1 36000

execute if score @s subcounter matches 1..4 run scoreboard players set @s CT1 -1
execute if score @s subcounter matches 5..6 run scoreboard players set @s CT1 18000

execute if score @s subcounter matches 1..2 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s counter_1 *= @s CT1
execute if score @s subcounter matches 5..6 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s CT1 -= @s counter_1
execute if score @s subcounter matches 3..4 store result entity @s Rotation[1] float 0.01 run scoreboard players operation @s counter_2 *= @s CT1


execute if score @s subcounter matches 1.. run scoreboard players add @s counter_3 1
execute if score @s subcounter matches 1.. run scoreboard players reset @s CT1
execute if score @s subcounter matches 3..4 run scoreboard players reset @s counter_2
execute if score @s subcounter matches 1.. run scoreboard players reset @s counter_1
execute if score @s subcounter matches 1.. run scoreboard players reset @s subcounter
