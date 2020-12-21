execute if entity @s[distance=..1.5] run effect give @s instant_damage 1 1
execute if entity @s[distance=..1.5] run effect give @s resistance 1 0
execute if entity @s[distance=1.5..3.5] run effect give @s instant_damage 1 0
execute at @s run function project-c:jobaction/092/skill/1/kanbotsu
