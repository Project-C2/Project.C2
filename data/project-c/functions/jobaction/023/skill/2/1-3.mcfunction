scoreboard players add @s counter 1
tp @s ~ ~ ~ ~6 ~
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^3.0 ^ ^ 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^-3.0 ^ ^ 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^3.0 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^-3.0 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^3.0 ^ ^ 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^-3.0 ^ ^ 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^3.0 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^-3.0 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[scores={counter=60..}] run function project-c:jobaction/023/skill/2/2
kill @s[scores={counter=60..}]