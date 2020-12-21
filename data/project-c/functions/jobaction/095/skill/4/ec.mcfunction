#execute if entity @s[scores={jobNumber=95,counter_4=2}] run effect give @s resistance 1 3 true
#execute if entity @s[scores={jobNumber=95,counter_4=2}] run tag @s add 095_2resistance
execute if entity @s[scores={jobNumber=95,counter_4=2}] run function project-c:jobaction/095/skill/4/2

