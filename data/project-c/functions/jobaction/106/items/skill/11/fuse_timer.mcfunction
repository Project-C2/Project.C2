#スキル11

scoreboard players add @s counter 1

execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a

execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s counter_1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s counter_2
execute unless data entity @s ActiveEffects[{Id:24b}] if data entity @s Glowing run data modify entity @s Glowing set value 0b
execute if data entity @s ActiveEffects[{Id:24b}] unless data entity @s Glowing run data modify entity @s Glowing set value 1b
data modify entity @s FallDistance set value 0

execute if score @s counter matches 200.. run function project-c:jobaction/106/items/skill/11/fuse

