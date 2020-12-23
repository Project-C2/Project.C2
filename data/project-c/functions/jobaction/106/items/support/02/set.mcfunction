#サポート2
loot replace block 0 0 0 container.0 loot project-c:neac/106/support/02

execute unless score #106_slot_pos counter = #106_slot_pos counter run scoreboard players set #106_ac counter 1
execute if score #106_ac counter matches 1 run scoreboard players set #106_slot_pos counter -106
execute if score #106_ac counter matches 1 run function project-c:jobaction/106/items/loot_items
execute if score #106_ac counter matches 1 run scoreboard players reset #106_ac