execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get @s counter_1
scoreboard players remove @s counter_2 1
execute if score @s counter_2 matches ..0 unless entity @e[tag=117vector,limit=1] at @s run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["117vector"],Duration:1}
execute if score @s counter_2 matches ..0 at @s positioned 0.0 0.0 0.0 run tp @e[tag=117vector,limit=1] ^ ^ ^1.5
execute if score @s counter_2 matches ..0 run data modify entity @s Motion set from entity @e[tag=117vector,limit=1] Pos
execute if score @s counter_2 matches ..0 run scoreboard players set @s counter_2 2

execute at @s unless block ^ ^0.7 ^0.9 #project-c:wancomatter/like_air run scoreboard players set @s counter 200
execute at @s unless block ^ ^0.7 ^1.9 #project-c:wancomatter/like_air run scoreboard players set @s counter 200
execute if entity @s[tag=117_1R] if entity @e[tag=Battle,team=!Red,distance=..3.4,limit=1] run scoreboard players set @s counter 200
execute if entity @s[tag=117_1B] if entity @e[tag=Battle,team=!Blue,distance=..3.4,limit=1] run scoreboard players set @s counter 200
execute if score @s counter matches 80.. run function project-c:jobaction/117/skill/1/end
