#ウェポン
tag @s[tag=!106_support,nbt={Inventory:[{Slot:28b,tag:{106_gui_item:1b}}]}] add 106_support
clear @s[tag=!106_support] minecraft:golden_sword{106_gui_item:1b}
execute if entity @s[tag=!106_support,tag=!106_gui_all_setup] unless score @s counter_6 matches 2 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_support,tag=!106_gui_all_setup] unless score @s counter_6 matches 2 run tag @s add 106_page_setup
execute if entity @s[tag=!106_support,tag=!106_gui_all_setup] unless score @s counter_6 matches 2 run scoreboard players set @s counter_6 2


#tag @s[tag=!support] add support_gui_reset
execute unless score @s counter_6 matches 2 run tag @s add 106_support_gui_reset
replaceitem entity @s[tag=!106_support,scores={counter_6=2}] container.28 minecraft:golden_sword{HideFlags:63,106_gui_item:1b,display:{Name:'["",{"text":"サポート","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}]} 1
replaceitem entity @s[tag=106_support_gui_reset] container.28 minecraft:golden_sword{HideFlags:63,106_gui_item:1b,display:{Name:'["",{"text":"サポート","italic":false,"color":"yellow"}]'}} 1


tag @s[scores={counter_6=2}] add 106_support_view
execute if entity @s[tag=106_support_view] run function project-c:jobaction/106/items/gui/support/page1











#Tagの削除
tag @s[tag=106_support] remove 106_support
tag @s[tag=106_support_view] remove 106_support_view
tag @s[tag=106_support_gui_reset] remove 106_support_gui_reset