scoreboard players remove @s counter 1

execute if entity @s[scores={counter_1=0}] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=0}] run particle minecraft:end_rod ^ ^ ^0.75 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=0}] run particle minecraft:firework ~ ~ ~ 0 0 0 0.05 2 force @a

execute if entity @s[scores={counter_1=1}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.4 0.4 0.4 0 4 force @a
execute if entity @s[scores={counter_1=1}] run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=1}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 3 force @a

execute if entity @s[scores={counter_1=2}] run particle minecraft:dust 0.25 0.25 1 1 ~ ~ ~ 0.4 0.4 0.4 0 4 force @a
execute if entity @s[scores={counter_1=2}] run particle minecraft:dust 0 0.75 1 2 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=2}] run particle minecraft:block water ~ ~ ~ 0 0 0 0.1 5 force @a

execute if entity @s[scores={counter_1=3}] run particle minecraft:dust 0 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 3 force @a
execute if entity @s[scores={counter_1=3}] run particle minecraft:dust 0 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=3}] run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.1 3 force @a

execute if entity @s[scores={counter_1=4}] run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 3 force @a
execute if entity @s[scores={counter_1=4}] run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=4}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 3 force @a

execute if entity @s[scores={counter_1=5}] run particle minecraft:dust 0.7 0.4 0 1 ~ ~ ~ 0.5 0.5 0.5 0 3 force @a
execute if entity @s[scores={counter_1=5}] run particle minecraft:dust 0.7 0.4 0 3 ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={counter_1=5}] run particle minecraft:block dirt ~ ~ ~ 0 0 0 0.3 10 force @a

teleport @s[scores={counter_2=0}] ^ ^ ^1.5 ~ ~
teleport @s[scores={counter_2=1..2}] ^ ^ ^1 ~ ~

execute as @e[distance=..1.5,tag=Battle] unless score @s teamNumber = @e[limit=1,sort=nearest,tag=048-Bullet,scores={counter_1=0..2}] teamNumber at @s run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/048/skill/0/3-0

execute as @e[distance=..1.5,tag=Battle] if score @s teamNumber = @e[limit=1,sort=nearest,tag=048-Bullet,scores={counter_1=3..4}] teamNumber at @s run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/048/skill/0/3-1

execute as @e[distance=..1.5,tag=Battle] unless score @s teamNumber = @e[limit=1,sort=nearest,tag=048-Bullet,scores={counter_1=5}] teamNumber at @s run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/048/skill/0/3-0

execute as @s unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run kill @s
kill @s[scores={counter=..0}]