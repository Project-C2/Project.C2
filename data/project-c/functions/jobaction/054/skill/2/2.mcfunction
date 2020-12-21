particle minecraft:poof ~ ~ ~ 0 0 0 0.3 10 normal @a
particle minecraft:poof ~ ~ ~ 0 0 0 0.3 2 force @a
execute if entity @s[team=RedDummy] as @e[team=!Red,team=!RedDummy,distance=..2.5] run effect give @s minecraft:levitation 4 1
execute if entity @s[team=BlueDummy] as @e[team=!Blue,team=!BlueDummy,distance=..2.5] run effect give @s minecraft:levitation 4 1
kill @s