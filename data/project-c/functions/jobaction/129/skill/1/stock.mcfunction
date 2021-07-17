scoreboard players operation @s CT1 -= #129-- counter
scoreboard players set #129- counter 1200
scoreboard players operation #129- counter -= @s CT1
scoreboard players set @s CT1 0
scoreboard players operation @s CT1 -= @s counter_1
scoreboard players add @s CT1 1200
scoreboard players operation @s counter_1 = #129- counter