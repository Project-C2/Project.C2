particle item gold_block ~ ~ ~ 0 0 0 0.3 40 normal @a
particle item gold_block ~ ~ ~ 0 0 0 0.3 10 force @a
scoreboard players add @s counter 1
execute if score @s counter matches 3.. run kill @s
