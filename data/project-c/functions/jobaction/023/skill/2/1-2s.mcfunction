scoreboard players add @s counter 1
tp @s ^ ^ ^0.433
execute if entity @s[team=RedDummy] run particle minecraft:dust 0.67 0 0.67 2.4 ~ ~ ~ 0 0 0 1 1 normal @a[team=Red]
execute if entity @s[team=BlueDummy] run particle minecraft:dust 0.67 0 0.67 2.4 ~ ~ ~ 0 0 0 1 1 normal @a[team=Blue]
tp @s[scores={counter=10..}] ~ ~ ~ ~120 ~
scoreboard players set @s[scores={counter=10..}] counter 0