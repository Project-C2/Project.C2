#スキル11
scoreboard players operation #106- playerNumber = @s playerNumber
tag @s remove 106_fuse
scoreboard players reset @s
effect clear @s
tag @s add me
execute as @e[tag=Battle,tag=!me,distance=..4] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/106/items/skill/11/hit
tag @s remove me
data merge entity @s {Fuse:0s}
scoreboard players reset #106-