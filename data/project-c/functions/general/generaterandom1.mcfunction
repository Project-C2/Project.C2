summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] store result score @s counter_1 run data get entity @s UUID[1]
scoreboard players operation @e[tag=RandomAEC] counter_1 %= @s counter_1
scoreboard players operation @s counter_1 = @e[tag=RandomAEC] counter_1
kill @e[tag=RandomAEC]