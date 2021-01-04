execute as @e[tag=116grapple] at @s run function project-c:jobaction/116/skill/3/1-1
execute if entity @e[tag=116_3AEC,limit=1] as @e[tag=116_3AEC] at @s run function project-c:jobaction/116/skill/3/2
execute as @e[tag=116grapple] at @s run function project-c:jobaction/116/skill/3/1-2
scoreboard players reset #116- playerNumber
