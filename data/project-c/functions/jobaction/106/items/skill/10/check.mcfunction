#スキル10



execute unless block ~ ~-1.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-2.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-3.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-4.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-5.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-6.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-7.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-8.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-9.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-10.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-11.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok
execute unless block ~ ~-12.5 ~ #project-c:wancomatter/like_air run tag @s add tp_ok




execute unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~ ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~ ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~ ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~ ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~ ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~0.3 ~ ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~ ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~ ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok




execute unless block ~ ~0.90625 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~0.90625 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~0.90625 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~0.90625 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~0.90625 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~0.90625 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~0.3 ~0.90625 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~0.90625 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~0.90625 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok




execute unless block ~ ~1.8125 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~1.8125 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~1.8125 ~ #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~1.8125 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~ ~1.8125 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok

execute unless block ~0.3 ~1.8125 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~0.3 ~1.8125 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~1.8125 ~0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok
execute unless block ~-0.3 ~1.8125 ~-0.3 #project-c:wancomatter/like_air run tag @s remove tp_ok


execute if entity @s[tag=tp_ok] positioned ~ ~-0.5 ~ run function project-c:jobaction/106/items/skill/10/check2

scoreboard players reset #106_short_teleport_c