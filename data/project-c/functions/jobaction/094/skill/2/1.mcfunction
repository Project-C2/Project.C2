teleport @s ^ ^ ^0.2

execute if entity @s[tag=094-voidBR] run scoreboard players set @e[tag=Battle,team=Blue,distance=..2] 094-void 80
execute if entity @s[tag=094-voidBB] run scoreboard players set @e[tag=Battle,team=Red,distance=..2] 094-void 80


scoreboard players add @s counter 1
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 2 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0.1 5 force
particle minecraft:dust 0 0 0 2 ~ ~ ~ 0 0 0 0.1 3 force
kill @s[scores={counter=100..}]