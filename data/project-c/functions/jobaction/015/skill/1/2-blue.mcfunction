#実行者     -> tag=15-1-Stand && tag=skillStage2
#実行地点   -> 実行者

scoreboard players add @s counter 1

#Particle
particle minecraft:dust 4 0 2 0.5 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 16 force
particle minecraft:falling_dust purple_wool ~ ~1.5 ~ 0.2 0 0.2 0 1 force


execute at @s run teleport @s ^ ^ ^0.15 facing entity @a[team=Red,sort=nearest,limit=1]


execute if entity @a[team=Red,distance=..1.5] run function project-c:jobaction/015/skill/1/2-success

execute if entity @s[scores={counter=101..}] run function project-c:jobaction/015/skill/1/2-failure