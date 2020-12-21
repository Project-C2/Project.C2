scoreboard players add @s counter 1
kill @s[scores={counter=301..}]

execute if entity @s[scores={counter=..10}] run teleport @s ^ ^ ^1 ~18 ~
execute if entity @s[scores={counter=11..}] run teleport @s ^ ^ ^1 ~9 ~

particle end_rod ~ ~ ~ 0 0 0 0.05 3
particle end_rod ~ ~ ~ 0 1 0 1 0