execute as @e[tag=114-DarkHamburgTrident] at @s run function project-c:jobaction/114/skill/1/schedule_loop/7
execute if entity @e[tag=114-DarkHamburgTrident,limit=1] run schedule function project-c:jobaction/114/skill/1/schedule_loop/6 1t replace