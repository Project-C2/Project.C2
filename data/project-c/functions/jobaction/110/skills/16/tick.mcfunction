scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 40.. run function project-c:jobaction/110/skills/16/end
tag @s add now
tp @s ^ ^ ^0.7
execute at @s run function project-c:jobaction/110/skills/16/judge-hit
tp @s ^ ^ ^1.4
execute at @s[tag=now] run function project-c:jobaction/110/skills/16/judge-hit
tp @s ^ ^ ^2.1
execute at @s[tag=now] run function project-c:jobaction/110/skills/16/judge-hit
tp @s ^ ^ ^2.8
execute at @s[tag=now] run function project-c:jobaction/110/skills/16/judge-hit

tag @s remove now
scoreboard players reset #dummy
