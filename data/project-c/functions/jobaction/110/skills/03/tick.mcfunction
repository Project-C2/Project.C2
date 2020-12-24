particle minecraft:block oak_log ~ ~0.6 ~ 0.4 0 0.4 1 4 normal @a
execute positioned ^ ^ ^0.6 run particle minecraft:block oak_log ~ ~0.6 ~ 0.4 0 0.4 1 4 normal @a
particle minecraft:happy_villager ~ ~0.6 ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^0.6 run particle minecraft:happy_villager ~ ~0.6 ~ 0 0 0 0 1 force @a
playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 1.2 1
scoreboard players add @s counter 1

tag @s add now
execute if entity @s[tag=110drainplantR] as @e[distance=..1.5,team=!Red,tag=Battle] run tag @s add hit
execute if entity @s[tag=110drainplantB] as @e[distance=..1.5,team=!Blue,tag=Battle] run tag @s add hit
execute if entity @e[tag=hit,limit=1] at @e[tag=hit,limit=1,sort=nearest] run function project-c:jobaction/110/skills/03/hit
tag @s remove now

execute if block ~ ~ ~ #project-c:wancomatter/like_air run kill @s
execute if block ^ ^ ^0.6 #project-c:wancomatter/like_air run kill @s
tp @s ^ ^ ^1.2
execute if score @s counter matches 80.. run kill @s