#実行者     -> コマブロ


execute if entity @e[tag=ArrowR] as @e[tag=ArrowR] positioned as @s run function project-c:jobaction/004/skill/2/2

scoreboard players add @e[tag=ArrowRStand] counter 1

execute if entity @e[tag=ArrowRStand,scores={counter=2}] as @e[tag=ArrowRStand,scores={counter=2}] positioned as @s run function project-c:jobaction/004/skill/2/3