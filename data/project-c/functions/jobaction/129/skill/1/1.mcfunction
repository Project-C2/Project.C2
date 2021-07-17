execute if data entity @s {NoGravity:1b} run data merge entity @s {NoGravity:0b}

execute if data entity @s {OnGround:0b} run particle minecraft:dust_color_transition 1 .5 0 1 1 0 0 ~ ~ ~ 0 0 0 0 1 force
execute if data entity @s {OnGround:0b} run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute if data entity @s {OnGround:0b} run tag @s add 129-silenth-deploy-stand-by
execute if data entity @s[tag=129-silenth-deploy-stand-by] {OnGround:1b} run tag @s add 129-silenth-deploy
execute if data entity @s[tag=129-silenth-deploy-stand-by] {OnGround:1b} run tag @s remove 129-silenth-deploy-stand-by

data merge entity @s {Fire:0}

execute if entity @s[tag=129-silenth-deploy,tag=!129-silenth-deploying] positioned ~ ~.7 ~ run function project-c:jobaction/129/skill/1/deploy
execute if entity @s[tag=129-silenth-deploying] positioned ~ ~.7 ~ run function project-c:jobaction/129/skill/1/deploying