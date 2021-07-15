scoreboard players add @s counter 1
particle flame ~ ~1.35 ~ 0.25 0 0.25 0 1 force @a
teleport @s ~ ~ ~ ~1 ~
execute if entity @s[scores={counter=40..}] run function project-c:jobaction/020/skill/2/2
kill @s[scores={counter=80..}]