scoreboard players operation @s counter_2 = @s counter_1
execute if entity @s run scoreboard players operation @s counter_2 /= #3 counter
scoreboard players operation @s counter_4 = @s counter_2
scoreboard players add @s counter_4 40
scoreboard players set @s counter_1 0
particle minecraft:explosion ^ ^1 ^1 0 0 0 1 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0