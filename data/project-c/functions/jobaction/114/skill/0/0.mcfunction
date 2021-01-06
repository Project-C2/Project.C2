scoreboard players set @s counter 40
tag @s add 114-DoingCountDown
schedule function project-c:jobaction/114/skill/0/schedule_loop/blader_countdown/0 1t replace
effect give @s minecraft:slowness 2 4 true