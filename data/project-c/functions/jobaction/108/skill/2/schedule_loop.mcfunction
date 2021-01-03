#実行者　-> Server
#実行位置 -> 0 0 0

execute as @e[tag=CHELGENOCIDE] at @s run function project-c:jobaction/108/skill/2/1
execute if entity @e[tag=CHELGENOCIDE,limit=1] run schedule function project-c:jobaction/108/skill/2/schedule_loop 1t replace