


execute if score @s counter_3 = #106_skill counter run tag @s add 106_selecting
execute if score @s counter_4 = #106_skill counter run tag @s add 106_selecting
execute if score @s counter_5 = #106_skill counter run tag @s add 106_selecting

execute if score #106_SSP counter matches 1.. if entity @s[tag=106_selecting] run tag @s remove 106_selecting
execute if score #106_SSP counter matches 1 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"light_blue_stained_glass_pane",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"スロット1","italic":false,"color":"yellow"}'}}}
execute if score #106_SSP counter matches 1 if score @s counter_3 = #106_select_skill counter run tag @s add 106_selecting
execute if score #106_SSP counter matches 2 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"light_blue_stained_glass_pane",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"スロット2","italic":false,"color":"yellow"}'}}}
execute if score #106_SSP counter matches 2 if score @s counter_4 = #106_select_skill counter run tag @s add 106_selecting
execute if score #106_SSP counter matches 3 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"light_blue_stained_glass_pane",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"スロット3","italic":false,"color":"yellow"}'}}}
execute if score #106_SSP counter matches 3 if score @s counter_5 = #106_select_skill counter run tag @s add 106_selecting
execute if score #106_SSP counter matches 4 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"barrier",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"戻る","italic":false,"color":"red"}'}}}

execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches -10 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"minecraft:paper",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"前ページへ","italic":false}'}}}
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches -18 run data modify block 0 0 0 Items[{Slot:9b}] merge value {id:"minecraft:paper",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"次ページへ","italic":false}'}}}
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 1 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/01
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 2 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/02
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 3 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/03
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 4 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/04
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 5 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/05
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 6 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/06
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 7 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/07
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 8 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/08
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 9 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/09
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 10 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/10
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 11 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/11
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 12 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/12
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 13 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/13
execute unless score #106_SSP counter matches 1.. if score #106_skill counter matches 14 run loot replace block 0 0 0 container.9 loot project-c:neac/106/skill/14

execute run data modify block 0 0 0 Items[{Slot:9b}].tag.106_gui_item set value 1
execute run data remove block 0 0 0 Items[{Slot:9b}].tag.106_skill
execute run data remove block 0 0 0 Items[{Slot:9b}].tag.106_skill_slot
execute if entity @s[tag=106_selecting] run data modify block 0 0 0 Items[{Slot:9b}].tag.106_selecting set value 1
execute if entity @s[tag=106_selecting,tag=106_SSP] run loot replace block 0 0 0 container.10 loot project-c:neac/106/selecting_insert
execute if score #106_SSP counter matches 1.. if entity @s[tag=106_selecting,tag=106_SSP] run data modify block 0 0 0 Items[{Slot:9b}].id set value blue_stained_glass_pane
execute if entity @s[tag=106_selecting,tag=!106_SSP] if score @s counter_3 = #106_skill counter run loot replace block 0 0 0 container.10 loot project-c:neac/106/skill/slot1_selecting_insert
execute if entity @s[tag=106_selecting,tag=!106_SSP] if score @s counter_4 = #106_skill counter run loot replace block 0 0 0 container.10 loot project-c:neac/106/skill/slot2_selecting_insert
execute if entity @s[tag=106_selecting,tag=!106_SSP] if score @s counter_5 = #106_skill counter run loot replace block 0 0 0 container.10 loot project-c:neac/106/skill/slot3_selecting_insert
execute if entity @s[tag=106_selecting] run data modify block 0 0 0 Items[{Slot:9b}].tag.display.Name set from block 0 0 0 Items[{Slot:10b}].tag.display.Name
execute if entity @s[tag=106_selecting] run data modify block 0 0 0 Items[{Slot:9b}].tag.Enchantments set value [{}]
execute if entity @s[tag=106_selecting] run data remove block 0 0 0 Items[{Slot:9b}].tag.106_selecting
execute if score #106_skill_slot counter matches 0 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:0b}
execute if score #106_skill_slot counter matches 2 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:2b}
execute if score #106_skill_slot counter matches 3 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:3b}
execute if score #106_skill_slot counter matches 4 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:4b}
execute if score #106_skill_slot counter matches 5 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:5b}
execute if score #106_skill_slot counter matches 6 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:6b}
execute if score #106_skill_slot counter matches 7 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:7b}
execute if score #106_skill_slot counter matches 8 run data modify block 0 0 0 Items[{Slot:9b}] merge value {Slot:8b}
tag @s[tag=106_selecting] remove 106_selecting

scoreboard players reset #106_skill
scoreboard players reset #106_skill_slot
scoreboard players reset #106_SSP

