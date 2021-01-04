particle minecraft:falling_dust minecraft:black_wool ~ ~ ~ 0.5 0.5 0.5 0.1 1 force @a
particle minecraft:falling_dust minecraft:black_wool ~ ~ ~ 0.5 0.5 0.5 0.1 4 normal @a

scoreboard players operation #116- playerNumber = @s playerNumber
execute as @e[tag=116_1AEC] if score @s playerNumber = #116- playerNumber run kill @s
