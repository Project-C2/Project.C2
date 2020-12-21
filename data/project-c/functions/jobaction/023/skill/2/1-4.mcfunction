tp @s ~ ~ ~ ~6 ~
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^2.5 ^ ^ 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^-2.5 ^ ^ 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^ ^ ^2.5 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=RedDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^ ^ ^-2.5 0 0 0 1 1 force @a[team=Red]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^2.5 ^ ^ 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^-2.5 ^ ^ 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^ ^ ^2.5 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=BlueDummy] positioned ~ ~0.35 ~ run particle minecraft:dust 0.33 1 0.33 2 ^ ^ ^-2.5 0 0 0 1 1 force @a[team=Blue]
execute if entity @s[team=RedDummy] if entity @e[team=Blue,distance=..2.5,tag=Battle] run tag @s add 023-starting
execute if entity @s[team=BlueDummy] if entity @e[team=Red,distance=..2.5,tag=Battle] run tag @s add 023-starting
execute if entity @s[tag=023-starting] run function project-c:jobaction/023/skill/2/2