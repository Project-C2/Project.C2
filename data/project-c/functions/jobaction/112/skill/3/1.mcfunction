scoreboard players add @s counter 1
particle minecraft:block blackstone ~ ~ ~ 4 0 4 1 40
execute if entity @s[scores={counter=11..},tag=112_bulletRed] run function project-c:jobaction/112/skill/3/2r
execute if entity @s[scores={counter=11..},tag=112_bulletBlue] run function project-c:jobaction/112/skill/3/2b
kill @s[scores={counter=41..}]