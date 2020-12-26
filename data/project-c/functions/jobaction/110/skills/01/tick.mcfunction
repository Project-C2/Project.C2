particle minecraft:lava ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.5 1
scoreboard players add @s counter 1


tag @s add now
execute if entity @s[tag=110fireballR] as @e[distance=..2.4,team=!Red,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..0.9] run tag @s add hit
execute if entity @s[tag=110fireballR] as @e[distance=..2.4,team=!Red,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..0.9] run tag @s add hit
execute if entity @s[tag=110fireballB] as @e[distance=..2.4,team=!Blue,tag=Battle] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..0.9] run tag @s add hit
execute if entity @s[tag=110fireballB] as @e[distance=..2.4,team=!Blue,tag=Battle] at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..0.9] run tag @s add hit
execute if entity @e[tag=hit,limit=1] at @e[tag=hit] run function project-c:jobaction/110/skills/01/hit-entity
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
tag @s remove now

execute unless block ^ ^ ^0.45 #project-c:wancomatter/like_air run function project-c:jobaction/110/skills/01/hit-block
tp @s ^ ^ ^0.45
execute unless score @s counter matches 101.. unless block ^ ^ ^0.9 #project-c:wancomatter/like_air at @s run function project-c:jobaction/110/skills/01/hit-block
tp @s ^ ^ ^0.9

execute if score @s counter matches 100.. run kill @s