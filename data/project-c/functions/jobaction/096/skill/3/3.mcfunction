scoreboard players add @s counter 1
execute unless score @s counter matches 12.. if entity @s[tag=096chainFirst] unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit
execute unless score @s counter matches 12.. if entity @s[team=RedDummy] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Red,limit=1] run tag @s add hit
execute unless score @s counter matches 12.. if entity @s[team=BlueDummy] positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Blue,limit=1] run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] run tp @s ^ ^ ^0.4
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[tag=096chainFirst] at @s unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[team=RedDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Red,limit=1] run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[team=BlueDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Blue,limit=1] run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] run tp @s ^ ^ ^0.8
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[tag=096chainFirst] at @s unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[team=RedDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Red,limit=1] run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] if entity @s[team=BlueDummy] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Battle,dx=0,dy=0,dz=0,team=!Blue,limit=1] run tag @s add hit
execute unless score @s counter matches 11.. unless entity @s[tag=hit] run tp @s ^ ^ ^1.2
execute if entity @s[tag=hit] at @s run function project-c:jobaction/096/skill/3/hit
execute if score @s counter matches 12 run scoreboard players set @s counter 50
particle minecraft:block chain ~ ~ ~ 0.03 0.03 0.03 1 6 normal @a
particle minecraft:block chain ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s[tag=!096chainjump] counter matches 38.. run kill @s
