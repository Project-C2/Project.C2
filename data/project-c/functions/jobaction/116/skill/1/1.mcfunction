execute as @e[tag=116impact] at @s run function project-c:jobaction/116/skill/1/1-1
execute if entity @e[tag=116_1AEC,limit=1] as @e[tag=116_1AEC] at @s run function project-c:jobaction/116/skill/1/hit
execute as @e[tag=116impact] at @s run function project-c:jobaction/116/skill/1/1-2
scoreboard players reset #116- playerNumber
