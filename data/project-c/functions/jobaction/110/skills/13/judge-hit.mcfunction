particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 0 1 normal @a
execute if entity @s[team=RedDummy] positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=0,dz=0,team=!Red,tag=Battle] run tag @s add hit
execute if entity @s[team=BlueDummy] positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=0,dz=0,team=!Blue,tag=Battle] run tag @s add hit
execute if entity @e[tag=hit,limit=1] at @e[tag=hit] run function project-c:jobaction/110/skills/13/hit
execute unless block ~ ~ ~ #project-c:wancomatter/like_air run kill @s
