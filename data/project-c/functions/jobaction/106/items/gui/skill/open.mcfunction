#スキル
tag @s[tag=!106_skill_tab,nbt={Inventory:[{Slot:29b,tag:{106_gui_item:2b}}]}] add 106_skill_tab
clear @s[tag=!106_skill_tab] minecraft:campfire{106_gui_item:2b}
execute if entity @s[tag=!106_skill_tab,tag=!106_gui_all_setup] unless score @s counter_6 matches 3 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_skill_tab,tag=!106_gui_all_setup] unless score @s counter_6 matches 3 run tag @s add 106_page_setup
execute if entity @s[tag=!106_skill_tab,tag=!106_gui_all_setup] unless score @s counter_6 matches 3 run scoreboard players set @s counter_6 3


#tag @s[tag=!skill] add Skillgui_reset
execute unless score @s counter_6 matches 3 run tag @s add 106_skillgui_reset
replaceitem entity @s[tag=!106_skill_tab,scores={counter_6=3}] container.29 minecraft:campfire{HideFlags:63,106_gui_item:2b,display:{Name:'["",{"text":"スキル","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}]} 1
replaceitem entity @s[tag=106_skillgui_reset] container.29 minecraft:campfire{HideFlags:63,106_gui_item:2b,display:{Name:'["",{"text":"スキル","italic":false,"color":"yellow"}]'}} 1


tag @s[scores={counter_6=3}] add 106_skill_view
execute if entity @s[tag=106_skill_view,scores={counter_7=1}] run function project-c:jobaction/106/items/gui/skill/page1
execute if entity @s[tag=106_skill_view,scores={counter_7=2}] run function project-c:jobaction/106/items/gui/skill/page2
execute if entity @s[tag=106_skill_view,scores={counter_7=3}] run function project-c:jobaction/106/items/gui/skill/page3











#Tagの削除
tag @s[tag=106_skill_tab] remove 106_skill_tab
tag @s[tag=106_skill_view] remove 106_skill_view
tag @s[tag=106_skillgui_reset] remove 106_skillgui_reset