scoreboard players add @s counter_1 1
execute unless block ~ ~-1 ~ #project-c:wancomatter/like_air positioned ~ ~-1 ~ align y run tp @s ~ ~0.5 ~
execute unless score @s counter_1 matches 10.. if block ~ ~-1 ~ #project-c:wancomatter/like_air positioned ~ ~-1 ~ run function project-c:jobaction/110/skills/03/check
