execute if entity @s[scores={counter_1=-2}] run particle minecraft:end_rod ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute if entity @s[scores={counter_1=2}] run particle minecraft:end_rod ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute unless entity @s[scores={counter_1=2}] unless entity @s[scores={counter_1=-2}] run particle minecraft:end_rod ~ ~4 ~ 3.5 3.5 3.5 0.2 3 force @a
particle minecraft:cloud ~ ~ ~ 2 2 2 0.2 12 normal @a
#particle minecraft:cloud ~ ~ ~ 3 4 3 0.1 1 normal @a
particle block minecraft:glass ~ ~ ~ 1 1 1 0.1 4 normal @a
particle block minecraft:glass ~ ~ ~ 1 1 1 0.1 1 force @a

execute rotated ~000 ~ run particle minecraft:cloud ^2.1 ^ ^ 0 0.4 0 1.1 0 force @a
execute rotated ~120 ~ run particle minecraft:cloud ^2.1 ^ ^ 0 0.4 0 1.2 0 force @a
execute rotated ~240 ~ run particle minecraft:cloud ^2.1 ^ ^ 0 0.4 0 1.3 0 force @a

execute rotated ~060 ~ run particle minecraft:cloud ^2.8 ^ ^ 0 0.4 0 0.6 0 force @a
execute rotated ~180 ~ run particle minecraft:cloud ^2.8 ^ ^ 0 0.4 0 0.7 0 force @a
execute rotated ~300 ~ run particle minecraft:cloud ^2.8 ^ ^ 0 0.4 0 0.7 0 force @a
