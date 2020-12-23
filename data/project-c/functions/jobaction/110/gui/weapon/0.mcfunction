

#GUIリセット
function project-c:jobaction/110/gui/weapon/p1

execute if score @s counter_1 matches 1 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 2 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 3 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 4 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 5 run data modify block 0 0 0 Items[{Slot:8b}].tag.110selecting set value 1b
execute if score @s counter_1 matches 1..5 run loot replace block 0 0 0 container.10 loot project-c:wnkm/110/selecting_insert
execute if score @s counter_1 matches 1..5 run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.Enchantments set value [{}]
execute if score @s counter_1 matches 1..5 run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.display.Name set from block 0 0 0 Items[{Slot:10b}].tag.display.Name
