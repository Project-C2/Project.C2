

#GUIリセット
execute if score @s counter_6 matches 1 run function project-c:jobaction/110/gui/weapon/p1
execute if score @s counter_6 matches 2 run function project-c:jobaction/110/gui/weapon/p2

execute if score @s counter_6 matches 2.. run loot replace block 0 0 0 container.3 loot project-c:wnkm/110/page/back
execute if score @s counter_6 matches ..1 run loot replace block 0 0 0 container.8 loot project-c:wnkm/110/page/next

execute if score @s counter_1 matches 1 if score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 2 if score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 7 if score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 3 if score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 4 if score @s counter_6 matches 2 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 5 if score @s counter_6 matches 2 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 6 if score @s counter_6 matches 2 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score @s counter_6 matches 1..7 if data block 0 0 0 Items[].tag.110selecting run loot replace block 0 0 0 container.10 loot project-c:wnkm/110/selecting_insert
execute if score @s counter_6 matches 1..7 if data block 0 0 0 Items[].tag.110selecting run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.Enchantments set value [{}]
execute if score @s counter_6 matches 1..7 if data block 0 0 0 Items[].tag.110selecting run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.display.Name set from block 0 0 0 Items[{Slot:10b}].tag.display.Name
