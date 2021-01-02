execute if score #110- counter_5 matches 1 if score @s counter_8 matches 1 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 2 if score @s counter_8 matches 1 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 3 if score @s counter_8 matches 1 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 17 if score @s counter_8 matches 1 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 20 if score @s counter_8 matches 2 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 19 if score @s counter_8 matches 2 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 18 if score @s counter_8 matches 2 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 4 if score @s counter_8 matches 2 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 5 if score @s counter_8 matches 3 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 6 if score @s counter_8 matches 3 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 7 if score @s counter_8 matches 3 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 8 if score @s counter_8 matches 3 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 9 if score @s counter_8 matches 4 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 10 if score @s counter_8 matches 4 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 11 if score @s counter_8 matches 4 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 12 if score @s counter_8 matches 4 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 13 if score @s counter_8 matches 5 run data modify block 0 0 0 Items[{Slot:4b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 14 if score @s counter_8 matches 5 run data modify block 0 0 0 Items[{Slot:5b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 15 if score @s counter_8 matches 5 run data modify block 0 0 0 Items[{Slot:6b}].tag.110selecting set value 1b
execute if score #110- counter_5 matches 16 if score @s counter_8 matches 5 run data modify block 0 0 0 Items[{Slot:7b}].tag.110selecting set value 1b

execute if data block 0 0 0 {Items:[{tag:{110selecting:1b}}]} run loot replace block 0 0 0 container.10 loot project-c:wnkm/110/selecting_insert
execute if data block 0 0 0 {Items:[{tag:{110selecting:1b}}]} run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.Enchantments set value [{}]
execute if data block 0 0 0 {Items:[{tag:{110selecting:1b}}]} run data modify block 0 0 0 Items[{tag:{110selecting:1b}}].tag.display.Name set from block 0 0 0 Items[{Slot:10b}].tag.display.Name
execute if data block 0 0 0 {Items:[{tag:{110selecting:1b}}]} run data remove block 0 0 0 Items[{tag:{110selecting:1b}}].tag.110selecting

