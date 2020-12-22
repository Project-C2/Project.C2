#実行者     -> 108-Confuse = 1..
#実行地点   -> 実行者
###向きをランダムに変える
scoreboard players operation @s counter = #360 counter
function project-c:general/generaterandom

execute if score @s counter matches 256.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/256
execute if score @s counter matches 128.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/128
execute if score @s counter matches 64.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/64
execute if score @s counter matches 32.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/32
execute if score @s counter matches 16.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/16
execute if score @s counter matches 8.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/8
execute if score @s counter matches 4.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/4
execute if score @s counter matches 2.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/2
execute if score @s counter matches 1.. rotated as @s run function project-c:jobaction/108/skill/1/schedule_loop/rotate/1
