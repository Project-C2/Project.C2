scoreboard players add @s counter 1
scoreboard players operation #110- playerNumber = @s playerNumber

execute unless score @s counter matches 35.. run function project-c:jobaction/110/skills/04/charge-tick
execute if score @s counter matches 35..99 run function project-c:jobaction/110/skills/04/shot-tick
execute if score @s counter matches 100.. run function project-c:jobaction/110/skills/04/thunder-tick


scoreboard players reset #110- playerNumber
execute if score @s counter matches 75..99 run kill @s
execute if score @s counter matches 112.. run kill @s
