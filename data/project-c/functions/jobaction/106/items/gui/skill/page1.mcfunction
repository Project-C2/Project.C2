#スキルP1
#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:30b,tag:{106_gui_item:30,106_skill_page:2}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:30,106_skill_page:2}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
#scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] 106-skill-page 1
#replaceitem entity @s[tag=!106_gui_item] container.30 minecraft:paper{106_gui_item:30,106_skill_page:2,display:{Name:'{"text":"前ページへ","italic":false}'}}
replaceitem entity @s[tag=106_page_setup] container.30 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item


tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:35b,tag:{106_gui_item:35,106_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:35,106_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] 106-skill-page 2
replaceitem entity @s[tag=!106_gui_item] container.35 minecraft:paper{106_gui_item:35,106_skill_page:1,display:{Name:'{"text":"次ページへ","italic":false}'}}
tag @s[tag=106_gui_item] remove 106_gui_item









tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:31b,tag:{106_gui_item:31,106_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:31,106_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s 106-tab 301
execute if entity @s if score @s counter_3 matches 1 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 1 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 1 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/01
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 31
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 1 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 1 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 1 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.31 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:32b,tag:{106_gui_item:32,106_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:32,106_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s 106-tab 302
execute if entity @s if score @s counter_3 matches 2 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 2 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 2 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/02
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 32
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 2 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 2 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 2 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.32 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:33b,tag:{106_gui_item:33,106_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:33,106_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s 106-tab 303
execute if entity @s if score @s counter_3 matches 3 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 3 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 3 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/03
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 33
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 3 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 3 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 3 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.33 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:34b,tag:{106_gui_item:34,106_skill_page:1}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:34,106_skill_page:1}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s 106-tab 304
execute if entity @s if score @s counter_3 matches 4 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 4 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 4 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/04
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 1
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 34
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 4 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 4 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 4 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.34 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item









#Tagの削除
tag @s[tag=106_page_setup_ready] add 106_page_setup
tag @s[tag=106_page_setup_ready] remove 106_page_setup_ready