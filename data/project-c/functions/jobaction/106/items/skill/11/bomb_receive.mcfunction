#モブがダメージ受けた処理

scoreboard players set #106_H counter 10000
execute store result score #106_health counter run data get entity @s Health 10
scoreboard players operation #106_health counter -= #106_H counter
scoreboard players operation @s counter_5 -= #106_health counter
scoreboard players reset #106_H counter
scoreboard players reset #106_health counter
data modify entity @s Health set value 1000f
