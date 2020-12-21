scoreboard players remove @s counter_3 1
execute if score @s counter_3 matches ..-107 run effect clear @s levitation
execute if score @s counter_3 matches ..-107 run scoreboard players reset @s counter_3
