
execute if score #106-item counter matches 18 run function project-c:neac/106/skill/0018/using_check
execute if score #106-item counter matches 24 run function project-c:neac/106/skill/0024/cant-use_check
execute if score #106-item counter matches 33 run function project-c:neac/106/skill/0033/using_check

execute if score @s counter_3 = #106-item counter if score @s CT1 matches 1200.. run scoreboard players set #106-slot counter 1
execute if score @s counter_3 = #106-item counter if score @s CT1 matches 1200.. run scoreboard players set #106_slot_pos counter 1
execute if score @s counter_4 = #106-item counter if score @s CT2 matches 1200.. run scoreboard players set #106-slot counter 2
execute if score @s counter_4 = #106-item counter if score @s CT2 matches 1200.. run scoreboard players set #106_slot_pos counter 2
execute if score @s counter_5 = #106-item counter if score @s CT3 matches 1200.. run scoreboard players set #106-slot counter 3
execute if score @s counter_5 = #106-item counter if score @s CT3 matches 1200.. run scoreboard players set #106_slot_pos counter 3

function project-c:jobaction/106/items/loot/skill

execute if score #106-slot counter matches 1 if score @s CT1 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_number_insert
execute if score #106-slot counter matches 2 if score @s CT2 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_number_insert
execute if score #106-slot counter matches 3 if score @s CT3 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_number_insert


data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name


execute if entity @s[tag=using] run loot replace block 0 0 0 container.1 loot project-c:neac/106/using
execute if entity @s[tag=using] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=using] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=using] run tag @s remove using

function project-c:jobaction/106/items/loot/end

scoreboard players reset #106-item
scoreboard players reset #106-slot