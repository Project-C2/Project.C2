#スキルSetup







replaceitem entity @s[tag=106_skill_page_setup] container.27 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.28 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.29 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.30 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.31 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.32 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.33 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.34 minecraft:air
replaceitem entity @s[tag=106_skill_page_setup] container.35 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item

scoreboard players operation #106_select_skill counter = @s counter_6
scoreboard players operation #106_select_skill counter %= #100 counter


tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:27b,tag:{106_gui_item:27,106_select_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:27,106_select_skill_page:1}
execute if entity @s[tag=!106_gui_item] run function project-c:jobaction/106/items/gui/skill/display_selecting

execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_select_skill_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 27
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot

execute if entity @s[tag=!106_gui_item] if score @s counter_3 = #106_select_skill counter run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] if score @s counter_4 = #106_select_skill counter run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] if score @s counter_5 = #106_select_skill counter run tag @s add 106_selecting

execute if entity @s[tag=!106_gui_item,tag=106_selecting] run loot replace block 0 0 0 container.1 loot project-c:neac/106/selecting_insert

execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.27 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:29b,tag:{106_gui_item:29,106_select_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:29,106_select_skill_page:1}
execute if entity @s[tag=!106_gui_item] if score @s counter_3 = #106_select_skill counter run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_4 = #106_select_skill counter run scoreboard players operation @s counter_4 = @s counter_3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_5 = #106_select_skill counter run scoreboard players operation @s counter_5 = @s counter_3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players operation @s counter_3 = #106_select_skill counter
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s counter_6 3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_gui_all_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_skill_no_drop
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
replaceitem entity @s[tag=!106_gui_item,tag=106_selecting] container.29 minecraft:blue_stained_glass_pane{106_gui_item:29,106_select_skill_page:1,display:{Name:'["",{"text":"スロット1","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},HideFlags:35,Enchantments:[{}]}
replaceitem entity @s[tag=!106_gui_item,tag=!106_selecting] container.29 minecraft:light_blue_stained_glass_pane{106_gui_item:29,106_select_skill_page:1,display:{Name:'{"text":"スロット1","italic":false,"color":"yellow"}'}}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item






tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:31b,tag:{106_gui_item:31,106_select_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:31,106_select_skill_page:1}
execute if entity @s[tag=!106_gui_item] if score @s counter_4 = #106_select_skill counter run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_3 = #106_select_skill counter run scoreboard players operation @s counter_3 = @s counter_4
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_5 = #106_select_skill counter run scoreboard players operation @s counter_5 = @s counter_4
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players operation @s counter_4 = #106_select_skill counter
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s counter_6 3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_gui_all_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_skill_no_drop
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
replaceitem entity @s[tag=!106_gui_item,tag=106_selecting] container.31 minecraft:blue_stained_glass_pane{106_gui_item:31,106_select_skill_page:1,display:{Name:'["",{"text":"スロット2","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},HideFlags:35,Enchantments:[{}]} 2
replaceitem entity @s[tag=!106_gui_item,tag=!106_selecting] container.31 minecraft:light_blue_stained_glass_pane{106_gui_item:31,106_select_skill_page:1,display:{Name:'{"text":"スロット2","italic":false,"color":"yellow"}'}} 2
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item






tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:33b,tag:{106_gui_item:33,106_select_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:33,106_select_skill_page:1}
execute if entity @s[tag=!106_gui_item] if score @s counter_5 = #106_select_skill counter run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_3 = #106_select_skill counter run scoreboard players operation @s counter_3 = @s counter_5
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] if score @s counter_4 = #106_select_skill counter run scoreboard players operation @s counter_4 = @s counter_5
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players operation @s counter_5 = #106_select_skill counter
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s counter_6 3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_gui_all_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run tag @s add 106_skill_no_drop
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
replaceitem entity @s[tag=!106_gui_item,tag=106_selecting] container.33 minecraft:blue_stained_glass_pane{106_gui_item:33,106_select_skill_page:1,display:{Name:'["",{"text":"スロット3","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},HideFlags:35,Enchantments:[{}]} 3
replaceitem entity @s[tag=!106_gui_item,tag=!106_selecting] container.33 minecraft:light_blue_stained_glass_pane{106_gui_item:33,106_select_skill_page:1,display:{Name:'{"text":"スロット3","italic":false,"color":"yellow"}'}} 3
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item




tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:35b,tag:{106_gui_item:35,106_select_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] minecraft:barrier{106_gui_item:35,106_select_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup] run scoreboard players set @s counter_6 3
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup] run tag @s add 106_gui_all_setup
execute if entity @s[tag=!106_gui_item,tag=!106_skill_page_setup] run tag @s add 106_page_setup
replaceitem entity @s[tag=!106_gui_item] container.35 minecraft:barrier{106_gui_item:35,106_select_skill_page:1,display:{Name:'{"text":"戻る","italic":false,"color":"red"}'}}
tag @s[tag=106_gui_item] remove 106_gui_item





scoreboard players reset #106_select_skill
