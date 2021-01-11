tp @s ~ ~0.05 ~ ~-27 ~
particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 0.5 16 normal @a
particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 0.5 4 force @a
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.5

execute if block ~ ~ ~ #project-c:wancomatter/like_air run data merge entity @s {NoAI:0b,Invulnerable:0b,Tags:["Battle","117zombie"]}
