scoreboard players add @s counter 1
execute if score @s counter matches ..9 run scoreboard players set @s counter_1 0
execute if score @s counter matches ..9 run function project-c:jobaction/089/skill/3/line
execute if score @s counter matches 9 at @s run tp @s ^ ^ ^-72
execute if score @s counter matches 10..55 run tp @s ^ ^ ^1.2
execute if score @s counter matches 16..55 if block ~ ~2 ~ #project-c:wancomatter/like_air run function project-c:jobaction/089/skill/3/2
execute if score @s counter matches 65.. run function project-c:jobaction/089/skill/3/3
