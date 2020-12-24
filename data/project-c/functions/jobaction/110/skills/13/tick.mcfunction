scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 40.. run kill @s
tag @s add now-manaGun
tp @s ^ ^ ^0.75
execute at @s run function project-c:jobaction/110/skills/13/judge-hit
tp @s ^ ^ ^1.5
execute at @s run function project-c:jobaction/110/skills/13/judge-hit
tp @s ^ ^ ^2.25
execute at @s run function project-c:jobaction/110/skills/13/judge-hit
tp @s ^ ^ ^3.0
execute at @s run function project-c:jobaction/110/skills/13/judge-hit

tag @s remove now-manaGun
scoreboard players reset #dummy
