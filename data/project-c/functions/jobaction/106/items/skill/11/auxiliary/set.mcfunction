#スキル4補助

execute if score @s counter_3 matches 11 run tag @s add SkillDelay1
execute if score @s counter_4 matches 11 run tag @s add SkillDelay2
execute if score @s counter_5 matches 11 run tag @s add SkillDelay3


execute if score @s counter_3 matches 11 run scoreboard players set #106_slot_pos counter 1
execute if score @s counter_4 matches 11 run scoreboard players set #106_slot_pos counter 2
execute if score @s counter_5 matches 11 run scoreboard players set #106_slot_pos counter 3
loot replace block 0 0 0 container.0 loot project-c:neac/106/skill/auxiliary/11
execute if score @s counter_3 matches 11 run data modify block 0 0 0 Items[0].tag.106_skill_slot set value 1
execute if score @s counter_3 matches 11 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot1_number_insert
execute if score @s counter_4 matches 11 run data modify block 0 0 0 Items[0].tag.106_skill_slot set value 2
execute if score @s counter_4 matches 11 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot2_number_insert
execute if score @s counter_5 matches 11 run data modify block 0 0 0 Items[0].tag.106_skill_slot set value 3
execute if score @s counter_5 matches 11 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot3_number_insert

data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name

function project-c:jobaction/106/items/loot_items
