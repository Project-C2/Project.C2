
summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invisible:1b,Tags:["this"]}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute at @s anchored eyes positioned ^ ^ ^ as @e[tag=this] run tp @s ~ ~ ~ ~ ~

execute as @e[tag=this] at @s run function project-c:jobaction/129/skill/2/ground-check


execute as @e[tag=this,tag=129-hit-block] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if entity @e[tag=this,tag=129-hit-block,limit=1] at @e[tag=this,tag=129-hit-block,limit=1] run function project-c:jobaction/129/skill/2/totem/set

kill @e[tag=this]


#function project-c:jobaction/129/replaceitem/2