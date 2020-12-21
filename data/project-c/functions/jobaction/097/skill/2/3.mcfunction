particle minecraft:end_rod ~ ~-0.475 ~ 0 0 0 0.4 40 normal @a
particle minecraft:end_rod ~ ~-0.475 ~ 0 0 0 0.4 10 force @a
particle minecraft:dust 0 0 1 1.5 ~ ~ ~ 1.5 1.5 1.5 1 28 normal @a
particle minecraft:dust 0 0 1 1.5 ~ ~ ~ 1.5 1.5 1.5 1 7 force @a
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1.5 1
execute positioned ~ ~-0.475 ~ unless entity @e[tag=097spectralArrow,limit=1,distance=..0.3] run function project-c:jobaction/097/skill/2/4


