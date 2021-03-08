scoreboard players add @s subcounter 1
tp @s ^ ^ ^1.4
particle flame ~ ~ ~ 0.05 0.05 0.05 0.2 3 normal @a
particle flame ~ ~ ~ 0.3 0.3 0.3 0.015 1 force @a
execute if entity @s[scores={subcounter=3..}] run particle lava ~ ~ ~ 0.2 0.2 0.2 0.4 1 normal @a
execute if entity @s[team=RedDummy] at @e[tag=Battle,team=!Red,distance=..2] run summon arrow ~ ~3 ~ {CustomName:'{"text":"Flame Razer","color":"red"}',Motion:[0.0d,-1.0d,0.0d],pickup:0,damage:4.0d,life:1200s,Fire:100s}
execute if entity @s[team=BlueDummy] at @e[tag=Battle,team=!Blue,distance=..2] run summon arrow ~ ~3 ~ {CustomName:'{"text":"Flame Razer","color":"red"}',Motion:[0.0d,-1.0d,0.0d],pickup:0,damage:4.0d,life:1200s,Fire:100s}


scoreboard players set @s[scores={subcounter=3..}] subcounter 0
execute unless block ^ ^0.5 ^0.7 #project-c:wancomatter/like_air run kill @s
execute unless block ^ ^0.5 ^1.4 #project-c:wancomatter/like_air run kill @s
