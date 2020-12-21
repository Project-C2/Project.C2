scoreboard players add #089dummy counter 1
scoreboard players set #089dummy subcounter 0
execute positioned ^ ^ ^1 run function project-c:jobaction/089/skill/1/slash_loop2
#particle minecraft:dragon_breath ^ ^ ^2 0.1 0.1 0.1 0.1 3 normal @a
#particle minecraft:dragon_breath ^ ^ ^2 0 0 0 0.1 1 force @a
#particle minecraft:sweep_attack ^ ^ ^2 0 0 0 1 1 normal @a


execute unless score #089dummy counter matches 13.. rotated ~-15 ~ run function project-c:jobaction/089/skill/1/slash_loop
