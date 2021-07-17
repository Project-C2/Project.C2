scoreboard players add @s counter 1

particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 2 1.45

teleport @s ^ ^ ^1 ~ ~1

execute as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @e[limit=1,sort=nearest,tag=020-StarRod] teamNumber at @s run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/020/skill/1/2

execute as @s unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run kill @s
kill @s[scores={counter=10..}]