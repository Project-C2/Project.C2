particle minecraft:lava ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.5 1
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute unless block ^ ^ ^0.45 #project-c:wancomatter/like_air run function project-c:jobaction/110/skills/01/hit-block
tp @s ^ ^ ^0.45
execute unless score @s counter matches 101.. unless block ^ ^ ^0.9 #project-c:wancomatter/like_air run function project-c:jobaction/110/skills/01/hit-block
tp @s ^ ^ ^0.9
scoreboard players reset #dummy

execute if score @s counter matches 100.. run kill @s