#実行者     -> tag=judgementCount (playerNumber = 1..)
#実行地点   -> 実行者

scoreboard players add @s counter 1

execute if entity @s[scores={counter=10..}] run function project-c:jobaction/001/skill/2/2p