scoreboard players add @s counter 1
scoreboard players operation #124- playerNumber = @s playerNumber

execute unless score @s counter matches 35.. run function project-c:jobaction/124/skill/2/charge-tick
execute if score @s counter matches 35..40 run function project-c:jobaction/124/skill/2/shot-tick
execute if score @s counter matches 41.. run function project-c:jobaction/124/skill/2/storm-tick


scoreboard players reset #124-
