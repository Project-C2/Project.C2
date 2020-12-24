particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 2 normal @a
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 1 force @a
particle minecraft:falling_dust gray_wool ~ ~1 ~ 1 1 1 1 2 normal @a
particle minecraft:falling_dust gray_wool ~ ~1 ~ 1 1 1 1 1 force @a
execute if entity @e[tag=110,limit=1,sort=nearest,scores={counter=12}] run function project-c:jobaction/110/skills/14/launch