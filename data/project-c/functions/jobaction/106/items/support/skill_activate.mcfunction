


execute if entity @s[scores={counter_2=1},nbt={Inventory:[{Slot:-106b,tag:{106_support:1}}]}] run function project-c:jobaction/106/items/support/01_execution
execute if entity @s[scores={counter_2=2},nbt={Inventory:[{Slot:-106b,tag:{106_support:2}}]}] run function project-c:jobaction/106/items/support/02_execution





#tag削除
execute if entity @s[tag=skill_slot1_activate] run tag @s remove skill_slot1_activate
execute if entity @s[tag=skill_slot2_activate] run tag @s remove skill_slot2_activate
execute if entity @s[tag=skill_slot3_activate] run tag @s remove skill_slot3_activate