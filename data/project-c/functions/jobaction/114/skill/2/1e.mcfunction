#実行者     -> tag=judgementCount (playerNumber = 0)
#実行地点   -> 実行者

scoreboard players add @s counter 1
teleport @s @e[sort=nearest,limit=1,tag=judgementCountTarget]

execute if entity @s[scores={counter=10..}] run function project-c:jobaction/001/skill/2/2e