#自己リロード実行
scoreboard players set #106_max_arrow counter 7
execute if entity @s[scores={counter_2=6}] run scoreboard players add #106_max_arrow counter 3
execute if entity @s[tag=106_arrow_reload_check] unless score @s stockcounter >= #106_max_arrow counter unless score @s MagicFatigue matches 0.. run tag @s add 106_arrow_reload
execute if entity @s[tag=!106_arrow_reload] unless score @s stockcounter >= #106_max_arrow counter unless score @s MagicFatigue matches 1.. run tag @s add 106_arrow_reload_check
execute if entity @s[tag=106_arrow_reload_check] run scoreboard players set @s MagicFatigue -6
execute if entity @s[tag=106_arrow_reload] run scoreboard players set @s MagicFatigue 80
execute if entity @s[tag=106_arrow_reload] run function project-c:jobaction/106/items/auxiliary/arrow/reload/execution
execute if entity @s[tag=106_arrow_reload] run tag @s remove 106_arrow_reload
scoreboard players reset #106_max_arrow