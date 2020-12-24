
execute if score @s counter_3 matches 2.. run scoreboard players remove @s counter_3 1
scoreboard players reset @s counter_5
scoreboard players set @s OutCombat 4000
execute if score @s counter_4 > @s counter_3 run tag @s add 099_death_item_shift
execute if entity @s[tag=099_death_item_shift] run scoreboard players remove @s counter_4 1
execute if entity @s[tag=099_death_item_shift] run function project-c:jobaction/099/skill/3/item_shift
execute if entity @s[tag=099_death_item_shift] run tag @s remove 099_death_item_shift
tag @s add 099_death

