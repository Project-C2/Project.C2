scoreboard players add @s counter 1
execute if entity @s[scores={counter=..119}] run time add 5s
execute if entity @s[scores={counter=120}] run time set midnight
execute if entity @s[scores={counter=721..}] run time add 5s
execute if entity @s[scores={counter=840}] run time set noon

kill @s[scores={counter=840..}]