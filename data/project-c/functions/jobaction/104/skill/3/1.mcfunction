scoreboard players add @s counter_4 1
execute if score @s counter_4 matches ..4 run effect give @s slowness 1 6 true
execute if score @s counter_4 matches ..24 run tp @s @s
execute if score @s counter_4 matches ..24 run function project-c:jobaction/104/skill/3/sound
execute if score @s counter_4 matches 24 run function project-c:jobaction/104/skill/3/2


execute if score @s counter_4 matches 200.. run function project-c:jobaction/104/skill/3/end