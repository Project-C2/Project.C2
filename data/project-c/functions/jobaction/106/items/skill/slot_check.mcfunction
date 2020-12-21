
execute if score @s counter_3 = #106_skill counter if score @s CT1 matches 1200.. run scoreboard players set #106_slot_pos counter 1
execute if score @s counter_4 = #106_skill counter if score @s CT2 matches 1200.. run scoreboard players set #106_slot_pos counter 2
execute if score @s counter_5 = #106_skill counter if score @s CT3 matches 1200.. run scoreboard players set #106_slot_pos counter 3

execute if score #106_skill counter matches 1 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/01
execute if score #106_skill counter matches 2 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/02
execute if score #106_skill counter matches 3 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/03
execute if score #106_skill counter matches 4 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/04
execute if score #106_skill counter matches 5 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/05
execute if score #106_skill counter matches 6 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/06
execute if score #106_skill counter matches 7 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/07
execute if score #106_skill counter matches 8 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/08
execute if score #106_skill counter matches 9 run loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/09


execute if score #106_slot_pos counter matches 1 if score @s CT1 matches 1200.. run data modify block 0 0 0 Items[0].tag.skill_slot set value 1
execute if score #106_slot_pos counter matches 1 if score @s CT1 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot1_number_insert
execute if score #106_slot_pos counter matches 2 if score @s CT2 matches 1200.. run data modify block 0 0 0 Items[0].tag.skill_slot set value 2
execute if score #106_slot_pos counter matches 2 if score @s CT2 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot2_number_insert
execute if score #106_slot_pos counter matches 3 if score @s CT3 matches 1200.. run data modify block 0 0 0 Items[0].tag.skill_slot set value 3
execute if score #106_slot_pos counter matches 3 if score @s CT3 matches 1200.. run loot replace block 0 0 0 container.1 loot project-c:neac/106/skill/slot3_number_insert

data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name

function project-c:jobaction/106/items/loot_items

scoreboard players reset #106_skill