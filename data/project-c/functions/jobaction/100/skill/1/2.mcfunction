scoreboard players add @s counter 1
execute if entity @s[scores={counter=160..}] run particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.5 3 force
kill @s[scores={counter=160..}]