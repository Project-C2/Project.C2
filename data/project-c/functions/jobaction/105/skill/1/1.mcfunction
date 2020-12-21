scoreboard players add @s counter 1
execute if data entity @s {OnGround:1b} run function project-c:jobaction/105/skill/1/2
execute if score @s counter matches 60.. run kill @s