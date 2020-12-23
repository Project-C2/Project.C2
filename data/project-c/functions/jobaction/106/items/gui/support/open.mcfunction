#サポート
function project-c:jobaction/106/items/gui/support/page1

execute if score @s counter_2 matches 1 run data modify block 0 0 0 Items[{Slot:4b}].tag.106_selecting set value 1
execute if score @s counter_2 matches 2 run data modify block 0 0 0 Items[{Slot:5b}].tag.106_selecting set value 1
execute if score @s counter_2 matches 3 run data modify block 0 0 0 Items[{Slot:6b}].tag.106_selecting set value 1
execute if score @s counter_2 matches 4 run data modify block 0 0 0 Items[{Slot:7b}].tag.106_selecting set value 1
execute if score @s counter_2 matches 5 run data modify block 0 0 0 Items[{Slot:8b}].tag.106_selecting set value 1
execute if score @s counter_2 matches 1..5 if data block 0 0 0 Items[].tag.106_selecting run loot replace block 0 0 0 container.10 loot project-c:neac/106/selecting_insert
execute if score @s counter_2 matches 1..5 if data block 0 0 0 Items[].tag.106_selecting run data modify block 0 0 0 Items[{tag:{106_selecting:1}}].tag.Enchantments set value [{}]
execute if score @s counter_2 matches 1..5 if data block 0 0 0 Items[].tag.106_selecting run data modify block 0 0 0 Items[{tag:{106_selecting:1}}].tag.display.Name set from block 0 0 0 Items[{Slot:10b}].tag.display.Name
execute if score @s counter_2 matches 1..5 if data block 0 0 0 Items[].tag.106_selecting run data remove block 0 0 0 Items[{tag:{106_selecting:1}}].tag.106_selecting

