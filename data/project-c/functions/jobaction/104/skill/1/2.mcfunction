particle flame ^ ^ ^0.1 0 0 0 0 1 force @a
particle flame ^ ^ ^0.2 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.3 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.4 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.5 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.6 0 0 0 0 1 force @a
particle flame ^ ^ ^0.7 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.8 0 0 0 0 1 normal @a
particle flame ^ ^ ^0.9 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.0 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.1 0 0 0 0 1 force @a
particle flame ^ ^ ^1.2 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.3 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.4 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.5 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.6 0 0 0 0 1 force @a
particle flame ^ ^ ^1.7 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.8 0 0 0 0 1 normal @a
particle flame ^ ^ ^1.9 0 0 0 0 1 normal @a
particle flame ^ ^ ^2.0 0 0 0 0 1 normal @a
tp @s ^ ^ ^2.0
execute if score @s counter matches ..29 unless block ^ ^ ^-0.5 #project-c:wancomatter/like_air positioned ^ ^ ^-1.0 run function project-c:jobaction/104/skill/1/3
execute if score @s counter matches ..29 unless block ^ ^ ^ #project-c:wancomatter/like_air positioned ^ ^ ^-0.5 run function project-c:jobaction/104/skill/1/3
execute if score @s counter matches ..29 unless block ^ ^ ^0.5 #project-c:wancomatter/like_air positioned ^ ^ ^0.0 run function project-c:jobaction/104/skill/1/3
execute if score @s counter matches ..29 unless block ^ ^ ^1.0 #project-c:wancomatter/like_air positioned ^ ^ ^0.5 run function project-c:jobaction/104/skill/1/3
execute if score @s counter matches 30.. run kill @s
