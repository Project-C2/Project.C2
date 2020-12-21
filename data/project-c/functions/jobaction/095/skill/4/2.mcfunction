playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.3 0.7
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.5 0.7
particle minecraft:witch ~ ~0.2 ~ 1.5 0.1 1.5 1 300 normal @a
particle minecraft:witch ~ ~0.2 ~ 1.5 0.1 1.5 1 75 force @a
particle minecraft:barrier ~ ~0.2 ~ 1.5 0.1 1.5 1 16 force @a
effect give @s resistance 1 3 true
tag @s add 095_2resistance
execute if score @s counter_2 matches 1.. run scoreboard players remove @s counter_2 1
scoreboard players set @s counter_4 12
function project-c:jobaction/095/replaceitem/4