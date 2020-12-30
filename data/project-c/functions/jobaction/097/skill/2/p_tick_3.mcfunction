scoreboard players remove @s counter_5 1
execute if score @s counter_5 matches ..1 run scoreboard players set @s CT2 1000
execute if score @s counter_5 matches ..1 run clear @s spectral_arrow
execute if score @s counter_5 matches ..1 run scoreboard players reset @s counter_5
