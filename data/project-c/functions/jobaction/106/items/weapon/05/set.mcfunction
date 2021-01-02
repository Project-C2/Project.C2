#メイン5
loot replace block 0 0 0 container.0 loot project-c:neac/106/weapon/05
execute if entity @s[tag=!106_weapon5_charged] run tag @s add 106_weapon5_change
execute if entity @s[tag=106_weapon5_change] run data remove block 0 0 0 Items[{Slot:0b}].tag.Charged
execute if entity @s[tag=106_weapon5_change] run data remove block 0 0 0 Items[{Slot:0b}].tag.ChargedProjectiles
execute if entity @s[tag=106_weapon5_change] run tag @s remove 106_weapon5_change
execute unless score #106_slot_pos counter = #106_slot_pos counter run scoreboard players set #106_ac counter 1
execute if score #106_ac counter matches 1 run scoreboard players set #106_slot_pos counter 0
execute if score #106_ac counter matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,tag:{106_weapon:5}}]}] run scoreboard players set #106_slot_pos counter -106
execute if score #106_ac counter matches 1 run function project-c:jobaction/106/items/loot_items
execute if score #106_ac counter matches 1 run scoreboard players reset #106_ac
