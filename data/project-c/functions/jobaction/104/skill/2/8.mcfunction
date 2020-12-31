execute unless entity @s[scores={counter=30..}] run scoreboard players add @s counter 1
execute if entity @s[tag=104mineR,scores={counter=30..}] if entity @e[tag=Battle,team=!Red,distance=..1.1,limit=1] run tag @s add 104flag
execute if entity @s[tag=104mineB,scores={counter=30..}] if entity @e[tag=Battle,team=!Blue,distance=..1.1,limit=1] run tag @s add 104flag
execute if entity @s[tag=104flag] run function project-c:jobaction/104/skill/1/chance
execute if entity @s[tag=104flag] run kill @s
