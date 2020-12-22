#ウェポン
tag @s[tag=!106_weapon,nbt={Inventory:[{Slot:27b,tag:{106_gui_item:0b}}]}] add 106_weapon
clear @s[tag=!106_weapon] minecraft:iron_sword{106_gui_item:0b}
execute if entity @s[tag=!106_weapon,tag=!106_gui_all_setup] unless score @s counter_6 matches 1 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_weapon,tag=!106_gui_all_setup] unless score @s counter_6 matches 1 run tag @s add 106_page_setup
execute if entity @s[tag=!106_weapon,tag=!106_gui_all_setup] unless score @s counter_6 matches 1 run scoreboard players set @s counter_6 1


#tag @s[tag=!weapon] add weapon_gui_reset
execute unless score @s counter_6 matches 1 run tag @s add 106_weapon_gui_reset
replaceitem entity @s[tag=!106_weapon,scores={counter_6=1}] container.27 minecraft:iron_sword{HideFlags:63,106_gui_item:0b,display:{Name:'["",{"text":"ウェポン","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}]} 1
replaceitem entity @s[tag=106_weapon_gui_reset] container.27 minecraft:iron_sword{HideFlags:63,106_gui_item:0b,display:{Name:'["",{"text":"ウェポン","italic":false,"color":"yellow"}]'}} 1


tag @s[scores={counter_6=1}] add 106_weapon_view
execute if entity @s[tag=106_weapon_view] run function project-c:jobaction/106/items/gui/weapon/page1











#Tagの削除
tag @s[tag=106_weapon] remove 106_weapon
tag @s[tag=106_weapon_view] remove 106_weapon_view
tag @s[tag=106_weapon_gui_reset] remove 106_weapon_gui_reset