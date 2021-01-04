particle minecraft:cloud ~ ~ ~ 0.05 0.05 0.05 0.2 1 normal @a

scoreboard players operation #116- playerNumber = @s playerNumber
execute as @e[tag=116_3AEC] if score @s playerNumber = #116- playerNumber run kill @s
