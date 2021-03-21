scoreboard players add @s counter 1


execute at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/125/skill/2/reflect
execute at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a
function project-c:jobaction/125/skill/2/reflect

execute at @s run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a

execute if score @s counter matches 120.. run kill @s