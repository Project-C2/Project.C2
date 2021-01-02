tag @s add 106_page_setup
tag @s[tag=SkillReady1] remove SkillReady1
tag @s[tag=SkillReady2] remove SkillReady2
tag @s[tag=SkillReady3] remove SkillReady3
#function project-c:general/inventoryclear
clear @s #project-c:neac/all{106_item:1}
clear @s compass
clear @s gray_stained_glass_pane
tag @s add 106_drop
#function ex3:general/inventory_changed/execution

#function project-c:jobaction/106/items/gui/set

scoreboard players set #106_max_arrow counter 9
execute if entity @s[scores={counter_2=6}] run scoreboard players add #106_max_arrow counter 3
execute if score @s stockcounter > #106_max_arrow counter run scoreboard players operation @s stockcounter = #106_max_arrow counter
scoreboard players reset #106_max_arrow

#矢の自己リロード実行
execute if score @s counter_1 matches 4..5 store result score #106_self_reload counter run data get entity @s SelectedItemSlot
execute if score @s counter_1 matches 4..5 if score #106_self_reload counter matches 0 run tag @s add 106_self_reload

execute if score @s[tag=106_self_reload] MagicFatigue matches 1.. run tag @s remove 106_self_reload

execute as @s[tag=106_self_reload] run function project-c:jobaction/106/items/auxiliary/arrow/reload/self/execution

execute if entity @s[tag=106_self_reload] run tag @s remove 106_self_reload

scoreboard players reset #106_self_reload counter