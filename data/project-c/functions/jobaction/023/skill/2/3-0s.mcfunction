scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
tp @s ^ ^ ^0.606
execute if entity @s[scores={subcounter=..100}] run particle minecraft:dust 1 1 1 4 ~ ~ ~ 0 0 0 1 1 normal @a
execute if entity @s[scores={subcounter=101..200}] run particle minecraft:dust 0.67 0.67 0.67 4 ~ ~ ~ 0 0 0 1 1 normal @a
execute if entity @s[scores={subcounter=201..300}] run particle minecraft:dust 0.33 0.33 0.33 4 ~ ~ ~ 0 0 0 1 1 normal @a
execute if entity @s[scores={subcounter=301..}] run particle minecraft:dust 0 0 0 4 ~ ~ ~ 0 0 0 1 1 normal @a
tp @s[scores={counter=20..}] ~ ~ ~ ~120 ~
scoreboard players set @s[scores={counter=20..}] counter 0
kill @s[scores={subcounter=380..}]