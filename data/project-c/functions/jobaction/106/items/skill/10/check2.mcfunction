#スキル10


scoreboard players add #106_short_teleport_c counter 1

execute if block ~ ~ ~ barrier run tag @s remove tp_ok

execute if score #106_short_teleport_c counter matches ..25 unless block ~ ~ ~ barrier if block ~ ~ ~ #project-c:wancomatter/like_air positioned ~ ~-0.5 ~ run function project-c:jobaction/106/items/skill/10/check2
execute unless score #106_short_teleport_c counter matches ..25 run scoreboard players reset #106_short_teleport_c


