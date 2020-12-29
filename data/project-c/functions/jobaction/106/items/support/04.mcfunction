
loot replace block 0 0 0 container.0 loot project-c:neac/106/support/04

execute unless predicate project-c:neac/sprint run data modify block 0 0 0 Items[0].tag.106_mode set value walk
execute unless predicate project-c:neac/sprint run data modify block 0 0 0 Items[0].tag.AttributeModifiers[0].Amount set value 0.50
execute unless predicate project-c:neac/sprint run data remove block 0 0 0 Items[0].tag.display.Lore[4]

execute if predicate project-c:neac/sprint run data modify block 0 0 0 Items[0].tag.106_mode set value sprint
execute if predicate project-c:neac/sprint run data modify block 0 0 0 Items[0].tag.AttributeModifiers[0].Amount set value -0.50
execute if predicate project-c:neac/sprint run data remove block 0 0 0 Items[0].tag.display.Lore[3]

execute unless score #106_slot_pos counter = #106_slot_pos counter run scoreboard players set #106_ac counter 1
execute if score #106_ac counter matches 1 run scoreboard players set #106_slot_pos counter -106
execute if score #106_ac counter matches 1 run function project-c:jobaction/106/items/loot_items
execute if score #106_ac counter matches 1 run scoreboard players reset #106_ac