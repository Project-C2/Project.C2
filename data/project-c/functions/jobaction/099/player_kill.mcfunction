scoreboard players operation #job99_hold counter = @s counter_5
scoreboard players operation @s counter_5 = #job99_pahse_shift counter
scoreboard players operation @s counter_5 /= #2 counter
execute if entity @s[tag=099-S2-in-area-own] run scoreboard players operation @s counter_5 *= #20 counter
execute if entity @s[tag=099-S2-in-area-own] run scoreboard players operation @s counter_5 /= #100 counter
scoreboard players operation @s counter_5 += #job99_hold counter
scoreboard players reset #job99_hold counter
scoreboard players reset @s playerKills