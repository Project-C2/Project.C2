summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] store result score @s counter_2 run data get entity @s UUID[1]
scoreboard players operation @e[tag=RandomAEC] counter_2 %= @s counter_2
scoreboard players operation @s counter_2 = @e[tag=RandomAEC] counter_2
kill @e[tag=RandomAEC]