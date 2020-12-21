execute if score @s counter matches 30.. unless block ~ ~0.4 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter 200
execute if score @s counter matches 30.. positioned ^ ^ ^0.75 unless block ~ ~0.4 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~0.4 ~ if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~0.4 ~ positioned ^ ^ ^0.5 if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~0.4 ~ positioned ^ ^ ^1.0 if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~0.4 ~ if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~0.4 ~ positioned ^ ^ ^0.5 if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~0.4 ~ positioned ^ ^ ^1.0 if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~1.2 ~ if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~1.2 ~ positioned ^ ^ ^0.5 if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=RedDummy] positioned ~ ~1.2 ~ positioned ^ ^ ^1.0 if entity @e[tag=Battle,team=!Red,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~1.2 ~ if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~1.2 ~ positioned ^ ^ ^0.5 if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
execute if entity @s[team=BlueDummy] positioned ~ ~1.2 ~ positioned ^ ^ ^1.0 if entity @e[tag=Battle,team=!Blue,distance=..1] run scoreboard players set @s counter 200
tp @s ^ ^ ^1.2

particle block dirt ~ ~0.4 ~ 0.2 0.2 0.2 1 2 normal @a