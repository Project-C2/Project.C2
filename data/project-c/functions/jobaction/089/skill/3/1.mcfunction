scoreboard players add @s counter 1
tp @s ^ ^ ^1.2
execute if score @s counter matches 6..45 if block ~ ~2 ~ #project-c:wancomatter/like_air run function project-c:jobaction/089/skill/3/2
execute if score @s counter matches 55.. run function project-c:jobaction/089/skill/3/3
