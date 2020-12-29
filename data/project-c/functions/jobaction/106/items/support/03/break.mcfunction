#サポート6
scoreboard players set @s counter_8 100
execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 1
scoreboard players reset @s shieldBlock
clear @s minecraft:shield{106_support:2}