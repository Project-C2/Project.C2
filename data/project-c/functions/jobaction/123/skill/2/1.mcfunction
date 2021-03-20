scoreboard players add @s counter 1
execute if score @s counter matches 5..14 run function project-c:jobaction/123/skill/2/3
execute if score @s counter matches 20..120 run function project-c:jobaction/123/skill/2/2
execute if score @s counter matches 140.. run function project-c:jobaction/123/skill/2/end