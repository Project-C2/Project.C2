scoreboard players set #106_slot_pos counter -106

execute if score @s counter_2 matches 1 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/01
execute if score @s counter_2 matches 2 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/02
execute if score @s counter_2 matches 3 unless score @s counter_8 matches 1.. run function project-c:jobaction/106/items/support/03/set
execute if score @s counter_2 matches 4 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/04
execute if score @s counter_2 matches 5 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/05
execute if score @s counter_2 matches 6 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/06

function project-c:jobaction/106/items/loot_items
