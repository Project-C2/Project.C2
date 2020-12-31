scoreboard players add @s counter 1
execute if entity @s[scores={counter=35..}] run function project-c:jobaction/026/skill/1/2
execute if entity @s[scores={subcounter=9..}] run kill @s
particle minecraft:fishing ~ ~ ~ 3 3 3 0 12 normal @a
particle minecraft:fishing ~ ~ ~ 3 3 3 0 3 force @a
execute facing ^1 ^ ^ run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^1 ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^ ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^-1 ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^-1 ^ ^ run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^-1 ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^ ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
execute facing ^1 ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^8 0 0 0 0 1
tp @s ~ ~ ~ ~3 ~
