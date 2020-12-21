#実行者     -> コマブロ

execute if entity @e[tag=ArrowS] as @e[tag=ArrowS] positioned as @s run function project-c:jobaction/004/skill/1/2

scoreboard players add @e[tag=ArrowSStand] counter 1

#これが実行されるとき,ArrowSは消えている
execute if entity @e[tag=ArrowSStand,scores={counter=2..}] as @e[tag=ArrowSStand,scores={counter=2..}] positioned as @s run function project-c:jobaction/004/skill/1/3