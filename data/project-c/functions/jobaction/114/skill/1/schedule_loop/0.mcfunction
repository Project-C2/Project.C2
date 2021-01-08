execute as @e[tag=114-DarkHamburg] at @s run function project-c:jobaction/114/skill/1/schedule_loop/common
execute as @e[tag=114-DarkHamburg,tag=!114-Launched] at @s run function project-c:jobaction/114/skill/1/schedule_loop/1
execute as @e[tag=114-DarkHamburg,tag=114-Launched] at @s run function project-c:jobaction/114/skill/1/schedule_loop/3
execute if entity @e[tag=114-DarkHamburg,limit=1] run schedule function project-c:jobaction/114/skill/1/schedule_loop/0 1t replace
