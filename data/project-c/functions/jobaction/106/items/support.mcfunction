

execute if score @s counter_2 matches 1 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/01
execute if score @s counter_2 matches 2 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/02
execute if score @s counter_2 matches 3 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/03
#execute if score @s counter_2 matches 4 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/04
scoreboard players set #106_slot_pos counter -106
function project-c:jobaction/106/items/loot_items
