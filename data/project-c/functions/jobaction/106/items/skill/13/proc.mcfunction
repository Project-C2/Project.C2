#スキル16

execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force

scoreboard players add @s counter 1

execute if score @s counter matches ..39 run tp @s ~ ~0.2 ~
execute if score @s counter matches 40 run data merge entity @s {NoAI:1b}


execute if entity @s[tag=106_perforate_bullet_no_1] if score @s counter matches 50 run tag @s add 106_go
execute if entity @s[tag=106_perforate_bullet_no_2] if score @s counter matches 60 run tag @s add 106_go
execute if entity @s[tag=106_perforate_bullet_no_3] if score @s counter matches 70 run tag @s add 106_go

execute as @e[nbt={Invulnerable:1b}] run tag @s add 106_perforate_d-target
execute as @e[nbt={Marker:1b}] run tag @s add 106_perforate_d-target

execute if entity @s[tag=!106_go_tp,team=Red] if score @s counter matches 40.. as @e[team=!Red,tag=Battle,tag=!106_perforate_d-target] run tag @s add 106_perforate_aim_target_candidacy
execute if entity @s[tag=!106_go_tp,team=Blue] if score @s counter matches 40.. as @e[team=!Blue,tag=Battle,tag=!106_perforate_d-target] run tag @s add 106_perforate_aim_target_candidacy
execute if entity @s[tag=!106_go_tp] if score @s counter matches 40.. facing entity @e[tag=Battle,tag=106_perforate_aim_target_candidacy,sort=nearest,limit=1] eyes run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!106_go_tp] if score @s counter matches 40.. if entity @e[tag=106_perforate_aim_target_candidacy,limit=1] as @e[tag=106_perforate_aim_target_candidacy] run tag @s remove 106_perforate_aim_target_candidacy


execute if entity @s[tag=106_go] run tag @s add 106_go_tp
execute if entity @s[tag=106_go] at @s run function project-c:jobaction/106/items/skill/13/particle

execute if entity @s[tag=106_go_tp] run function project-c:jobaction/106/items/skill/13/shot

execute if entity @s[tag=106_go] run tag @s remove 106_go
execute as @e[tag=106_perforate_d-target] run tag @s remove 106_perforate_d-target