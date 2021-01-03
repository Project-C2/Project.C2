execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players add @s subcounter 36
playsound minecraft:block.grass.break master @a ~ ~ ~ 0.8 0.5

particle minecraft:sweep_attack ~ ~1 ~ 0.1 0.1 0.1 1 2 normal @a
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 1 1 force @a

tag @s add now
execute if entity @s[team=RedDummy] as @e[distance=..3.0,team=!Red,tag=Battle] at @s positioned ~ ~ ~ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[team=RedDummy] as @e[distance=..3.0,team=!Red,tag=Battle] at @s positioned ~ ~1.4 ~ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[team=BlueDummy] as @e[distance=..3.0,team=!Blue,tag=Battle] at @s positioned ~ ~ ~ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @s[team=BlueDummy] as @e[distance=..3.0,team=!Blue,tag=Battle] at @s positioned ~ ~1.4 ~ if entity @e[tag=now,distance=..1.4] run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit,limit=1,sort=nearest] at @s run function project-c:jobaction/115/skill/3/hit
execute if entity @e[tag=hit,limit=1] run scoreboard players set @s counter 200
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
tag @s remove now

tp @s ^ ^ ^0.5
execute unless block ~ ~1 ~ #project-c:wancomatter/like_air run scoreboard players set @s counter 200
scoreboard players add @s counter 1
execute if score @s counter matches 80.. run kill @s

