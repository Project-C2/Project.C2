
execute if score @s counter_1 matches 1 run loot replace block 0 0 0 container.0 loot project-c:neac/106/weapon/01
execute if score @s counter_1 matches 2 run loot replace block 0 0 0 container.0 loot project-c:neac/106/weapon/02
execute if score @s counter_1 matches 3 run loot replace block 0 0 0 container.0 loot project-c:neac/106/weapon/03
#execute if score @s counter_1 matches 4 run loot replace block 0 0 0 container.0 loot project-c:neac/106/weapon/04
scoreboard players set #106_slot_pos counter 0
function project-c:jobaction/106/items/loot_items

function project-c:jobaction/106/items/support

