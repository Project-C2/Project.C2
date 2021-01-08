execute as @a[tag=114-DoingCountDown] run function project-c:jobaction/114/skill/0/schedule_loop/blader_countdown/1


execute if entity @a[tag=114-DoingCountDown,limit=1] run schedule function project-c:jobaction/114/skill/0/schedule_loop/blader_countdown/0 1t replace