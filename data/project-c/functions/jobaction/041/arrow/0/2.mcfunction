scoreboard players add @e[tag=041-diamond-ef] counter 1
execute as @e[tag=041-diamond-ef] if score @s counter matches 1 at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 80 normal @a
execute as @e[tag=041-diamond-ef] if score @s counter matches 1 at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 20 force @a
execute as @e[tag=041-diamond-ef] if score @s counter matches 1 at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 2
execute as @e[tag=041-diamond-ef] store result entity @s Rotation[0] float -7 run scoreboard players get @s counter
execute as @e[tag=041-diamond-ef] at @s positioned ~ ~0.3 ~ run function project-c:jobaction/041/arrow/0/2-circle
execute as @e[tag=041-diamond-ef] if score @s counter matches 12.. at @s run function project-c:jobaction/041/arrow/0/2-20