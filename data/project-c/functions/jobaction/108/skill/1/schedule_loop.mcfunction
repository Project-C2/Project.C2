#実行者     -> Server
#実行地点   -> 0 0 0
###混乱
execute as @a[scores={108-Confuse=1..}] at @s run function project-c:jobaction/108/skill/1/schedule_loop/0
execute if entity @a[scores={108-Confuse=1..},limit=1] run schedule function project-c:jobaction/108/skill/1/schedule_loop 1t replace