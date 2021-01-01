# 実行者　-> Server
# 実行位置 -> 0 0 0
execute as @e[tag=Ramen] at @s run function project-c:jobaction/113/skill/0/schedule_loop/0
execute if entity @e[tag=Ramen,limit=1] run schedule function project-c:jobaction/113/skill/0/schedule_loop 1t replace