playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.1 0.5
particle minecraft:explosion ~ ~ ~ 1 0 1 1 4 normal @a
particle minecraft:explosion ~ ~ ~ 1 0 1 1 1 force @a
particle minecraft:poof ~ ~0.6 ~ 0 1.2 0 0.7 28 normal @a
particle minecraft:poof ~ ~0.6 ~ 0 1.2 0 0.7 7 force @a

tag @s add 105
execute if entity @s[tag=105_1R] if entity @e[distance=..4,team=!Red,tag=Battle,limit=1] as @e[distance=..4,team=!Red,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=105,distance=..1.6] run tag @s add hit
execute if entity @s[tag=105_1R] if entity @e[distance=..4,team=!Red,tag=Battle,limit=1] as @e[distance=..4,team=!Red,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=105,distance=..1.6] run tag @s add hit
execute if entity @s[tag=105_1B] if entity @e[distance=..4,team=!Blue,tag=Battle,limit=1] as @e[distance=..4,team=!Blue,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=105,distance=..1.6] run tag @s add hit
execute if entity @s[tag=105_1B] if entity @e[distance=..4,team=!Blue,tag=Battle,limit=1] as @e[distance=..4,team=!Blue,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=105,distance=..1.6] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/105/skill/1/3
tag @s remove 105

kill @s