scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
tp @s ^ ^ ^0.606
particle minecraft:dust 0.67 0 0 4 ~ ~ ~ 0 0 0 1 1 normal @a
tp @s[scores={counter=20..}] ~ ~ ~ ~120 ~
scoreboard players set @s[scores={counter=20..}] counter 0
kill @s[scores={subcounter=100..}]