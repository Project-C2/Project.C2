scoreboard players add @s counter 1
particle minecraft:block yellow_stained_glass ~ ~ ~ 0.5 0.5 0.5 0.05 5 force @a
particle minecraft:dust 1 1 0 1 ~ ~ ~ 0 0 0 0 2 force @a
kill @s[scores={counter=5..}]
