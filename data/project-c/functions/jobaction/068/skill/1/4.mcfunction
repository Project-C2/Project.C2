scoreboard players add @s counter 1
particle minecraft:barrier ~ ~ ~ 0 0 0 0 1
execute as @s if block ^ ^ ^1 minecraft:air at @s run tp @s ^ ^ ^0.9 ~ ~
execute as @s unless block ^ ^ ^1 minecraft:air at @s run particle minecraft:barrier ~ ~ ~ 3 0 3 0 5

kill @s[scores={counter=180..}]