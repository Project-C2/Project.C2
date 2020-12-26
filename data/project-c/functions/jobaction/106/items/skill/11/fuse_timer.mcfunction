#スキル11

scoreboard players add @s counter 1

execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a

execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s counter_1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s counter_2
function project-c:jobaction/106/fall_damage_nullification

execute if score @s counter matches 200.. run function project-c:jobaction/106/items/skill/11/fuse


execute store result score #106_health counter run data get entity @s Health 10
execute if score #106_health counter matches ..9800 run function project-c:jobaction/106/items/skill/11/replace/check
execute if score #106_health counter matches ..9800 run kill @s

scoreboard players reset #106_health