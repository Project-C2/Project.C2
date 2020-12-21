scoreboard players add @s counter 1
teleport @s ^ ^ ^0.25
execute unless block ^ ^ ^1 air run kill @s
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.01 2
kill @s[scores={counter=80..}]