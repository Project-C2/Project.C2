#スキルP1
tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:30b,tag:{106_gui_item:30,106_skill_page:3}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:30,106_skill_page:3}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] counter_7 2
replaceitem entity @s[tag=!106_gui_item] container.30 minecraft:paper{106_gui_item:30,106_skill_page:3,display:{Name:'{"text":"前ページへ","italic":false}'}}
#replaceitem entity @s[tag=106_page_setup] container.30 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item


#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:35b,tag:{106_gui_item:35,106_skill_page:3}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:35,106_skill_page:3}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!106_gui_item,tag=!106_page_setup] add 106_page_setup_ready
#scoreboard players set @s[tag=!106_gui_item,tag=!106_page_setup] counter_7 2
#replaceitem entity @s[tag=!106_gui_item] container.35 minecraft:paper{106_gui_item:35,106_skill_page:3,display:{Name:'{"text":"次ページへ","italic":false}'}}
replaceitem entity @s[tag=106_page_setup] container.35 minecraft:air
tag @s[tag=106_gui_item] remove 106_gui_item









tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:31b,tag:{106_gui_item:31,106_skill_page:3}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:31,106_skill_page:3}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s counter_6 309
execute if entity @s if score @s counter_3 matches 5 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 5 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 5 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/09
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 3
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 31
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 5 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 5 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 5 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.31 1 mine 0 0 0 air{inv_copy:1b}
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:32b,tag:{106_gui_item:32,106_skill_page:3}}]}] add 106_gui_item
clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:32,106_skill_page:3}
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s counter_6 310
execute if entity @s if score @s counter_3 matches 10 run tag @s add 106_selecting
execute if entity @s if score @s counter_4 matches 10 run tag @s add 106_selecting
execute if entity @s if score @s counter_5 matches 10 run tag @s add 106_selecting
execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/10
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 3
execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 32
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 10 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 10 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 10 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.32 1 mine 0 0 0 air{inv_copy:1b}
#replaceitem entity @s[tag=106_page_setup] container.32 minecraft:air
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:33b,tag:{106_gui_item:33,106_skill_page:3}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:33,106_skill_page:3}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s counter_6 307
#execute if entity @s if score @s counter_3 matches 7 run tag @s add 106_selecting
#execute if entity @s if score @s counter_4 matches 7 run tag @s add 106_selecting
#execute if entity @s if score @s counter_5 matches 7 run tag @s add 106_selecting
#execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/07
#execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 3
#execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 33
#execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
#execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 7 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 7 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 7 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
#execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.33 1 mine 0 0 0 air{inv_copy:1b}
replaceitem entity @s[tag=106_page_setup] container.33 minecraft:air
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item



#tag @s[tag=!106_gui_item,nbt={Inventory:[{Slot:34b,tag:{106_gui_item:34,106_skill_page:3}}]}] add 106_gui_item
#clear @s[tag=!106_gui_item] #project-c:neac/all{106_gui_item:34,106_skill_page:3}
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run tag @s add 106_skill_page_setup
#execute if entity @s[tag=!106_gui_item,tag=!106_page_setup] run scoreboard players set @s counter_6 308
#execute if entity @s if score @s counter_3 matches 8 run tag @s add 106_selecting
#execute if entity @s if score @s counter_4 matches 8 run tag @s add 106_selecting
#execute if entity @s if score @s counter_5 matches 8 run tag @s add 106_selecting
#execute if entity @s[tag=!106_gui_item] run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/08
#execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_skill_page set value 3
#execute if entity @s[tag=!106_gui_item] run data modify block 0 0 0 Items[0].tag.106_gui_item set value 34
#execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill
#execute if entity @s[tag=!106_gui_item] run data remove block 0 0 0 Items[0].tag.106_skill_slot
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_3 matches 8 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_4 matches 8 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] if score @s counter_5 matches 8 run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_selecting_insert
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
#execute if entity @s[tag=!106_gui_item,tag=106_selecting] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
#execute if entity @s[tag=!106_gui_item] run loot replace entity @s container.34 1 mine 0 0 0 air{inv_copy:1b}
replaceitem entity @s[tag=106_page_setup] container.34 minecraft:air
tag @s[tag=106_selecting] remove 106_selecting
tag @s[tag=106_gui_item] remove 106_gui_item









#Tagの削除
tag @s[tag=106_page_setup_ready] add 106_page_setup
tag @s[tag=106_page_setup_ready] remove 106_page_setup_ready