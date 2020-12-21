scoreboard players add @s counter 1
scoreboard players add @s counter_3 1
tp @s ^ ^ ^0.433
particle minecraft:dust 0 1 1 2.4 ~ ~ ~ 0 0 0 1 1 normal @a
tp @s[scores={counter=10..}] ~ ~ ~ ~120 ~
scoreboard players set @s[scores={counter=10..}] counter 0
kill @s[scores={counter_3=40..}]