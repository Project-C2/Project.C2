execute store result score @s counter_4 run data get entity @s Motion[0] 1000
execute store result score @s counter_5 run data get entity @s Motion[1] 1000
execute store result score @s counter_6 run data get entity @s Motion[2] 1000
scoreboard players operation @s counter_4 -= @s counter_7
scoreboard players operation @s counter_5 -= @s counter_8
scoreboard players operation @s counter_6 -= @s counter_9
execute unless score @s counter_4 matches -8..8 run scoreboard players set @s counter 1000
execute unless score @s counter_5 matches -8..8 run scoreboard players set @s counter 1000
execute unless score @s counter_6 matches -8..8 run scoreboard players set @s counter 1000