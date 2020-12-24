#実行者     -> Tag = CHELGENOCIDE
#実行地点   -> 実行者

execute if score @s counter matches 0..7 run function project-c:jobaction/108/skill/2/particle/0
execute if score @s counter matches 8..14 run function project-c:jobaction/108/skill/2/particle/1
execute if score @s counter matches 15..25 run function project-c:jobaction/108/skill/2/particle/2

execute if score @s counter matches 3 run function project-c:jobaction/108/skill/2/sound/0
execute if score @s counter matches 5 run function project-c:jobaction/108/skill/2/sound/1
execute if score @s counter matches 7 run function project-c:jobaction/108/skill/2/sound/2
execute if score @s counter matches 9 run function project-c:jobaction/108/skill/2/sound/3
execute if score @s counter matches 11 run function project-c:jobaction/108/skill/2/sound/4
execute if score @s counter matches 13 run function project-c:jobaction/108/skill/2/sound/5
execute if score @s counter matches 15 run function project-c:jobaction/108/skill/2/sound/6


execute if score @s counter matches 30 run function project-c:jobaction/108/skill/2/2
scoreboard players add @s counter 1