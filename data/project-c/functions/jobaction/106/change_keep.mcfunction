
scoreboard players set @s drop2 1
tag @s add 106_page_setup
tag @s add 106_skill_no_drop
tag @s add 106_drop

execute if entity @s[tag=!106_change_setup] run tag @s add 106_death_skill
execute if entity @s[tag=!106_change_setup] run function project-c:jobaction/106/items/skill/08/check
execute if entity @s[tag=106_change_setup] run tag @s remove 106_change_setup