#実行者     -> tag=PSCount (playerNumber = 0)
#実行地点   -> 実行者

scoreboard players add @s counter 1
teleport @s @e[tag=PSCountTarget,sort=nearest,limit=1]

execute if entity @s[scores={counter=10..}] run function project-c:jobaction/002/skill/1/2e