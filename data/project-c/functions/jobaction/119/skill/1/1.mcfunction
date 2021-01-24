execute if entity @s[tag=119flower_adhesion] run function project-c:jobaction/119/skill/1/2
execute if entity @s[scores={subcounter=1}] run data merge entity @s {Glowing:0b}
execute if entity @s[scores={subcounter=1..}] run scoreboard players remove @s subcounter 1
