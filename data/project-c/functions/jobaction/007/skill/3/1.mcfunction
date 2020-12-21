execute if entity @e[tag=ThunderElement] as @e[tag=ThunderElement] positioned as @s run function project-c:jobaction/007/skill/3/2

scoreboard players add @e[tag=ThunderElementStand] counter 1

execute if entity @e[tag=ThunderElementStand,scores={counter=2..}] as @e[tag=ThunderElementStand,scores={counter=2..}] positioned as @s run function project-c:jobaction/007/skill/3/3