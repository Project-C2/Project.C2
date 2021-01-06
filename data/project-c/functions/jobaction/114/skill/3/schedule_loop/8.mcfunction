scoreboard players add @s counter_2 1
execute if score @s counter_2 matches 12 run scoreboard players set @s counter_2 0
execute if score @s counter matches 0..500 if score @s counter_1 = @s counter_2 run replaceitem entity @s armor.head minecraft:gold_block 1
execute if score @s counter matches 0..500 if score @s counter_3 = @s counter_2 run replaceitem entity @s armor.head minecraft:iron_block 1
execute if score @s counter matches 500 run replaceitem entity @s armor.head minecraft:iron_block 1
