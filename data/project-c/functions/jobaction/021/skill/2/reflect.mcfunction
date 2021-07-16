execute at @s if block ^ ^ ^0.2 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.2
execute at @s if block ^ ^ ^0.1 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.1
execute at @s if block ^ ^ ^0.05 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.05
execute at @s if block ^ ^ ^0.025 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.025
execute at @s if block ^ ^ ^0.0125 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.0125
execute at @s if block ^ ^ ^0.00625 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.00625
execute at @s if block ^ ^ ^0.00625 #project-c:wancomatter/like_air run tp @s ^ ^ ^0.00625

execute at @s if entity @s[scores={counter_3=0}] run tp @s ^ ^ ^ ~ ~1.5
execute at @s if entity @s[scores={counter_3=1}] run tp @s ^ ^ ^ ~ ~3
execute at @s if entity @s[scores={counter_3=2}] run tp @s ^ ^ ^ ~ ~4.5

#execute if entity @s[team=RedDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,tag=!hit,team=!Red,team=!RedDummy,limit=1,dx=0,dy=0,dz=0] run tag @e[tag=Battle,tag=!hit,team=!Red,team=!RedDummy,limit=1,sort=nearest,dx=0,dy=0,dz=0] add hit
#execute if entity @s[team=BlueDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,tag=!hit,team=!Blue,team=!BlueDummy,limit=1,dx=0,dy=0,dz=0] run tag @e[tag=Battle,tag=!hit,team=!Blue,team=!BlueDummy,limit=1,sort=nearest,dx=0,dy=0,dz=0] add hit

execute at @s unless block ~ ~0.01 ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 3
execute at @s unless block ~ ~-0.01 ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 4
execute at @s unless block ~0.01 ~ ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 1
execute at @s unless block ~-0.01 ~ ~ #project-c:wancomatter/like_air run scoreboard players add @s subcounter 2
execute at @s unless block ~ ~ ~0.01 #project-c:wancomatter/like_air run scoreboard players add @s subcounter 5
execute at @s unless block ~ ~ ~-0.01 #project-c:wancomatter/like_air run scoreboard players add @s subcounter 6

execute if score @s subcounter matches 1.. run function project-c:jobaction/021/skill/2/reflect-1