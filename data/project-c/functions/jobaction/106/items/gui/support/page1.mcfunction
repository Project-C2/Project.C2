#メインP1
#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:12b,tag:{106_gui_item:3b,106_support_page:1b}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] minecraft:writable_book{106_gui_item:3b,106_support_page:1b}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
#scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] 106-support-page 0
replaceitem entity @s[tag=106_page_setup] container.30 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item



#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:14b,tag:{106_gui_item:5b,106_support_page:1b}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] minecraft:arrow{106_gui_item:5b,106_support_page:1b}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
#scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] 106-support-page 2
replaceitem entity @s[tag=106_page_setup] container.35 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item










tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:31b,tag:{106_gui_item:31,106_support_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:31,106_support_page:1}
execute if entity @s if score @s counter_2 matches 1 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s counter_2 1
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run tag @s add skill_no_drop
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/01
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_support_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 31
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_support
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run loot replace block 0 0 0 container.1 loot project-c:neac/106/selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.31 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item


tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:32b,tag:{106_gui_item:32,106_support_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:32,106_support_page:1}
execute if entity @s if score @s counter_2 matches 2 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s counter_2 2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run tag @s add skill_no_drop
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/02
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_support_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 32
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_support
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run loot replace block 0 0 0 container.1 loot project-c:neac/106/selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.32 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item


tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:33b,tag:{106_gui_item:33,106_support_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:33,106_support_page:1}
execute if entity @s if score @s counter_2 matches 3 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s counter_2 3
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run scoreboard players set @s drop2 1
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup,tag=!106_selecting] run tag @s add skill_no_drop
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/03
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_support_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 33
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_support
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.display.Lore[4]
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run loot replace block 0 0 0 container.1 loot project-c:neac/106/selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.33 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item


replaceitem entity @s[tag=106_page_setup] container.34 minecraft:air
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item


#Tagの削除
tag @s[tag=106_page_setup_ready] add 106_page_setup
tag @s[tag=106_page_setup_ready] remove 106_page_setup_ready