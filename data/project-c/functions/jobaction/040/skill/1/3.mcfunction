scoreboard players add @s counter 1
execute if entity @s[scores={counter=25}] run function project-c:jobaction/040/skill/1/4
execute if entity @s[scores={subcounter=1..}] run function project-c:jobaction/040/skill/1/5
