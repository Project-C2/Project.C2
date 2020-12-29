#弓、クロスボウ使用時に矢(スコア)を減らす
execute at @s run function project-c:jobaction/106/items/auxiliary/arrow/use/setup

execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]} store result score #106_has_item counter run data get entity @s Inventory[{Slot:-106b}].tag.106_weapon
execute if data entity @s {SelectedItem:{id:"minecraft:crossbow"}} store result score #106_has_item counter run data get entity @s SelectedItem.tag.106_weapon
execute if score #106_has_item counter matches 1.. run function project-c:jobaction/106/items/auxiliary/arrow/use/by_crossbow/execution

scoreboard players reset #106_has_item
