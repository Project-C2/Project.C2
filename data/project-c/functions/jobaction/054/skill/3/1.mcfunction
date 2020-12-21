scoreboard players add @s counter_3 1
execute if score @s counter_3 matches 9.. run tag @s add 054slow_falling
execute if score @s counter_3 matches 9.. run effect give @s minecraft:slow_falling 60 0
execute if score @s counter_3 matches 9.. run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.5 1.1
execute if score @s counter_3 matches 9.. run particle minecraft:end_rod ~ ~ ~ 3 3 3 0 120 normal @a
execute if score @s counter_3 matches 9.. run particle minecraft:end_rod ~ ~ ~ 3 3 3 0 30 force @a
execute if score @s counter_3 matches 9.. run gamemode adventure @s
execute if score @s counter_3 matches 9.. run scoreboard players reset @s counter_3