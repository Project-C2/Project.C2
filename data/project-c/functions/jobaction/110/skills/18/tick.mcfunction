scoreboard players add @s counter 1

execute unless score @s counter matches 35.. run function project-c:jobaction/110/skills/18/charge-tick
execute if score @s counter matches 35..99 run function project-c:jobaction/110/skills/18/shot-tick
execute if score @s counter matches 100.. run function project-c:jobaction/110/skills/18/bind-tick

execute if score @s counter matches 75..99 run kill @s
execute if score @s counter matches 132.. run kill @s
